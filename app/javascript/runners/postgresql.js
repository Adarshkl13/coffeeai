// Real PostgreSQL 17 (PGlite: Postgres compiled to WebAssembly), loaded once per page.
// Same runner contract as runners/python. Every run gets a brand-new database; the next
// one is started in the background after each run so re-running feels instant.
import { statementError, summarize, stripLeadingComments } from "runners/sql"

const PGLITE_URL = "https://cdn.jsdelivr.net/npm/@electric-sql/pglite@0.4.6/dist/index.js"
let modulePromise = null
let spare = null   // Promise<PGlite> for the next run

function loadPglite() {
  if (modulePromise) return modulePromise
  modulePromise = import(PGLITE_URL)
  modulePromise.catch(() => { modulePromise = null })
  return modulePromise
}

async function createDb() {
  const { PGlite, types } = await loadPglite()
  // Keep every value as the text Postgres sends, so output looks like psql (t/f, 2024-01-15, 9.90)
  const parsers = Object.fromEntries(Object.keys(types.parsers).map(oid => [oid, (v) => v]))
  const db = new PGlite({ parsers })
  await db.waitReady
  // PGlite defaults to a whole-hour Etc/GMT±N zone, which is wrong for e.g. India (+05:30)
  const tz = Intl.DateTimeFormat().resolvedOptions().timeZone
  if (tz && /^[\w/+-]+$/.test(tz)) await db.exec(`SET TimeZone TO '${tz}'`).catch(() => {})
  return db
}

// Splits a script into statements, honouring 'strings', E'escapes', "identifiers",
// $tag$ dollar quotes $tag$, -- and nested /* */ comments. psql meta-commands (\dt) end at the newline.
export function splitPostgres(code) {
  const out = []
  let start = 0, i = 0
  const push = (end) => { const s = code.slice(start, end); if (stripLeadingComments(s).trim()) out.push(s.trim()) }
  while (i < code.length) {
    const ch = code[i]
    if (ch === "\\" && !stripLeadingComments(code.slice(start, i)).trim()) {
      push(i); const nl = code.indexOf("\n", i); const end = nl === -1 ? code.length : nl
      out.push(code.slice(i, end).trim()); i = start = end; continue
    }
    if (ch === "'") {
      const escapes = /[eE]/.test(code[i - 1] ?? "") && !/[\w$]/.test(code[i - 2] ?? "")
      let j = i + 1
      while (j < code.length) {
        if (escapes && code[j] === "\\") { j += 2; continue }
        if (code[j] === "'") { if (code[j + 1] === "'") { j += 2; continue } break }
        j++
      }
      i = j + 1; continue
    }
    if (ch === '"') { const j = code.indexOf('"', i + 1); i = j === -1 ? code.length : j + 1; continue }
    if (ch === "$" && !/[\w$]/.test(code[i - 1] ?? "")) {
      const m = /^\$([A-Za-z_][A-Za-z0-9_]*)?\$/.exec(code.slice(i))
      if (m) { const end = code.indexOf(m[0], i + m[0].length); i = end === -1 ? code.length : end + m[0].length; continue }
    }
    if (ch === "-" && code[i + 1] === "-") { const nl = code.indexOf("\n", i); i = nl === -1 ? code.length : nl; continue }
    if (ch === "/" && code[i + 1] === "*") {
      let depth = 1, j = i + 2
      while (j < code.length && depth) {
        if (code.startsWith("/*", j)) { depth++; j += 2 } else if (code.startsWith("*/", j)) { depth--; j += 2 } else j++
      }
      i = j; continue
    }
    if (ch === ";") { push(i); i = start = i + 1; continue }
    i++
  }
  push(code.length)
  return out
}

// psql prints arrays as {a,b,"with space"}
function pgValue(v) {
  if (!Array.isArray(v)) return v
  const el = (x) => x === null ? "NULL" : Array.isArray(x) ? pgValue(x)
    : (/^$|[\s,{}"\\]|^null$/i.test(String(x)) ? `"${String(x).replace(/["\\]/g, "\\$&")}"` : String(x))
  return "{" + v.map(el).join(",") + "}"
}

const META = {
  dt: `SELECT schemaname AS "Schema", tablename AS "Name", 'table' AS "Type" FROM pg_tables
       WHERE schemaname NOT IN ('pg_catalog', 'information_schema') ORDER BY 1, 2`,
  d: (name) => `SELECT column_name AS "Column", CASE WHEN data_type = 'ARRAY' THEN substr(udt_name, 2) || '[]'
       ELSE data_type || COALESCE('(' || character_maximum_length || ')', '') END AS "Type",
       CASE is_nullable WHEN 'NO' THEN 'not null' ELSE '' END AS "Nullable", COALESCE(column_default, '') AS "Default"
       FROM information_schema.columns WHERE table_name = '${name.replace(/'/g, "''")}' ORDER BY ordinal_position`
}

async function runMeta(db, cmd) {
  const [name, arg] = cmd.slice(1).trim().split(/\s+/)
  if (name === "dt" || (name === "d" && !arg)) return { sql: META.dt }
  if (name === "d" || name === "d+") return { sql: META.d(arg.replace(/^"|"$/g, "")), empty: `Did not find any relation named "${arg}".` }
  return { text: `psql command \\${name} isn't available here — try \\dt, \\d table_name, or query information_schema` }
}

export async function run(code, { onStatus = () => {} } = {}) {
  if (!modulePromise) onStatus("Loading PostgreSQL… (first run downloads about 5 MB)")
  const db = await (spare || createDb())
  spare = null
  const items = []
  const onNotice = (n) => items.push({ text: `${n.severity}: ${n.message}`, cls: "info" })
  try {
    for (const [i, stmt] of splitPostgres(code).entries()) {
      let sql = stmt, empty = null
      if (stmt.startsWith("\\")) {
        const meta = await runMeta(db, stmt)
        if (meta.text) { items.push({ text: meta.text, cls: "info" }); continue }
        sql = meta.sql; empty = meta.empty
      }
      try {
        for (const r of await db.exec(sql, { rowMode: "array", onNotice })) {
          if (empty && !r.rows.length) items.push({ text: empty, cls: "info" })
          else if (r.fields.length) items.push({ table: { columns: r.fields.map(f => f.name), rows: r.rows.map(row => row.map(pgValue)) } })
          else {
            const line = summarize(sql, /^(INSERT|UPDATE|DELETE|MERGE)\b/i.test(stripLeadingComments(sql)) ? r.affectedRows ?? null : null)
            if (line) items.push(line)
          }
        }
      } catch (e) {
        items.push(statementError(e.message, i + 1, stmt))
        if (e.detail) items.push({ text: `Detail: ${e.detail}`, cls: "info" })
        if (e.hint) items.push({ text: `Hint: ${e.hint}`, cls: "info" })
        break
      }
    }
  } finally {
    db.close().catch(() => {})
    spare = createDb()
    spare.catch(() => { spare = null })
  }
  return items
}
