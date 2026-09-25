// Real SQLite (sql.js: SQLite compiled to WebAssembly), loaded once per page.
// Runner contract: run(code, { onStatus }) resolves to output items:
//   { text, cls? }                   one console line ("err" / "info" classes)
//   { table: { columns, rows } }     a result table
// Also exports the SQLite plumbing that runners/mysql reuses.
const SQLJS_URL = "https://cdn.jsdelivr.net/npm/sql.js@1.14.2/dist/"
let sqlJsPromise = null

export function sqliteLoaded() { return sqlJsPromise !== null }

export function loadSqlite() {
  if (sqlJsPromise) return sqlJsPromise
  sqlJsPromise = new Promise((resolve, reject) => {
    const init = () => globalThis.initSqlJs({ locateFile: (file) => SQLJS_URL + file }).then(resolve, reject)
    if (globalThis.initSqlJs) return init()
    const script = document.createElement("script")
    script.src = SQLJS_URL + "sql-wasm.js"
    script.onload = init
    script.onerror = () => reject(new Error("network error"))
    document.head.appendChild(script)
  })
  sqlJsPromise.catch(() => { sqlJsPromise = null })
  return sqlJsPromise
}

// ── Shared helpers (also used by runners/mysql and runners/postgresql) ──

// Drops leading whitespace and -- / # / /* */ comments
export function stripLeadingComments(sql) {
  let s = sql
  for (;;) {
    s = s.replace(/^\s+/, "")
    if (s.startsWith("--") || s.startsWith("#")) { const nl = s.indexOf("\n"); s = nl === -1 ? "" : s.slice(nl + 1) }
    else if (s.startsWith("/*")) { const end = s.indexOf("*/"); s = end === -1 ? "" : s.slice(end + 2) }
    else return s
  }
}

export function statementError(message, index, sql) {
  const flat = stripLeadingComments(sql).replace(/\s+/g, " ").trim()
  const snippet = flat.length > 60 ? flat.slice(0, 60) + "…" : flat
  return { text: `Error: ${message} (in statement ${index}: ${snippet})`, cls: "err" }
}

const plural = (n, word) => `${n} ${word}${n === 1 ? "" : "s"}`

// Short summary line for a statement that returned no result set, e.g. "3 rows inserted".
// `changes` is the affected row count for INSERT/UPDATE/DELETE (null when unknown).
export function summarize(sql, changes) {
  const s = stripLeadingComments(sql).toUpperCase()
  const verb = (s.match(/^[A-Z]+/) || [""])[0]
  const count = (what) => changes == null ? null : { text: `${plural(changes, "row")} ${what}`, cls: "info" }
  const object = () => {
    const m = s.match(/^\w+\s+(?:OR\s+REPLACE\s+)?(?:(?:GLOBAL|LOCAL|TEMP|TEMPORARY|UNLOGGED|UNIQUE|VIRTUAL|RECURSIVE)\s+)*(MATERIALIZED\s+VIEW|\w+)/)
    if (!m) return null
    const name = m[1].replace(/\s+/, " ")
    return name.charAt(0) + name.slice(1).toLowerCase()
  }
  switch (verb) {
    case "INSERT": case "REPLACE": return count("inserted")
    case "UPDATE":   return count("updated")
    case "DELETE":   return count("deleted")
    case "CREATE":   { const o = object(); return o && { text: `${o} created`, cls: "info" } }
    case "DROP":     { const o = object(); return o && { text: `${o} dropped`, cls: "info" } }
    case "ALTER":    { const o = object(); return o && { text: `${o} altered`, cls: "info" } }
    case "TRUNCATE": return { text: "Table truncated", cls: "info" }
    case "BEGIN": case "START": return { text: "Transaction started", cls: "info" }
    case "COMMIT": case "END":  return { text: "Transaction committed", cls: "info" }
    case "ROLLBACK": return { text: /^ROLLBACK\s+(?:TRANSACTION\s+|WORK\s+)?TO\b/.test(s) ? "Rolled back to savepoint" : "Transaction rolled back", cls: "info" }
    case "SAVEPOINT": return { text: "Savepoint created", cls: "info" }
    case "RELEASE":  return { text: "Savepoint released", cls: "info" }
    default: return null
  }
}

// Float noise (0.30000000000000004) is shown the way the sqlite3 shell shows it (%.15g)
export function sqliteValue(v) {
  if (typeof v === "number" && !Number.isInteger(v)) return Number(v.toPrecision(15))
  if (v instanceof Uint8Array) return "x'" + Array.from(v, b => b.toString(16).padStart(2, "0")).join("") + "'"
  return v
}

// Runs one prepared statement to completion and returns its output items.
// `params` binds named parameters such as {"@total": 5} (MySQL user variables).
export function statementItems(db, stmt, params) {
  const sql = stmt.getSQL()
  if (params) stmt.bind(params)
  const columns = stmt.getColumnNames()
  if (columns.length) {
    const rows = []
    while (stmt.step()) rows.push(stmt.get().map(sqliteValue))
    return [{ table: { columns, rows } }]
  }
  stmt.step()
  const isDml = /^(INSERT|REPLACE|UPDATE|DELETE)\b/i.test(stripLeadingComments(sql))
  const line = summarize(sql, isDml ? db.getRowsModified() : null)
  return line ? [line] : []
}

// The text up to the first top-level semicolon (for error messages about unparsable SQL)
function firstStatement(sql) {
  sql = stripLeadingComments(sql)
  let quote = null
  for (let i = 0; i < sql.length; i++) {
    const c = sql[i]
    if (quote) { if (c === quote) quote = null }
    else if (c === "'" || c === '"' || c === "`" || c === "[") quote = c === "[" ? "]" : c
    else if (c === ";") return sql.slice(0, i)
  }
  return sql
}

// Executes a (possibly multi-statement) script statement by statement and stops at the
// first error. Returns { items, failed }. Errors are numbered from 1 in script order, or
// reported as statement `index` showing `label` when a caller runs one translated statement.
export function execScript(db, code, { index, label, params } = {}) {
  const items = []
  const it = db.iterateStatements(code)
  let count = 0
  for (;;) {
    const pending = firstStatement(it.getRemainingSQL())
    let step
    try {
      step = it.next()
    } catch (e) {
      items.push(statementError(e.message, index ?? count + 1, label ?? pending))
      return { items, failed: true }
    }
    if (step.done) break
    count++
    const stmt = step.value
    try {
      items.push(...statementItems(db, stmt, params))
    } catch (e) {
      items.push(statementError(e.message, index ?? count, label ?? stmt.getSQL()))
      return { items, failed: true }
    }
  }
  return { items, failed: false }
}

export async function run(code, { onStatus = () => {} } = {}) {
  if (!sqliteLoaded()) onStatus("Loading SQLite… (first run downloads about 350 KB)")
  const SQL = await loadSqlite()
  const db = new SQL.Database()   // fresh in-memory database every run
  try {
    return execScript(db, code).items
  } finally {
    db.close()
  }
}
