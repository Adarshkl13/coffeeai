// MySQL lessons run on real SQLite (sql.js, shared with runners/sql) behind a small
// MySQL → SQLite compatibility layer. Same runner contract as runners/python.
//
// What the layer does, per statement:
//   • Splitting: honours DELIMITER, 'strings' / "strings" with backslash escapes,
//     `backtick` identifiers, and -- / # / /* */ comments.
//   • CREATE TABLE: INT AUTO_INCREMENT (inline or via PRIMARY KEY (id)) and SERIAL →
//     INTEGER PRIMARY KEY AUTOINCREMENT; UNSIGNED/ZEROFILL, CHARACTER SET/COLLATE, COMMENT,
//     ON UPDATE CURRENT_TIMESTAMP and table options (ENGINE=, CHARSET=, …) stripped;
//     AUTO_INCREMENT=N honoured; ENUM → TEXT with a CHECK; DECIMAL/FLOAT/DOUBLE → REAL;
//     text columns get COLLATE NOCASE (MySQL's default collation compares case-insensitively);
//     KEY/INDEX lines become CREATE INDEX; UNIQUE KEY name (…) → UNIQUE (…); FULLTEXT skipped.
//   • Expressions: NOW()/CURDATE()/CURTIME() (UTC, like CURRENT_TIMESTAMP), CONCAT, CONCAT_WS,
//     IFNULL, IF, DATE_FORMAT, DATE_ADD/DATE_SUB … INTERVAL n UNIT, DATEDIFF, TIMESTAMPDIFF,
//     YEAR()/MONTH()/…, EXTRACT, LEFT/RIGHT, LPAD/RPAD, LOCATE, FORMAT, SUBSTRING_INDEX,
//     REGEXP/RLIKE, <=>, GROUP_CONCAT(… ORDER BY … SEPARATOR …), math functions, `/` always
//     divides as decimals, CAST(x AS SIGNED/CHAR/DATE), LAST_INSERT_ID(), FROM DUAL.
//   • Statements: SHOW TABLES/DATABASES/COLUMNS/CREATE TABLE/INDEX, DESCRIBE t, EXPLAIN,
//     USE / CREATE DATABASE (single sandbox database), START TRANSACTION, INSERT IGNORE,
//     ON DUPLICATE KEY UPDATE, TRUNCATE, RENAME TABLE, simple ALTER TABLE, SET @var = …,
//     SET FOREIGN_KEY_CHECKS, simple CREATE TRIGGER bodies. LIMIT a,b works natively.
//   • Anything else MySQL-only (stored procedures/functions, CALL, GRANT, users, SIGNAL,
//     WITH ROLLUP, …) prints a "Not supported in the browser sandbox" line and is skipped.
import { loadSqlite, sqliteLoaded, execScript, statementError, sqliteValue } from "runners/sql"

const UNSUPPORTED = "Not supported in the browser sandbox — see the lesson for MySQL-specific syntax"
const info = (text) => ({ text, cls: "info" })
const unsupported = (kind) => info(`${kind}: ${UNSUPPORTED}`)

// ── Splitting ─────────────────────────────────────────────────────
// Returns statements with comments removed (string literals kept verbatim).
export function splitMysql(code) {
  const out = []
  let delim = ";", cur = "", i = 0
  const push = () => { if (cur.trim()) out.push(cur.trim()); cur = "" }
  while (i < code.length) {
    // DELIMITER is a client command: only recognised on its own line between statements
    if (!cur.trim() && (i === 0 || code[i - 1] === "\n")) {
      const m = /^[ \t]*DELIMITER[ \t]+(\S+)[^\n]*(\n|$)/i.exec(code.slice(i, i + 200))
      if (m) { delim = m[1]; i += m[0].length; cur = ""; continue }
    }
    const ch = code[i], rest2 = code.substr(i, 2)
    if (ch === "'" || ch === '"' || ch === "`") {
      let j = i + 1
      while (j < code.length) {
        if (code[j] === "\\" && ch !== "`") { j += 2; continue }
        if (code[j] === ch) { if (code[j + 1] === ch) { j += 2; continue } break }
        j++
      }
      cur += code.slice(i, j + 1); i = j + 1; continue
    }
    if (ch === "#" || (rest2 === "--" && /[\s]/.test(code[i + 2] ?? "\n"))) {
      const nl = code.indexOf("\n", i); i = nl === -1 ? code.length : nl; continue
    }
    if (rest2 === "/*") {
      const end = code.indexOf("*/", i + 2); i = end === -1 ? code.length : end + 2; cur += " "; continue
    }
    if (code.startsWith(delim, i)) { push(); i += delim.length; continue }
    cur += ch; i++
  }
  push()
  return out
}

// ── String masking ────────────────────────────────────────────────
// String literals are swapped for \0N\0 placeholders so rewrites never touch their contents;
// backtick identifiers become "double-quoted" SQLite identifiers.
function mask(sql) {
  const strings = []
  let text = "", i = 0
  while (i < sql.length) {
    const ch = sql[i]
    if (ch === "'" || ch === '"' || ch === "`") {
      let j = i + 1, val = ""
      while (j < sql.length) {
        const c = sql[j]
        if (c === "\\" && ch !== "`") {
          const n = sql[j + 1] ?? ""
          val += ({ n: "\n", t: "\t", r: "\r", 0: "\0", b: "\b", Z: "\x1a", "%": "\\%", _: "\\_" })[n] ?? n
          j += 2; continue
        }
        if (c === ch) { if (sql[j + 1] === ch) { val += ch; j += 2; continue } break }
        val += c; j++
      }
      if (ch === "`") text += '"' + val.replace(/"/g, '""') + '"'
      else { text += `\0${strings.length}\0`; strings.push(val) }
      i = j + 1; continue
    }
    text += ch; i++
  }
  return { text, strings }
}
const unmask = (text, strings) => text.replace(/\0(\d+)\0/g, (_, n) => "'" + strings[n].replace(/'/g, "''") + "'")

// Index just past the parenthesis matching the one at `open`
function closeParen(s, open) {
  let depth = 0
  for (let i = open; i < s.length; i++) {
    if (s[i] === "(") depth++
    else if (s[i] === ")" && --depth === 0) return i + 1
  }
  return s.length
}
function splitTopLevel(s, sep = ",") {
  const parts = []; let depth = 0, start = 0
  for (let i = 0; i < s.length; i++) {
    if (s[i] === "(") depth++
    else if (s[i] === ")") depth--
    else if (s[i] === sep && depth === 0) { parts.push(s.slice(start, i)); start = i + 1 }
  }
  parts.push(s.slice(start))
  return parts
}
// Rewrites every NAME( … ) call: fn(argsText) returns the replacement text
function rewriteCalls(s, name, fn) {
  const re = new RegExp(`\\b${name}\\s*\\(`, "gi")
  let out = "", last = 0, m
  while ((m = re.exec(s))) {
    if (/[\w."]$/.test(s.slice(0, m.index)) && s[m.index - 1] !== " ") continue
    const open = m.index + m[0].length - 1, end = closeParen(s, open)
    out += s.slice(last, m.index) + fn(rewriteCalls(s.slice(open + 1, end - 1), name, fn))
    last = end; re.lastIndex = end
  }
  return out + s.slice(last)
}
const unquoteIdent = (id) => id.trim().replace(/^"(.*)"$/s, "$1").replace(/""/g, '"').replace(/^\w+\.(?=\w)/, "")
const quoteIdent = (id) => '"' + id.replace(/"/g, '""') + '"'
const IDENT = String.raw`(?:"(?:[^"]|"")+"|[\w$]+)(?:\.(?:"(?:[^"]|"")+"|[\w$]+))?`

// ── Expression rewrites (whole statement, on masked text) ─────────
function rewriteExpressions(s) {
  s = s
    .replace(/\bNOW\s*\(\s*\)|\bSYSDATE\s*\(\s*\)|\bCURRENT_TIMESTAMP\s*\(\s*\)|\bLOCALTIME(?:STAMP)?(?:\s*\(\s*\))?/gi, "CURRENT_TIMESTAMP")
    .replace(/\bUTC_TIMESTAMP\s*\(\s*\)/gi, "CURRENT_TIMESTAMP")
    .replace(/\bCURDATE\s*\(\s*\)|\bCURRENT_DATE\s*\(\s*\)|\bUTC_DATE\s*\(\s*\)/gi, "CURRENT_DATE")
    .replace(/\bCURTIME\s*\(\s*\)|\bCURRENT_TIME\s*\(\s*\)|\bUTC_TIME\s*\(\s*\)/gi, "CURRENT_TIME")
    .replace(/\bLAST_INSERT_ID\s*\(\s*\)/gi, "last_insert_rowid()")
    .replace(/\bFROM\s+DUAL\b/gi, "")
    .replace(/<=>/g, " IS ")
    .replace(/\bRLIKE\b/gi, "REGEXP")
    .replace(/\b(LEFT|RIGHT)\s*\(/gi, (_, f) => `mysql_${f.toLowerCase()}(`)
    .replace(/,\s*INTERVAL\s+(-?[\w.]+|\0\d+\0|\([^()]*\))\s+(MICROSECOND|SECOND|MINUTE|HOUR|DAY|WEEK|MONTH|QUARTER|YEAR)\b/gi, (_, n, u) => `, ${n}, '${u.toUpperCase()}'`)
    .replace(/\b(TIMESTAMPDIFF|TIMESTAMPADD)\s*\(\s*(\w+)\s*,/gi, (_, f, u) => `${f}('${u.toUpperCase()}',`)
    .replace(/\bEXTRACT\s*\(\s*(\w+)\s+FROM\b/gi, (_, u) => `mysql_extract('${u.toUpperCase()}',`)
    .replace(/\s+(?:FOR\s+UPDATE|FOR\s+SHARE|LOCK\s+IN\s+SHARE\s+MODE)\s*$/i, "")
    .replace(/\bSQL_CALC_FOUND_ROWS\b|\bSQL_NO_CACHE\b|\bHIGH_PRIORITY\b|\bSTRAIGHT_JOIN\b/gi, "")
    .replace(/\//g, " * 1.0 / ")                // MySQL's `/` never truncates to an integer
    .replace(/\bDIV\b/gi, "/")
  s = rewriteCalls(s, "CAST", (args) => {
    const m = /^([\s\S]*)\s+AS\s+([\s\S]+)$/i.exec(args)
    if (!m) return `CAST(${args})`
    const type = m[2].trim().toUpperCase()
    if (/^(SIGNED|UNSIGNED)/.test(type)) return `CAST(${m[1]} AS INTEGER)`
    if (/^(CHAR|NCHAR|VARCHAR)/.test(type)) return `CAST(${m[1]} AS TEXT)`
    if (/^DATETIME/.test(type)) return `datetime(${m[1]})`
    if (/^DATE/.test(type)) return `date(${m[1]})`
    if (/^TIME/.test(type)) return `time(${m[1]})`
    if (/^(DECIMAL|DOUBLE|FLOAT|REAL)/.test(type)) return `CAST(${m[1]} AS REAL)`
    return `CAST(${args})`
  })
  s = rewriteCalls(s, "GROUP_CONCAT", (args) => {
    let body = args, sep = "','", order = ""
    const sm = /\s+SEPARATOR\s+(\0\d+\0)\s*$/i.exec(body)
    if (sm) { sep = sm[1]; body = body.slice(0, sm.index) }
    const om = /\s+ORDER\s+BY\s+([\s\S]+)$/i.exec(body)
    if (om && splitTopLevel(body.slice(0, om.index)).length) { order = ` ORDER BY ${om[1]}`; body = body.slice(0, om.index) }
    const distinct = /^\s*DISTINCT\s+/i.test(body)
    if (distinct) body = body.replace(/^\s*DISTINCT\s+/i, "")
    const parts = splitTopLevel(body)
    const expr = parts.length > 1 ? `concat(${body})` : body
    return `${distinct ? "mysql_group_concat_distinct" : "group_concat"}(${expr}, ${sep}${order})`
  })
  return s
}

// ── CREATE TABLE ──────────────────────────────────────────────────
const TEXT_TYPE = /^(CHAR|VARCHAR|NCHAR|NVARCHAR|TINYTEXT|TEXT|MEDIUMTEXT|LONGTEXT|ENUM|SET)\b/i
const REAL_TYPE = /^(DECIMAL|NUMERIC|DEC|FIXED|FLOAT|DOUBLE|REAL)\b/i

function indexStatement(ctx, name, table, cols, unique = false) {
  let idx = name ? unquoteIdent(name) : `${table}_${unquoteIdent(splitTopLevel(cols)[0])}_idx`
  if (ctx.indexNames.has(idx.toLowerCase())) idx = `${table}_${idx}`
  ctx.indexNames.add(idx.toLowerCase())
  ctx.indexAlias[`${table}.${unquoteIdent(name || idx)}`.toLowerCase()] = idx
  const list = splitTopLevel(cols).map(c => c.replace(/^(\s*(?:"(?:[^"]|"")+"|\w+))\s*\(\s*\d+\s*\)/, "$1")).join(",")
  return `CREATE ${unique ? "UNIQUE " : ""}INDEX ${quoteIdent(idx)} ON ${quoteIdent(table)} (${list})`
}

function translateColumn(def, table, ctx, meta) {
  const m = new RegExp(`^\\s*(${IDENT})\\s+(\\w+(?:\\s+PRECISION)?)(\\s*\\([^)]*\\))?([\\s\\S]*)$`, "i").exec(def)
  if (!m) return def
  const [, rawName, baseType, typeArgs = "", restRaw] = m
  const name = unquoteIdent(rawName)
  let rest = restRaw
  const unsigned = /\bUNSIGNED\b/i.test(rest)
  rest = rest
    .replace(/\b(UNSIGNED|SIGNED|ZEROFILL|INVISIBLE|VISIBLE)\b/gi, "")
    .replace(/\bON\s+UPDATE\s+CURRENT_TIMESTAMP\b/gi, "")
    .replace(/\bCOMMENT\s+\0\d+\0/gi, "")
    .replace(/\b(?:CHARACTER\s+SET|CHARSET)\s+\w+/gi, "")
    .replace(/\bCOLLATE\s+\w+/gi, "")
  const type = baseType.toUpperCase()
  const auto = /\bAUTO_INCREMENT\b/i.test(rest) || type === "SERIAL"
  const origType = unmask(`${baseType.toLowerCase()}${typeArgs}${unsigned ? " unsigned" : ""}`, ctx.strings || [])
  meta.columns[name.toLowerCase()] = { type: type === "SERIAL" ? "bigint unsigned" : origType, extra: auto ? "auto_increment" : "" }
  if (auto) {
    rest = rest.replace(/\bAUTO_INCREMENT\b|\bPRIMARY\s+KEY\b|\bKEY\b|\bNOT\s+NULL\b|\bNULL\b|\bUNIQUE\b/gi, "")
    ctx.autoTables.add(table.toLowerCase())
    return `${quoteIdent(name)} INTEGER PRIMARY KEY AUTOINCREMENT${rest.replace(/\s+/g, " ").trimEnd()}`
  }
  let sqliteType = `${baseType}${typeArgs}`
  if (type === "ENUM" || type === "SET") {
    sqliteType = "TEXT"
    if (type === "ENUM") rest += ` CHECK (${quoteIdent(name)} IN ${typeArgs.trim()})`
  } else if (REAL_TYPE.test(type)) sqliteType = "REAL"
  if (TEXT_TYPE.test(type) && !/\bBINARY\b|\bCOLLATE\s+\w*_(?:bin|cs)\b/i.test(restRaw)) rest += " COLLATE NOCASE"
  return `${quoteIdent(name)} ${sqliteType}${rest.replace(/\s+/g, " ").trimEnd()}`
}

function translateCreateTable(s, ctx) {
  const head = new RegExp(`^CREATE\\s+(TEMPORARY\\s+)?TABLE\\s+(IF\\s+NOT\\s+EXISTS\\s+)?(${IDENT})\\s*\\(`, "i").exec(s)
  if (!head) return { sql: s }
  const table = unquoteIdent(head[3])
  const open = head[0].length - 1, end = closeParen(s, open)
  const defs = splitTopLevel(s.slice(open + 1, end - 1)).map(d => d.trim()).filter(Boolean)
  const tail = s.slice(end)
  const meta = { columns: {}, source: null }
  const after = [], notes = []
  // A PRIMARY KEY (col) line on an AUTO_INCREMENT column moves inline
  const pkLine = defs.map(d => /^(?:CONSTRAINT\s+\S+\s+)?PRIMARY\s+KEY\s*(?:USING\s+\w+\s*)?\(([^,()]+)\)/i.exec(d)).find(Boolean)
  const pkCol = pkLine && unquoteIdent(pkLine[1]).toLowerCase()
  const autoCol = defs.find(d => /\bAUTO_INCREMENT\b/i.test(d))
  const pkIsAuto = autoCol && pkCol && new RegExp(`^\\s*"?${pkCol.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")}"?\\s`, "i").test(autoCol)
  const out = []
  for (const d of defs) {
    let m
    if ((m = /^(?:CONSTRAINT\s+\S+\s+)?PRIMARY\s+KEY\b/i.exec(d))) {
      if (!pkIsAuto) out.push(d.replace(/\bUSING\s+\w+/gi, ""))
    } else if ((m = new RegExp(`^(?:CONSTRAINT\\s+(?:${IDENT}\\s+)?)?UNIQUE\\s*(?:KEY|INDEX)?\\s*(${IDENT})?\\s*(?:USING\\s+\\w+\\s*)?\\(`, "i").exec(d))) {
      const o = m[0].length - 1
      out.push(`UNIQUE ${d.slice(o, closeParen(d, o))}`)
    } else if ((m = new RegExp(`^(?:KEY|INDEX)\\s*(${IDENT})?\\s*(?:USING\\s+\\w+\\s*)?\\(`, "i").exec(d))) {
      const o = m[0].length - 1
      after.push(indexStatement(ctx, m[1], table, d.slice(o + 1, closeParen(d, o) - 1)))
    } else if (/^(FULLTEXT|SPATIAL)\b/i.test(d)) {
      notes.push(unsupported(`${d.split(/\s/)[0].toUpperCase()} index`))
    } else if (/^(CONSTRAINT|FOREIGN\s+KEY|CHECK)\b/i.test(d)) {
      out.push(d)
    } else {
      out.push(translateColumn(d, table, ctx, meta))
    }
  }
  const autoStart = /\bAUTO_INCREMENT\s*=?\s*(\d+)/i.exec(tail)
  if (autoStart && +autoStart[1] > 1) after.push(`INSERT INTO sqlite_sequence (name, seq) VALUES ('${table.replace(/'/g, "''")}', ${+autoStart[1] - 1})`)
  if (/\bSELECT\b/i.test(tail)) return { sql: s }   // CREATE TABLE … (…) SELECT: leave to SQLite
  ctx.tables[table.toLowerCase()] = meta
  const sql = `CREATE ${head[1] || ""}TABLE ${head[2] || ""}${quoteIdent(table)} (\n  ${out.join(",\n  ")}\n)`
  return { sql, after, notes, table }
}

// ── GROUP BY … WITH ROLLUP ────────────────────────────────────────
// Emulated as a UNION ALL of the grouping levels (grouped columns become NULL in subtotal
// rows), for single SELECTs whose grouped columns appear plainly in the select list.
function topLevelIndex(s, re) {
  let depth = 0
  for (let i = 0; i < s.length; i++) {
    if (s[i] === "(") depth++
    else if (s[i] === ")") depth--
    else if (depth === 0 && /\s/.test(s[i])) { const m = re.exec(s.slice(i)); if (m && m.index === 0) return i }
  }
  return -1
}
function rewriteRollup(s) {
  const norm = (e) => e.replace(/\s+/g, "").replace(/^(?:"[^"]+"|\w+)\.(?=.)/, "").replace(/"/g, "").toLowerCase()
  const kw = (k) => new RegExp(`^\\s+${k}\\b`, "i")
  if (!/^SELECT\s/i.test(s)) return null
  const from = topLevelIndex(s, kw("FROM")), group = topLevelIndex(s, kw("GROUP\\s+BY")), roll = topLevelIndex(s, kw("WITH\\s+ROLLUP"))
  if (from < 0 || group < from || roll < group) return null
  const items = splitTopLevel(s.slice(6, from)).map((it) => {
    const m = /^([\s\S]*?)\s+AS\s+("(?:[^"]|"")+"|\w+)\s*$/i.exec(it.trim())
    if (m) return { expr: m[1], alias: unquoteIdent(m[2]) }
    const e = it.trim()
    return { expr: e, alias: /^(?:"[^"]+"|\w+)(?:\.(?:"[^"]+"|\w+))?$/.test(e) ? unquoteIdent(e) : e }
  })
  const groups = splitTopLevel(s.slice(group, roll).replace(/^\s+GROUP\s+BY\s+/i, ""))
  const tail = s.slice(roll).replace(/^\s+WITH\s+ROLLUP\b/i, "")
  const orderAt = topLevelIndex(tail, kw("ORDER\\s+BY")), limitAt = topLevelIndex(tail, kw("LIMIT"))
  const cut = [orderAt, limitAt].filter(i => i >= 0).sort((a, b) => a - b)[0] ?? tail.length
  const having = tail.slice(0, cut), outerTail = tail.slice(cut)
  const groupExpr = groups.map((g) => {
    const it = items.find(x => norm(x.alias) === norm(g) || norm(x.expr) === norm(g))
    return it ? it.expr : g
  })
  if (groupExpr.some(g => !items.some(x => norm(x.expr) === norm(g)))) return null
  const parts = []
  for (let k = groups.length; k >= 0; k--) {
    const cols = items.map((x) => {
      const gi = groupExpr.findIndex(g => norm(g) === norm(x.expr))
      return `${gi >= k ? "NULL" : x.expr} AS ${quoteIdent(x.alias)}`
    })
    const hidden = groupExpr.map((g, i) => `${i < k ? g : "NULL"} AS "_rollup_${i}"`)
    parts.push(`SELECT ${[...cols, ...hidden].join(", ")} ${s.slice(from, group)}${k ? ` GROUP BY ${groups.slice(0, k).join(", ")}` : ""}${having}`)
  }
  const order = orderAt >= 0 ? outerTail.replace(/\b(?:"[^"]+"|\w+)\.(?="[^"]+"|\w+)/g, "")
    : ` ORDER BY ${groupExpr.map((_, i) => `"_rollup_${i}" IS NULL, "_rollup_${i}"`).join(", ")}${outerTail}`
  return `SELECT ${items.map(x => quoteIdent(x.alias)).join(", ")} FROM (${parts.join(" UNION ALL ")})${order}`
}

// ── Classification ────────────────────────────────────────────────
const NOT_SUPPORTED = [
  [/^CREATE\s+(?:DEFINER\s*=\s*\S+\s+)?(PROCEDURE|FUNCTION|EVENT)\b/i, (m) => `CREATE ${m[1].toUpperCase()}`],
  [/^(CREATE|DROP|ALTER|RENAME)\s+(USER|ROLE)\b/i, (m) => `${m[1]} ${m[2]}`.toUpperCase()],
  [/^(DROP|ALTER)\s+(PROCEDURE|FUNCTION|EVENT)\b/i, (m) => `${m[1]} ${m[2]}`.toUpperCase()],
  [/^(GRANT|REVOKE|FLUSH|CALL|SIGNAL|RESIGNAL|DECLARE|PREPARE|EXECUTE|DEALLOCATE|HANDLER|LOAD|LOCK|UNLOCK|OPTIMIZE|ANALYZE|REPAIR|CHECKSUM|INSTALL|UNINSTALL|KILL|PURGE|RESET|CHANGE|XA|DO)\b/i, (m) => m[1].toUpperCase()],
  [/\bMATCH\s*\([^)]*\)\s*AGAINST\b/i, () => "MATCH … AGAINST"],
  [/^SELECT\b[\s\S]*\bINTO\s+(@|OUTFILE|DUMPFILE)/i, () => "SELECT … INTO"],
]

function tableRows(db, sql) {
  const r = db.exec(sql)[0]
  return r ? r.values : []
}
function table(columns, rows) { return { table: { columns, rows } } }

function describe(db, ctx, name) {
  const t = unquoteIdent(name)
  const cols = tableRows(db, `PRAGMA table_info(${quoteIdent(t)})`)
  if (!cols.length) throw new Error(`Table '${t}' doesn't exist`)
  const keys = {}
  for (const [, idx, unique, origin] of tableRows(db, `PRAGMA index_list(${quoteIdent(t)})`)) {
    if (origin === "pk") continue
    const parts = tableRows(db, `PRAGMA index_info(${quoteIdent(idx)})`)
    const first = parts[0]?.[2]?.toLowerCase()
    if (first && keys[first] !== "UNI") keys[first] = unique && parts.length === 1 ? "UNI" : "MUL"
  }
  const meta = ctx.tables[t.toLowerCase()]?.columns || {}
  return table(["Field", "Type", "Null", "Key", "Default", "Extra"], cols.map(([, col, type, notnull, dflt, pk]) => {
    const m = meta[col.toLowerCase()] || {}
    return [col, m.type || type.toLowerCase(), notnull || pk ? "NO" : "YES", pk ? "PRI" : (keys[col.toLowerCase()] || ""),
      dflt == null ? null : String(dflt).replace(/^'(.*)'$/s, "$1"), m.extra || ""]
  }))
}

// Translates and runs one MySQL statement. Returns { items, failed }.
function runStatement(db, ctx, raw, index) {
  const { text, strings } = mask(raw)
  const s = text.trim()
  const upper = s.toUpperCase()
  const exec = (sql, extra = {}) => execScript(db, unmask(sql, strings), { index, label: raw, params: ctx.vars, ...extra })
  const done = (...items) => ({ items, failed: false })
  ctx.strings = strings
  let m

  for (const [re, kind] of NOT_SUPPORTED) if ((m = re.exec(s))) return done(unsupported(kind(m)))

  if ((m = /^USE\s+(\S+)$/i.exec(s))) return done(info("Database changed (the sandbox keeps everything in one database)"))
  if ((m = /^(CREATE|DROP)\s+(DATABASE|SCHEMA)\b/i.exec(s))) return done(info(`Database ${m[1].toUpperCase() === "CREATE" ? "created" : "dropped"} (the sandbox keeps everything in one database)`))
  if (/^SHOW\s+(FULL\s+)?TABLES\b/i.test(s))
    return done(table(["Tables_in_sandbox"], tableRows(db, "SELECT name FROM sqlite_master WHERE type IN ('table','view') AND name NOT LIKE 'sqlite_%' ORDER BY name")))
  if (/^SHOW\s+(DATABASES|SCHEMAS)\b/i.test(s)) return done(table(["Database"], [["sandbox"]]))
  if ((m = new RegExp(`^(?:DESCRIBE|DESC|EXPLAIN)\\s+(${IDENT})$`, "i").exec(s)) ||
      (m = new RegExp(`^SHOW\\s+(?:FULL\\s+)?(?:COLUMNS|FIELDS)\\s+(?:FROM|IN)\\s+(${IDENT})$`, "i").exec(s))) {
    try { return done(describe(db, ctx, m[1])) } catch (e) { return { items: [statementError(e.message, index, raw)], failed: true } }
  }
  if ((m = new RegExp(`^SHOW\\s+CREATE\\s+TABLE\\s+(${IDENT})$`, "i").exec(s))) {
    const t = unquoteIdent(m[1]), src = ctx.tables[t.toLowerCase()]?.source
    if (!src) return { items: [statementError(`Table '${t}' doesn't exist`, index, raw)], failed: true }
    return done(table(["Table", "Create Table"], [[t, src]]))
  }
  if ((m = new RegExp(`^SHOW\\s+(?:INDEX|INDEXES|KEYS)\\s+(?:FROM|IN)\\s+(${IDENT})$`, "i").exec(s))) {
    const t = unquoteIdent(m[1]), rows = []
    for (const [, idx, unique, origin] of tableRows(db, `PRAGMA index_list(${quoteIdent(t)})`))
      tableRows(db, `PRAGMA index_info(${quoteIdent(idx)})`).forEach(([seq, , col]) =>
        rows.push([t, unique ? 0 : 1, origin === "pk" ? "PRIMARY" : idx, seq + 1, col]))
    for (const [, col, , , , pk] of tableRows(db, `PRAGMA table_info(${quoteIdent(t)})`))
      if (pk && !rows.some(r => r[2] === "PRIMARY")) rows.unshift([t, 0, "PRIMARY", pk, col])
    return done(table(["Table", "Non_unique", "Key_name", "Seq_in_index", "Column_name"], rows))
  }
  if (/^SHOW\b/i.test(s)) return done(unsupported(s.split(/\s+/).slice(0, 2).join(" ").toUpperCase()))

  // SET @var = expr [, @var2 = expr] / SET FOREIGN_KEY_CHECKS = 0|1 / other SET → ignored with a note
  if (/^SET\b/i.test(s)) {
    const assigns = splitTopLevel(s.replace(/^SET\s+/i, ""))
    const out = []
    for (const a of assigns) {
      if ((m = /^\s*(@\w+)\s*:?=\s*([\s\S]+)$/.exec(a))) {
        try {
          const st = db.prepare(unmask(`SELECT ${rewriteExpressions(m[2])}`, strings))
          try { st.bind(ctx.vars); st.step(); ctx.vars[m[1]] = sqliteValue(st.get()[0]) } finally { st.free() }
        } catch (e) { return { items: [statementError(e.message, index, raw)], failed: true } }
      } else if ((m = /^\s*(?:@@(?:SESSION\.|GLOBAL\.)?)?FOREIGN_KEY_CHECKS\s*=\s*(\w+)/i.exec(a))) {
        db.run(`PRAGMA foreign_keys = ${/^(1|ON|TRUE)$/i.test(m[1]) ? "ON" : "OFF"}`)
      } else {
        out.push(info(`SET ${a.trim().split(/\s*=/)[0]}: ignored in the browser sandbox`))
      }
    }
    return done(...out)
  }

  if (/^START\s+TRANSACTION\b|^BEGIN(\s+WORK)?$/i.test(s)) return exec("BEGIN")
  if (/^(COMMIT|ROLLBACK)\s+WORK\b/i.test(s)) return exec(s.replace(/\s+WORK\b/i, ""))

  if ((m = new RegExp(`^TRUNCATE\\s+(?:TABLE\\s+)?(${IDENT})$`, "i").exec(s))) {
    const t = quoteIdent(unquoteIdent(m[1]))
    const r = exec(`DELETE FROM ${t}`)
    if (r.failed) return r
    try { db.run(`DELETE FROM sqlite_sequence WHERE name = ?`, [unquoteIdent(m[1])]) } catch { /* no AUTOINCREMENT tables yet */ }
    return done(info("Table truncated"))
  }
  if ((m = new RegExp(`^RENAME\\s+TABLE\\s+(${IDENT})\\s+TO\\s+(${IDENT})$`, "i").exec(s))) {
    const r = exec(`ALTER TABLE ${m[1]} RENAME TO ${m[2]}`)
    return r.failed ? r : done(info("Table renamed"))
  }

  if (/^CREATE\s+(TEMPORARY\s+)?TABLE\b/i.test(s)) {
    const t = translateCreateTable(rewriteExpressions(s), ctx)
    const r = exec(t.sql)
    if (r.failed) return r
    if (t.table) ctx.tables[t.table.toLowerCase()].source = raw
    for (const sql of t.after || []) { const x = exec(sql); if (x.failed) return x }
    return done(...r.items, ...(t.notes || []))
  }

  if ((m = new RegExp(`^CREATE\\s+(UNIQUE\\s+|FULLTEXT\\s+|SPATIAL\\s+)?INDEX\\s+(${IDENT})\\s+(?:USING\\s+\\w+\\s+)?ON\\s+(${IDENT})\\s*\\(`, "i").exec(s))) {
    if (/FULLTEXT|SPATIAL/i.test(m[1] || "")) return done(unsupported(`${m[1].trim().toUpperCase()} INDEX`))
    const o = m[0].length - 1
    return exec(indexStatement(ctx, m[2], unquoteIdent(m[3]), s.slice(o + 1, closeParen(s, o) - 1), !!m[1]))
  }
  if ((m = new RegExp(`^DROP\\s+INDEX\\s+(${IDENT})\\s+ON\\s+(${IDENT})$`, "i").exec(s))) {
    const alias = ctx.indexAlias[`${unquoteIdent(m[2])}.${unquoteIdent(m[1])}`.toLowerCase()] || unquoteIdent(m[1])
    return exec(`DROP INDEX ${quoteIdent(alias)}`)
  }

  if ((m = new RegExp(`^ALTER\\s+TABLE\\s+(${IDENT})\\s+([\\s\\S]+)$`, "i").exec(s))) {
    const t = unquoteIdent(m[1]), action = m[2].trim()
    if (splitTopLevel(action).length > 1) return done(unsupported("ALTER TABLE with several changes (run one change per statement)"))
    let a
    if ((a = /^ADD\s+(?:COLUMN\s+)?(?!INDEX|KEY|UNIQUE|CONSTRAINT|PRIMARY|FOREIGN|FULLTEXT|CHECK)([\s\S]+?)(?:\s+(?:FIRST|AFTER\s+\S+))?$/i.exec(action))) {
      const meta = ctx.tables[t.toLowerCase()] || (ctx.tables[t.toLowerCase()] = { columns: {}, source: null })
      return exec(`ALTER TABLE ${quoteIdent(t)} ADD COLUMN ${translateColumn(rewriteExpressions(a[1]), t, ctx, meta)}`)
    }
    if ((a = new RegExp(`^ADD\\s+(UNIQUE\\s+)?(?:INDEX|KEY)\\s*(${IDENT})?\\s*\\(`, "i").exec(action))) {
      const o = a[0].length - 1
      return exec(indexStatement(ctx, a[2], t, action.slice(o + 1, closeParen(action, o) - 1), !!a[1]))
    }
    if (/^(DROP\s+(COLUMN\s+)?(?!INDEX|KEY|PRIMARY|FOREIGN|CONSTRAINT)\S+$|RENAME\s+(COLUMN\s+)?\S+\s+TO\s+\S+$|RENAME\s+(TO|AS)\s+\S+$)/i.test(action))
      return exec(`ALTER TABLE ${quoteIdent(t)} ${action.replace(/^RENAME\s+AS\b/i, "RENAME TO").replace(/^DROP\s+(?!COLUMN)/i, "DROP COLUMN ")}`)
    return done(unsupported(`ALTER TABLE … ${action.split(/\s+/)[0].toUpperCase()}`))
  }

  if ((m = /^CREATE\s+(?:DEFINER\s*=\s*\S+\s+)?TRIGGER\s+(\S+)\s+(BEFORE|AFTER)\s+(INSERT|UPDATE|DELETE)\s+ON\s+(\S+)\s+FOR\s+EACH\s+ROW\s+(?:(?:FOLLOWS|PRECEDES)\s+\S+\s+)?([\s\S]+)$/i.exec(s))) {
    let body = m[5].trim()
    if (/\b(SET\s+NEW\.|IF\b[\s\S]*\bTHEN\b|DECLARE|SIGNAL|WHILE|LOOP|CALL)\b/i.test(body)) return done(unsupported("CREATE TRIGGER with procedural body"))
    body = /^BEGIN\b[\s\S]*\bEND$/i.test(body) ? body.replace(/;?\s*END$/i, "; END") : `BEGIN ${body}; END`
    const r = exec(rewriteExpressions(`CREATE TRIGGER ${m[1]} ${m[2]} ${m[3]} ON ${m[4]} FOR EACH ROW ${body}`))
    if (r.failed) return done(unsupported("CREATE TRIGGER"))
    return r
  }

  // Everything else (SELECT, INSERT, UPDATE, DELETE, CREATE VIEW, DROP …)
  let base = s
  if (/\bWITH\s+ROLLUP\b/i.test(s)) {
    base = rewriteRollup(s)
    if (!base) return done(unsupported("WITH ROLLUP on this query (list the grouped columns in the SELECT)"))
  }
  let sql = rewriteExpressions(base)
    .replace(/^INSERT\s+IGNORE\b/i, "INSERT OR IGNORE")
    .replace(/^(?:EXPLAIN|DESCRIBE|DESC)\s+(?:ANALYZE\s+|FORMAT\s*=\s*\w+\s+)?(?=SELECT|WITH|INSERT|UPDATE|DELETE|REPLACE)/i, "EXPLAIN QUERY PLAN ")
    .replace(/^DROP\s+(TEMPORARY\s+)?TABLE\s+(IF\s+EXISTS\s+)?([\s\S]+?)(?:\s+(?:RESTRICT|CASCADE))?$/i, (all, _tmp, ifx, list) => {
      const names = splitTopLevel(list)
      return names.length > 1 ? names.map(n => `DROP TABLE ${ifx || ""}${n.trim()}`).join("; ") : `DROP TABLE ${ifx || ""}${list.trim()}`
    })
  const dup = /\bON\s+DUPLICATE\s+KEY\s+UPDATE\b/i.exec(sql)
  if (dup) {
    const head = sql.slice(0, dup.index).replace(/(\bSELECT\b[\s\S]*)$/i, "$1 WHERE true")
    sql = head + " ON CONFLICT DO UPDATE SET " + sql.slice(dup.index + dup[0].length).replace(/\bVALUES\s*\(\s*("?\w+"?)\s*\)/gi, "excluded.$1")
  }
  const r = exec(sql)
  if (!r.failed && /^EXPLAIN QUERY PLAN/i.test(sql)) r.items.unshift(info("EXPLAIN shows SQLite's query plan in the browser sandbox"))
  return r
}

// ── MySQL functions registered on each fresh database ─────────────
const pad2 = (n) => String(n).padStart(2, "0")
function parseDate(v) {
  if (v == null) return null
  const m = /^\s*(\d{4})-(\d{1,2})-(\d{1,2})(?:[ T](\d{1,2}):(\d{1,2})(?::(\d{1,2})(?:\.\d+)?)?)?/.exec(String(v))
  if (!m) return null
  const d = { y: +m[1], m: +m[2], d: +m[3], H: +(m[4] || 0), M: +(m[5] || 0), S: +(m[6] || 0), time: m[4] != null }
  return d.m >= 1 && d.m <= 12 && d.d >= 1 && d.d <= 31 ? d : null
}
const toMs = (d) => Date.UTC(d.y, d.m - 1, d.d, d.H, d.M, d.S)
const dayNum = (d) => Date.UTC(d.y, d.m - 1, d.d) / 86400000
const fromMs = (ms, time) => {
  const t = new Date(ms)
  const date = `${t.getUTCFullYear()}-${pad2(t.getUTCMonth() + 1)}-${pad2(t.getUTCDate())}`
  return time ? `${date} ${pad2(t.getUTCHours())}:${pad2(t.getUTCMinutes())}:${pad2(t.getUTCSeconds())}` : date
}
const daysInMonth = (y, m) => new Date(Date.UTC(y, m, 0)).getUTCDate()
const DAYS = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
const MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
const weekday = (d) => new Date(Date.UTC(d.y, d.m - 1, d.d)).getUTCDay()
const ordinal = (n) => n + ((n % 100 >= 11 && n % 100 <= 13) ? "th" : ({ 1: "st", 2: "nd", 3: "rd" })[n % 10] || "th")
const dayOfYear = (d) => dayNum(d) - Date.UTC(d.y, 0, 1) / 86400000 + 1

function dateAdd(v, n, unit, sign = 1) {
  const d = parseDate(v)
  if (!d || n == null) return null
  unit = String(unit).toUpperCase(); n = Number(n) * sign
  const months = { MONTH: 1, QUARTER: 3, YEAR: 12 }[unit]
  if (months) {
    const total = d.y * 12 + (d.m - 1) + n * months
    const y = Math.floor(total / 12), m = total % 12 + 1
    return fromMs(toMs({ ...d, y, m, d: Math.min(d.d, daysInMonth(y, m)) }), d.time)
  }
  const ms = { MICROSECOND: 0.001, SECOND: 1000, MINUTE: 60000, HOUR: 3600000, DAY: 86400000, WEEK: 604800000 }[unit]
  if (!ms) return null
  return fromMs(toMs(d) + n * ms, d.time || ms < 86400000)
}

function dateFormat(v, fmt) {
  const d = parseDate(v)
  if (!d || fmt == null) return null
  const h12 = d.H % 12 || 12
  const map = {
    Y: d.y, y: pad2(d.y % 100), m: pad2(d.m), c: d.m, d: pad2(d.d), e: d.d, D: ordinal(d.d),
    M: MONTHS[d.m - 1], b: MONTHS[d.m - 1].slice(0, 3), W: DAYS[weekday(d)], a: DAYS[weekday(d)].slice(0, 3),
    w: weekday(d), j: String(dayOfYear(d)).padStart(3, "0"), H: pad2(d.H), k: d.H, h: pad2(h12), I: pad2(h12), l: h12,
    i: pad2(d.M), s: pad2(d.S), S: pad2(d.S), f: "000000", p: d.H < 12 ? "AM" : "PM",
    T: `${pad2(d.H)}:${pad2(d.M)}:${pad2(d.S)}`, r: `${pad2(h12)}:${pad2(d.M)}:${pad2(d.S)} ${d.H < 12 ? "AM" : "PM"}`, "%": "%"
  }
  return String(fmt).replace(/%(.)/g, (all, k) => (k in map ? String(map[k]) : k))
}

function timestampDiff(unit, a, b) {
  const x = parseDate(a), y = parseDate(b)
  if (!x || !y) return null
  unit = String(unit).toUpperCase()
  const months = { MONTH: 1, QUARTER: 3, YEAR: 12 }[unit]
  if (months) {
    let diff = (y.y - x.y) * 12 + (y.m - x.m)
    const rest = (d) => ((d.d * 24 + d.H) * 60 + d.M) * 60 + d.S
    if (diff > 0 && rest(y) < rest(x)) diff--
    if (diff < 0 && rest(y) > rest(x)) diff++
    return Math.trunc(diff / months)
  }
  const ms = { SECOND: 1000, MINUTE: 60000, HOUR: 3600000, DAY: 86400000, WEEK: 604800000 }[unit]
  return ms ? Math.trunc((toMs(y) - toMs(x)) / ms) : null
}

const variadic = (fn) => Object.defineProperty(fn, "length", { value: -1 })   // sql.js uses fn.length as the arity
const num = (v) => (v == null ? null : Number(v))
const str = (v) => (v == null ? null : String(sqliteValue(v)))
const regexCache = new Map()

function registerFunctions(db) {
  const fns = {
    concat: variadic((...a) => (a.some(v => v == null) ? null : a.map(str).join(""))),
    concat_ws: variadic((sep, ...a) => (sep == null ? null : a.filter(v => v != null).map(str).join(str(sep)))),
    mysql_left: (s, n) => (s == null || n == null ? null : [...str(s)].slice(0, Math.max(0, n)).join("")),
    mysql_right: (s, n) => (s == null || n == null ? null : (n > 0 ? [...str(s)].slice(-n).join("") : "")),
    lpad: (s, n, p) => { if (s == null || n == null || p == null) return null; s = str(s); p = str(p); if (s.length >= n) return s.slice(0, n); return p ? s.padStart(n, p) : null },
    rpad: (s, n, p) => { if (s == null || n == null || p == null) return null; s = str(s); p = str(p); if (s.length >= n) return s.slice(0, n); return p ? s.padEnd(n, p) : null },
    locate: variadic((sub, s, pos = 1) => (sub == null || s == null ? null : str(s).toLowerCase().indexOf(str(sub).toLowerCase(), pos - 1) + 1)),
    char_length: (s) => (s == null ? null : [...str(s)].length),
    character_length: (s) => (s == null ? null : [...str(s)].length),
    lcase: (s) => (s == null ? null : str(s).toLowerCase()),
    ucase: (s) => (s == null ? null : str(s).toUpperCase()),
    mid: variadic((s, p, n) => (s == null ? null : [...str(s)].slice(p > 0 ? p - 1 : Math.max(0, [...str(s)].length + p), n == null ? undefined : (p > 0 ? p - 1 : [...str(s)].length + p) + n).join(""))),
    reverse: (s) => (s == null ? null : [...str(s)].reverse().join("")),
    repeat: (s, n) => (s == null || n == null ? null : str(s).repeat(Math.max(0, n))),
    space: (n) => (n == null ? null : " ".repeat(Math.max(0, n))),
    strcmp: (a, b) => (a == null || b == null ? null : Math.sign(str(a).localeCompare(str(b)))),
    ascii: (s) => (s == null ? null : (str(s).charCodeAt(0) || 0)),
    substring_index: (s, delim, count) => {
      if (s == null || delim == null || count == null) return null
      const parts = str(s).split(str(delim))
      return count >= 0 ? parts.slice(0, count).join(str(delim)) : parts.slice(count).join(str(delim))
    },
    field: variadic((v, ...list) => (v == null ? 0 : list.findIndex(x => x != null && str(x).toLowerCase() === str(v).toLowerCase()) + 1)),
    format: variadic((n, d = 0) => (n == null ? null : Number(n).toLocaleString("en-US", { minimumFractionDigits: Math.max(0, d), maximumFractionDigits: Math.max(0, d) }))),
    regexp: (pattern, value) => {
      if (pattern == null || value == null) return null
      let re = regexCache.get(pattern)
      if (!re) { re = new RegExp(str(pattern), "i"); regexCache.set(pattern, re) }
      return re.test(str(value)) ? 1 : 0
    },
    isnull: (v) => (v == null ? 1 : 0),
    greatest: variadic((...a) => (a.some(v => v == null) ? null : a.reduce((x, y) => (y > x ? y : x)))),
    least: variadic((...a) => (a.some(v => v == null) ? null : a.reduce((x, y) => (y < x ? y : x)))),
    // math
    pow: (a, b) => (a == null || b == null ? null : Math.pow(a, b)),
    power: (a, b) => (a == null || b == null ? null : Math.pow(a, b)),
    sqrt: (a) => (a == null || a < 0 ? null : Math.sqrt(a)),
    ceil: (a) => (a == null ? null : Math.ceil(a)),
    ceiling: (a) => (a == null ? null : Math.ceil(a)),
    floor: (a) => (a == null ? null : Math.floor(a)),
    mod: (a, b) => (a == null || b == null || Number(b) === 0 ? null : a % b),
    pi: () => Math.PI,
    exp: (a) => (a == null ? null : Math.exp(a)),
    ln: (a) => (a == null || a <= 0 ? null : Math.log(a)),
    log: variadic((a, b) => (b === undefined ? (a > 0 ? Math.log(a) : null) : (a > 0 && b > 0 ? Math.log(b) / Math.log(a) : null))),
    log10: (a) => (a == null || a <= 0 ? null : Math.log10(a)),
    log2: (a) => (a == null || a <= 0 ? null : Math.log2(a)),
    sign: (a) => (a == null ? null : Math.sign(a)),
    radians: (a) => (a == null ? null : a * Math.PI / 180),
    degrees: (a) => (a == null ? null : a * 180 / Math.PI),
    sin: (a) => (a == null ? null : Math.sin(a)),
    cos: (a) => (a == null ? null : Math.cos(a)),
    tan: (a) => (a == null ? null : Math.tan(a)),
    rand: variadic(() => Math.random()),
    truncate: (n, d) => (n == null || d == null ? null : Math.trunc(n * 10 ** d) / 10 ** d),
    // dates (MySQL date strings are 'YYYY-MM-DD[ HH:MM:SS]'; the sandbox clock is UTC)
    year: (v) => parseDate(v)?.y ?? null,
    month: (v) => parseDate(v)?.m ?? null,
    day: (v) => parseDate(v)?.d ?? null,
    dayofmonth: (v) => parseDate(v)?.d ?? null,
    hour: (v) => { const m = /(\d{1,2}):(\d{2})(?::(\d{2}))?\s*$/.exec(str(v) ?? ""); return m ? +m[1] : (parseDate(v) ? 0 : null) },
    minute: (v) => { const m = /(\d{1,2}):(\d{2})(?::(\d{2}))?\s*$/.exec(str(v) ?? ""); return m ? +m[2] : (parseDate(v) ? 0 : null) },
    second: (v) => { const m = /(\d{1,2}):(\d{2})(?::(\d{2}))?\s*$/.exec(str(v) ?? ""); return m ? +(m[3] || 0) : (parseDate(v) ? 0 : null) },
    dayname: (v) => { const d = parseDate(v); return d ? DAYS[weekday(d)] : null },
    monthname: (v) => { const d = parseDate(v); return d ? MONTHS[d.m - 1] : null },
    dayofweek: (v) => { const d = parseDate(v); return d ? weekday(d) + 1 : null },
    weekday: (v) => { const d = parseDate(v); return d ? (weekday(d) + 6) % 7 : null },
    dayofyear: (v) => { const d = parseDate(v); return d ? dayOfYear(d) : null },
    quarter: (v) => { const d = parseDate(v); return d ? Math.ceil(d.m / 3) : null },
    last_day: (v) => { const d = parseDate(v); return d ? `${d.y}-${pad2(d.m)}-${pad2(daysInMonth(d.y, d.m))}` : null },
    datediff: (a, b) => { const x = parseDate(a), y = parseDate(b); return x && y ? dayNum(x) - dayNum(y) : null },
    date_add: variadic((v, n, unit = "DAY") => dateAdd(v, n, unit)),
    adddate: variadic((v, n, unit = "DAY") => dateAdd(v, n, unit)),
    date_sub: variadic((v, n, unit = "DAY") => dateAdd(v, n, unit, -1)),
    subdate: variadic((v, n, unit = "DAY") => dateAdd(v, n, unit, -1)),
    timestampadd: (unit, n, v) => dateAdd(v, n, unit),
    timestampdiff: timestampDiff,
    date_format: dateFormat,
    mysql_extract: (unit, v) => {
      const d = parseDate(v); if (!d) return null
      return { YEAR: d.y, MONTH: d.m, DAY: d.d, HOUR: d.H, MINUTE: d.M, SECOND: d.S, QUARTER: Math.ceil(d.m / 3),
        YEAR_MONTH: d.y * 100 + d.m, WEEK: null }[String(unit).toUpperCase()] ?? null
    },
    // misc
    database: () => "sandbox",
    schema: () => "sandbox",
    user: () => "student@localhost",
    current_user: () => "student@localhost",
    connection_id: () => 1,
    uuid: () => (globalThis.crypto?.randomUUID ? crypto.randomUUID() : "00000000-0000-4000-8000-000000000000"),
    sleep: () => 0,
    json_unquote: (s) => { if (s == null) return null; try { const v = JSON.parse(s); return typeof v === "string" ? v : str(s) } catch { return str(s) } },
  }
  for (const [name, fn] of Object.entries(fns)) db.create_function(name, fn)
  const version = db.exec("SELECT sqlite_version()")[0].values[0][0]
  db.create_function("version", () => `8.0-compatible (SQLite ${version})`)
  db.create_aggregate("mysql_group_concat_distinct", {
    init: () => ({ seen: new Set(), vals: [] }),
    step: (state, value, sep) => {
      state.sep = sep
      if (value != null && !state.seen.has(value)) { state.seen.add(value); state.vals.push(str(value)) }
      return state
    },
    finalize: (state) => (state.vals.length ? state.vals.join(state.sep ?? ",") : null)
  })
  db.run("PRAGMA foreign_keys = ON")   // InnoDB enforces foreign keys; SQLite only does when asked
}

export async function run(code, { onStatus = () => {} } = {}) {
  if (!sqliteLoaded()) onStatus("Loading SQLite… (first run downloads about 350 KB)")
  const SQL = await loadSqlite()
  const db = new SQL.Database()   // fresh in-memory database every run
  const ctx = { tables: {}, indexNames: new Set(), indexAlias: {}, autoTables: new Set(), vars: {} }
  const items = [info("Running on SQLite with MySQL compatibility.")]
  try {
    registerFunctions(db)
    for (const [i, raw] of splitMysql(code).entries()) {
      const r = runStatement(db, ctx, raw, i + 1)
      items.push(...r.items)
      if (r.failed) break
    }
  } finally {
    db.close()
  }
  return items
}
