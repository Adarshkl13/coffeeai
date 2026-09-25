import { Controller } from "@hotwired/stimulus"

// Languages that run on a real interpreter in the browser (app/javascript/runners/*.js)
const REAL_RUNNERS = {
  python: "runners/python",
  pandas: "runners/python",
  numpy:  "runners/python",
  ruby:   "runners/ruby",
  php:    "runners/php",
  sql:        "runners/sql",
  mysql:      "runners/mysql",
  postgresql: "runners/postgresql"
}

// Handles live HTML preview, JavaScript, Python, Ruby, and Java simulation
export default class extends Controller {
  static targets = ["textarea", "preview", "lineNums", "console", "runBtn"]
  static values  = { starter: String, mode: String }

  connect() {
    this.updateLineNums()
    if (this.mode === "html") {
      this.run()
    }
  }

  get mode() {
    return this.modeValue || "html"
  }

  // ── Run code based on mode ──────────────────────────────────────
  run() {
    const code = this.textareaTarget.value
    if (REAL_RUNNERS[this.mode]) return this._runReal(code)
    if (this.mode === "html")            this._runHtml(code)
    else if (this.mode === "javascript") this._runJs(code)
    else if (this.mode === "java")       this._runJava(code)
    else if (this.mode === "react")       this._runReact(code)
    else if (this.mode === "typescript")  this._runTypeScript(code)
  }

  onInput() {
    this.updateLineNums()
    if (this.mode === "html") this.run()
  }

  reset() {
    const starter = this._unescape(this.starterValue)
    this.textareaTarget.value = starter
    this.updateLineNums()
    if (this.hasConsoleTarget) this._clearConsole()
    this.run()
  }

  handleTab(event) {
    if (event.key !== "Tab") return
    event.preventDefault()
    const ta    = this.textareaTarget
    const start = ta.selectionStart
    const val   = ta.value
    ta.value    = val.slice(0, start) + "  " + val.slice(ta.selectionEnd)
    ta.selectionStart = ta.selectionEnd = start + 2
    this.updateLineNums()
    if (this.mode === "html") this.run()
  }

  updateLineNums() {
    if (!this.hasLineNumsTarget) return
    const lines = this.textareaTarget.value.split("\n").length
    this.lineNumsTarget.textContent = Array.from({ length: lines }, (_, i) => i + 1).join("\n")
  }

  // ── HTML: live iframe preview ───────────────────────────────────
  _runHtml(code) {
    if (this.hasPreviewTarget) this.previewTarget.srcdoc = code
  }

  // ── JavaScript: iframe with console capture ─────────────────────
  _runJs(code) {
    if (!this.hasPreviewTarget) return
    const wrapped = `<!DOCTYPE html>
<html>
<head>
<style>
  body { margin:0; background:#0a0a18; font-family:'Fira Code',monospace; font-size:13px; }
  #output { padding:14px 16px; }
  .line { color:#a3e635; margin-bottom:3px; white-space:pre-wrap; word-break:break-word; }
  .line.error { color:#f87171; }
  .line.warn  { color:#fbbf24; }
  .line.info  { color:#60a5fa; }
  .line.sys   { color:#6b7280; font-style:italic; }
  .prompt     { color:#4b5563; user-select:none; }
</style>
</head>
<body>
<div id="output"></div>
<script>
(function(){
  const out = document.getElementById('output');
  function line(text, cls) {
    const d = document.createElement('div');
    d.className = 'line ' + (cls||'');
    d.innerHTML = '<span class="prompt">&gt; </span>' + escHtml(text);
    out.appendChild(d);
  }
  function escHtml(s) {
    return String(s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
  }
  function fmt(a) {
    if (a === null) return 'null';
    if (a === undefined) return 'undefined';
    if (typeof a === 'object') {
      try { return JSON.stringify(a, null, 2); } catch(e) { return String(a); }
    }
    return String(a);
  }
  const _log = console.log.bind(console);
  console.log   = (...a) => { line(a.map(fmt).join(' '));       _log(...a); };
  console.error = (...a) => { line(a.map(fmt).join(' '),'error'); };
  console.warn  = (...a) => { line(a.map(fmt).join(' '),'warn');  };
  console.info  = (...a) => { line(a.map(fmt).join(' '),'info');  };
  try {
    ${code.replace(/`/g, '\\`').replace(/\$/g, '\\$').replace(/\\/g, '\\\\')}
  } catch(e) {
    line('Error: ' + e.message, 'error');
  }
})();
<\/script>
</body>
</html>`
    this.previewTarget.srcdoc = wrapped
  }

  // ── Real interpreters (see REAL_RUNNERS) ───────────────────────
  async _runReal(code) {
    if (!this.hasPreviewTarget || this._running) return
    this._running = true
    if (this.hasRunBtnTarget) this.runBtnTarget.disabled = true
    const status = (text) => this._renderOutput([{ text, cls: "info" }])
    try {
      const runner = await import(REAL_RUNNERS[this.mode])
      this._renderOutput(await runner.run(code, { onStatus: status }))
    } catch (e) {
      this._renderOutput([{ text: `Could not start the ${this.mode} runtime: ${e.message}. Check your internet connection.`, cls: "err" }])
    } finally {
      this._running = false
      if (this.hasRunBtnTarget) this.runBtnTarget.disabled = false
    }
  }

  _renderOutput(items) {
    const esc = (t) => String(t ?? "NULL").replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;")
    const table = ({ columns, rows }) =>
      `<table><thead><tr>${columns.map(c => `<th>${esc(c)}</th>`).join("")}</tr></thead>` +
      `<tbody>${rows.map(r => `<tr>${r.map(v => `<td>${esc(v)}</td>`).join("")}</tr>`).join("")}</tbody></table>` +
      `<div class="line info">${rows.length} row${rows.length === 1 ? "" : "s"}</div>`
    const body = items.length
      ? items.map(it => it.table
          ? table(it.table)
          : `<div class="line ${it.cls || ""}"><span class="prompt">&gt; </span>${esc(it.text)}</div>`).join("")
      : '<div class="line info">(no output)</div>'
    this.previewTarget.srcdoc = `<!DOCTYPE html>
<html>
<head>
<style>
  body { margin:0; background:#0a0a18; font-family:'Fira Code',monospace; font-size:13px; }
  #out { padding:14px 16px; }
  .line { color:#a3e635; margin-bottom:3px; white-space:pre-wrap; }
  .err  { color:#f87171; }
  .info { color:#4b5563; font-style:italic; }
  .prompt { color:#4b5563; user-select:none; }
  table { border-collapse:collapse; margin:6px 0 4px; color:#e5e7eb; }
  th, td { border:1px solid #1f2937; padding:4px 10px; text-align:left; }
  th { background:#111827; color:#a3e635; }
</style>
</head>
<body><div id="out">${body}</div></body></html>`
  }

  // ── Helpers ───────────────────────────────────────────────────────

  // ── Java simulator ────────────────────────────────────────────────
  _runJava(code) {
    if (!this.hasPreviewTarget) return

    // Extract main() body if the full class is present
    const mainBodyMatch = code.match(/public\s+static\s+void\s+main\s*\([^)]*\)\s*\{([\s\S]*)\}\s*\}?\s*$/)
    const rawCode = mainBodyMatch ? mainBodyMatch[1] : code

    const lines  = rawCode.split("\n")
    const output = []
    const env    = {}
    let   i      = 0

    // ── Expression evaluator ──────────────────────────────────────
    const evalJ = (expr) => {
      expr = expr.trim()

      // null / true / false
      if (expr === "null")  return null
      if (expr === "true")  return true
      if (expr === "false") return false

      // Integer / double literals
      if (/^-?\d+$/.test(expr))      return parseInt(expr, 10)
      if (/^-?\d+\.\d+$/.test(expr)) return parseFloat(expr)

      // String literal
      const strM = expr.match(/^"((?:[^"\\]|\\.)*)"$/)
      if (strM) return strM[1].replace(/\\n/g, "\n").replace(/\\t/g, "\t")

      // Char literal
      const chrM = expr.match(/^'(.)'$/)
      if (chrM) return chrM[1]

      // Array literal: {v1, v2, ...}
      if (expr.startsWith("{") && expr.endsWith("}")) {
        const inner = expr.slice(1, -1).trim()
        if (!inner) return []
        return _splitArgs(inner).map(a => evalJ(a.trim()))
      }

      // new ArrayList<>() / new ArrayList<>(Arrays.asList(...))
      if (/^new\s+ArrayList/.test(expr)) {
        const asListM = expr.match(/Arrays\.asList\((.+)\)/)
        if (asListM) return _splitArgs(asListM[1]).map(a => evalJ(a.trim()))
        return []
      }

      // new HashMap<>()
      if (/^new\s+HashMap/.test(expr)) return {}

      // new ClassName(args) — simplified: create object tag
      const newM = expr.match(/^new\s+(\w+)\(([^)]*)\)$/)
      if (newM) return { __type: newM[1], __args: _splitArgs(newM[2]).map(a => evalJ(a.trim())) }

      // Arrays.toString(arr)
      const arrToStr = expr.match(/^Arrays\.toString\((\w+)\)$/)
      if (arrToStr) {
        const v = env[arrToStr[1]]
        return "[" + (Array.isArray(v) ? v.join(", ") : v) + "]"
      }

      // Arrays.asList(...)
      const asListM2 = expr.match(/^Arrays\.asList\((.+)\)$/)
      if (asListM2) return _splitArgs(asListM2[1]).map(a => evalJ(a.trim()))

      // Math methods
      const mathM = expr.match(/^Math\.(abs|sqrt|pow|max|min|round|floor|ceil|log|PI|E)\(?([^)]*)\)?$/)
      if (mathM) {
        const fn   = mathM[1]
        const args = mathM[2] ? _splitArgs(mathM[2]).map(a => evalJ(a.trim())) : []
        if (fn === "PI")   return Math.PI
        if (fn === "E")    return Math.E
        if (fn === "abs")  return Math.abs(args[0])
        if (fn === "sqrt") return Math.sqrt(args[0])
        if (fn === "pow")  return Math.pow(args[0], args[1])
        if (fn === "max")  return Math.max(args[0], args[1])
        if (fn === "min")  return Math.min(args[0], args[1])
        if (fn === "round") return Math.round(args[0])
        if (fn === "floor") return Math.floor(args[0])
        if (fn === "ceil")  return Math.ceil(args[0])
      }

      // Integer / Double / String static methods
      const staticM = expr.match(/^(Integer|Double|String|Collections)\.(parseInt|parseDouble|valueOf|toString|sort|reverse|max|min|getOrDefault)\(([^)]*)\)$/)
      if (staticM) {
        const [, cls, method, argsStr] = staticM
        const args = _splitArgs(argsStr).map(a => evalJ(a.trim()))
        if (method === "parseInt")    return parseInt(args[0], 10) || 0
        if (method === "parseDouble") return parseFloat(args[0]) || 0.0
        if (method === "valueOf")     return args[0]
        if (method === "toString")    return String(args[0])
      }

      // String.format(fmt, args...)
      const fmtM = expr.match(/^String\.format\((.+)\)$/)
      if (fmtM) {
        const fArgs = _splitArgs(fmtM[1]).map(a => evalJ(a.trim()))
        let fmt = String(fArgs[0])
        let idx = 1
        fmt = fmt.replace(/%[-\d]*\.?\d*[sdfc%]/g, (spec) => {
          if (spec === "%%") return "%"
          const val = fArgs[idx++]
          const dpM = spec.match(/\.(\d+)f/)
          if (dpM) return parseFloat(val).toFixed(parseInt(dpM[1]))
          if (spec.endsWith("d")) return String(parseInt(val))
          if (spec.endsWith("s")) {
            const widthM = spec.match(/%-?(\d+)s/)
            if (widthM) {
              const w = parseInt(widthM[1])
              return spec.includes("-") ? String(val).padEnd(w) : String(val).padStart(w)
            }
            return String(val)
          }
          return String(val)
        })
        return fmt
      }

      // String.valueOf(x)
      if (/^String\.valueOf\(/.test(expr)) {
        const inner = expr.slice("String.valueOf(".length, -1)
        return String(evalJ(inner))
      }

      // Collections.max/min/sort/reverse
      const collM = expr.match(/^Collections\.(max|min)\((\w+)\)$/)
      if (collM) {
        const arr = env[collM[2]]
        if (Array.isArray(arr)) {
          if (collM[1] === "max") return Math.max(...arr)
          if (collM[1] === "min") return Math.min(...arr)
        }
      }

      // Method chain on variable
      const chainM = expr.match(/^(.+?)\.(\w+)\(([^)]*)\)$/) || expr.match(/^(.+?)\.(\w+)$/)
      if (chainM) {
        const [, baseExpr, method, argStr] = chainM
        const args = argStr ? _splitArgs(argStr).map(a => evalJ(a.trim())) : []
        const base = evalJ(baseExpr)

        if (typeof base === "string") {
          if (method === "length")      return base.length
          if (method === "toUpperCase") return base.toUpperCase()
          if (method === "toLowerCase") return base.toLowerCase()
          if (method === "trim")        return base.trim()
          if (method === "contains")    return base.includes(String(args[0]))
          if (method === "startsWith")  return base.startsWith(String(args[0]))
          if (method === "endsWith")    return base.endsWith(String(args[0]))
          if (method === "replace")     return base.replace(new RegExp(String(args[0]).replace(/[.*+?^${}()|[\]\\]/g,"\\$&"), "g"), String(args[1] ?? ""))
          if (method === "substring")   return base.slice(args[0], args[1] ?? base.length)
          if (method === "charAt")      return base[args[0]] ?? ""
          if (method === "indexOf")     return base.indexOf(String(args[0]))
          if (method === "split")       return args[0] !== undefined ? base.split(String(args[0])) : base.split(" ")
          if (method === "equals")      return base === String(args[0])
          if (method === "equalsIgnoreCase") return base.toLowerCase() === String(args[0]).toLowerCase()
          if (method === "isEmpty")     return base.length === 0
          if (method === "toCharArray") return base.split("")
        }

        if (Array.isArray(base)) {
          if (method === "length")   return base.length
          if (method === "size")     return base.length
          if (method === "isEmpty")  return base.length === 0
          if (method === "get")      return base[args[0]] ?? null
          if (method === "contains") return base.includes(args[0])
          if (method === "indexOf")  return base.indexOf(args[0])
          if (method === "add")      { base.push(args[0]); return null }
          if (method === "remove") {
            if (typeof args[0] === "number" && Number.isInteger(args[0])) base.splice(args[0], 1)
            else { const idx = base.indexOf(args[0]); if (idx > -1) base.splice(idx, 1) }
            return null
          }
          if (method === "set")     { base[args[0]] = args[1]; return null }
          if (method === "sort")    { base.sort((a, b) => a > b ? 1 : -1); return null }
          if (method === "toString") return "[" + base.join(", ") + "]"
        }

        if (typeof base === "object" && base !== null && !Array.isArray(base)) {
          if (method === "put")          { base[String(args[0])] = args[1]; return null }
          if (method === "get")          return base[String(args[0])] ?? null
          if (method === "containsKey")  return Object.prototype.hasOwnProperty.call(base, String(args[0]))
          if (method === "size")         return Object.keys(base).length
          if (method === "keySet")       return Object.keys(base)
          if (method === "values")       return Object.values(base)
          if (method === "getOrDefault") return base[String(args[0])] ?? args[1]
          if (method === "toString")     return JSON.stringify(base)
        }

        if (typeof base === "number") {
          if (method === "doubleValue") return base
          if (method === "intValue")    return Math.trunc(base)
          if (method === "toString")    return String(base)
        }

        if (base && base.__type) {
          if (method === "getInfo" || method === "describe" || method === "introduce") return `[${base.__type} object]`
          if (method === "getClass") return { getSimpleName: () => base.__type }
          if (method === "getSimpleName") return base.__type
        }

        if (base && typeof base.getSimpleName === "function" && method === "getSimpleName") {
          return base.getSimpleName()
        }
      }

      // Array subscript
      const subM = expr.match(/^(\w+)\[(.+)\]$/)
      if (subM) {
        const arr = env[subM[1]]
        const idx = evalJ(subM[2])
        if (Array.isArray(arr)) return arr[idx < 0 ? arr.length + idx : idx] ?? null
      }

      // Arithmetic
      const arith = _splitArith(expr)
      if (arith) {
        const [l, op, r] = arith
        const a = evalJ(l), b = evalJ(r)
        if (op === "+") return (typeof a === "string" || typeof b === "string") ? String(a === null ? "null" : a) + String(b === null ? "null" : b) : a + b
        if (op === "-")  return a - b
        if (op === "*")  return a * b
        if (op === "/")  return (Number.isInteger(a) && Number.isInteger(b)) ? Math.trunc(a / b) : a / b
        if (op === "%")  return a % b
        if (op === "**") return Math.pow(a, b)
      }

      // Comparisons
      const cmpPairs = [[">=",">="],["<=","<="],["!=","!="],["==","=="],["<","<"],[">",">"]]
      for (const [op, jsOp] of cmpPairs) {
        if (expr.includes(" " + op + " ") || expr.includes(op)) {
          const parts = expr.split(op)
          if (parts.length >= 2) {
            const a = evalJ(parts[0].trim()), b = evalJ(parts.slice(1).join(op).trim())
            if (jsOp === ">=") return a >= b
            if (jsOp === "<=") return a <= b
            if (jsOp === "!=") return a !== b
            if (jsOp === "==") return a === b || String(a) === String(b)
            if (jsOp === "<")  return a < b
            if (jsOp === ">")  return a > b
          }
        }
      }

      // Logical
      if (expr.includes("&&")) { const [l,r]=expr.split("&&"); return evalJ(l.trim()) && evalJ(r.trim()) }
      if (expr.includes("||")) { const [l,r]=expr.split("||"); return evalJ(l.trim()) || evalJ(r.trim()) }
      if (expr.startsWith("!")) return !evalJ(expr.slice(1).trim())

      // Ternary: a ? b : c
      const ternM = expr.match(/^(.+?)\s*\?\s*(.+?)\s*:\s*(.+)$/)
      if (ternM) return evalJ(ternM[1]) ? evalJ(ternM[2]) : evalJ(ternM[3])

      // instanceof
      if (expr.includes(" instanceof ")) {
        const [obj] = expr.split(" instanceof ")
        return env[obj.trim()] !== undefined
      }

      // (cast) expr — e.g. (int) 3.9
      const castM = expr.match(/^\(int\)\s*(.+)$/)
      if (castM) return Math.trunc(parseFloat(evalJ(castM[1])) || 0)
      const castDM = expr.match(/^\(double\)\s*(.+)$/)
      if (castDM) return parseFloat(evalJ(castDM[1])) || 0.0

      // Variable lookup
      if (/^\w+$/.test(expr) && env[expr] !== undefined) return env[expr]

      return expr // fallback: return as string
    }

    // ── Output formatter ──────────────────────────────────────────
    const javaStr = (v) => {
      if (v === null || v === undefined) return "null"
      if (typeof v === "boolean") return v ? "true" : "false"
      if (Array.isArray(v)) return "[" + v.map(javaStr).join(", ") + "]"
      if (typeof v === "object" && v.__type) return v.__type + "@obj"
      if (typeof v === "object") return JSON.stringify(v)
      return String(v)
    }

    // ── Collect block body (lines between { and matching }) ───────
    const collectBraceBlock = (startIdx) => {
      const body = []
      let depth = 1, idx = startIdx
      while (idx < lines.length && depth > 0) {
        const t = lines[idx].trim(); idx++
        if (t.includes("{")) depth += (t.match(/\{/g) || []).length
        if (t.includes("}")) depth -= (t.match(/\}/g) || []).length
        if (depth > 0) body.push(t)
      }
      return { body, nextLine: idx }
    }

    // ── Strip type prefix from declaration ────────────────────────
    const stripType = (decl) => {
      return decl
        .replace(/^(public|private|protected|static|final)\s+/g, "")
        .replace(/^(int|double|float|long|boolean|char|byte|short|String|var)\s+/, "")
        .replace(/^[A-Z]\w*(?:<[^>]*>)?\s+/, "")  // class type
        .replace(/^[A-Z]\w*\[\]\s+/, "")           // array type
    }

    // ── Statement executor ────────────────────────────────────────
    const runLine = (t) => {
      if (!t || t.startsWith("//") || t.startsWith("*") || t.startsWith("import") || t === "}") return

      // System.out.println / print / printf
      const printlnM = t.match(/^System\.out\.println\((.*)\);?$/)
      if (printlnM) {
        const v = evalJ(printlnM[1].trim())
        output.push(javaStr(v))
        return
      }
      const printM = t.match(/^System\.out\.print\((.*)\);?$/)
      if (printM) {
        const v = javaStr(evalJ(printM[1].trim()))
        if (output.length > 0) output[output.length - 1] += v
        else output.push(v)
        return
      }
      const printfM = t.match(/^System\.out\.printf\((.*)\);?$/)
      if (printfM) {
        const fmtStr = "String.format(" + printfM[1] + ")"
        const v = javaStr(evalJ(fmtStr))
        output.push(v)
        return
      }

      // Variable declaration with assignment
      const declM = t.match(/^(?:(?:public|private|static|final)\s+)*(\w[\w<>, \[\]]*)\s+(\w+)\s*=\s*(.+?);?$/)
      if (declM && !t.startsWith("if") && !t.startsWith("for") && !t.startsWith("while")) {
        env[declM[2]] = evalJ(declM[3].trim())
        return
      }

      // Augmented assignment
      const augM = t.match(/^(\w+)\s*(\+=|-=|\*=|\/=|%=)\s*(.+?);?$/)
      if (augM) {
        const cur = env[augM[1]] ?? 0
        const val = evalJ(augM[3])
        if (augM[2] === "+=") env[augM[1]] = (typeof cur === "string" || typeof val === "string") ? String(cur) + String(val) : cur + val
        if (augM[2] === "-=") env[augM[1]] = cur - val
        if (augM[2] === "*=") env[augM[1]] = cur * val
        if (augM[2] === "/=") env[augM[1]] = Number.isInteger(cur) && Number.isInteger(val) ? Math.trunc(cur/val) : cur/val
        if (augM[2] === "%=") env[augM[1]] = cur % val
        return
      }

      // i++ / i--
      if (/^\w+\+\+;?$/.test(t)) { const vn = t.replace(/\+\+;?$/, ""); env[vn] = (env[vn] ?? 0) + 1; return }
      if (/^\w+--;?$/.test(t))   { const vn = t.replace(/--;?$/, ""); env[vn] = (env[vn] ?? 0) - 1; return }

      // Plain assignment
      const assignM = t.match(/^(\w+)\s*=\s*(.+?);?$/)
      if (assignM && !t.includes("==") && !t.includes("!=")) {
        env[assignM[1]] = evalJ(assignM[2].trim())
        return
      }

      // Method call as statement (e.g. list.add(...), map.put(...))
      const methCallM = t.match(/^(\w+)\.(\w+)\(([^)]*)\);?$/)
      if (methCallM) { evalJ(t.replace(/;$/, "")); return }
    }

    // ── Main execution loop ───────────────────────────────────────
    try {
      while (i < lines.length) {
        const raw = lines[i]; i++
        const t   = raw.trim()
        if (!t || t.startsWith("//") || t.startsWith("*") || t.startsWith("import") || t.startsWith("@")) continue

        // if / else if / else
        if (/^if\s*\(/.test(t)) {
          const condM = t.match(/^if\s*\((.+?)\)\s*\{?(.*)$/)
          if (!condM) continue
          let cond
          try { cond = evalJ(condM[1]) } catch { cond = false }
          const body = [condM[2].trim()].filter(Boolean)
          if (t.includes("{")) {
            const block = collectBraceBlock(i)
            i = block.nextLine
            block.body.forEach(bl => body.push(bl))
          }
          if (cond) {
            body.forEach(runLine)
            // Skip else branches
            while (i < lines.length && /^else/.test(lines[i].trim())) {
              const eb = collectBraceBlock(i + 1)
              i = eb.nextLine
            }
          } else {
            // Look for else if / else
            while (i < lines.length) {
              const next = lines[i].trim()
              if (/^else\s+if\s*\(/.test(next)) {
                i++
                const ecM = next.match(/^else\s+if\s*\((.+?)\)\s*\{?(.*)$/)
                if (ecM) {
                  let econd
                  try { econd = evalJ(ecM[1]) } catch { econd = false }
                  const ebody = [ecM[2].trim()].filter(Boolean)
                  if (next.includes("{")) {
                    const eb = collectBraceBlock(i)
                    i = eb.nextLine
                    eb.body.forEach(bl => ebody.push(bl))
                  }
                  if (econd) {
                    ebody.forEach(runLine)
                    // Skip remaining else
                    while (i < lines.length && /^else/.test(lines[i].trim())) {
                      const sb = collectBraceBlock(i + 1); i = sb.nextLine
                    }
                    break
                  }
                }
              } else if (/^else\s*\{/.test(next) || next === "else {") {
                i++
                const eb = collectBraceBlock(i)
                i = eb.nextLine
                eb.body.forEach(runLine)
                break
              } else {
                break
              }
            }
          }
          continue
        }

        // for (init; condition; update)
        const forClassicM = t.match(/^for\s*\(\s*(?:\w[\w<>\[\]]*\s+)?(\w+)\s*=\s*(.+?);\s*(.+?);\s*(.+?)\s*\)\s*\{?(.*)$/)
        if (forClassicM) {
          const [, varName, initVal, condExpr, updateExpr, inlineBody] = forClassicM
          env[varName] = evalJ(initVal)
          const body = inlineBody.trim() ? [inlineBody.trim()] : []
          if (t.includes("{")) {
            const block = collectBraceBlock(i)
            i = block.nextLine
            block.body.forEach(bl => body.push(bl))
          }
          let guard = 0
          while (evalJ(condExpr) && guard++ < 500) {
            body.forEach(runLine)
            // Process update
            if (/\+\+$/.test(updateExpr.trim())) env[varName]++
            else if (/--$/.test(updateExpr.trim())) env[varName]--
            else if (updateExpr.includes("+=")) {
              const [, rhs] = updateExpr.split("+=")
              env[varName] += evalJ(rhs.trim())
            } else if (updateExpr.includes("-=")) {
              const [, rhs] = updateExpr.split("-=")
              env[varName] -= evalJ(rhs.trim())
            }
          }
          continue
        }

        // for-each: for (Type var : collection)
        const forEachM = t.match(/^for\s*\(\s*(?:\w[\w<>\[\]]*\s+)?(\w+)\s*:\s*(\w+)\s*\)\s*\{?(.*)$/)
        if (forEachM) {
          const [, itemVar, collVar, inlineBody] = forEachM
          const coll = env[collVar]
          const body = inlineBody.trim() ? [inlineBody.trim()] : []
          if (t.includes("{")) {
            const block = collectBraceBlock(i)
            i = block.nextLine
            block.body.forEach(bl => body.push(bl))
          }
          if (Array.isArray(coll)) {
            for (const item of coll) {
              env[itemVar] = item
              body.forEach(runLine)
            }
          } else if (typeof coll === "object" && coll !== null) {
            for (const key of Object.keys(coll)) {
              env[itemVar] = key
              body.forEach(runLine)
            }
          }
          continue
        }

        // while
        const whileM = t.match(/^while\s*\((.+?)\)\s*\{?(.*)$/)
        if (whileM) {
          const body = whileM[2].trim() ? [whileM[2].trim()] : []
          if (t.includes("{")) {
            const block = collectBraceBlock(i)
            i = block.nextLine
            block.body.forEach(bl => body.push(bl))
          }
          let guard = 0
          while (evalJ(whileM[1]) && guard++ < 500) {
            body.forEach(runLine)
          }
          continue
        }

        // switch
        if (/^switch\s*\(/.test(t)) {
          const swM = t.match(/^switch\s*\((.+?)\)\s*\{/)
          if (swM) {
            const block = collectBraceBlock(i)
            i = block.nextLine
            const val = javaStr(evalJ(swM[1]))
            let executing = false
            for (const bl of block.body) {
              const bt = bl.trim()
              if (/^case\s+/.test(bt)) {
                const caseVal = bt.replace(/^case\s+/, "").replace(/:.*$/, "").trim().replace(/^["']|["']$/g, "")
                executing = (caseVal === val)
              } else if (bt === "default:") {
                executing = true
              } else if (bt === "break;") {
                if (executing) break
              } else if (executing && bt) {
                runLine(bt)
              }
            }
          }
          continue
        }

        // Skip class/method declarations
        if (/^(public|private|protected|static|abstract|class|interface)\s/.test(t) && t.includes("{")) {
          if (!t.includes("main")) {
            const block = collectBraceBlock(i)
            i = block.nextLine
          }
          continue
        }
        if (/^@Override/.test(t) || /^\/\*/.test(t)) continue

        runLine(t)
      }
    } catch (e) {
      output.push("Error: " + e.message)
    }

    const html = `<!DOCTYPE html><html><head><style>
      body{margin:0;background:#0a0a18;font-family:'Fira Code',monospace;font-size:13px}
      #out{padding:14px 16px}
      .line{color:#fbbf24;margin-bottom:3px;white-space:pre-wrap}
      .err{color:#f87171}
      .prompt{color:#4b5563;user-select:none}
    </style></head><body><div id="out">${
      output.length
        ? output.map(l => `<div class="line ${l.startsWith("Error:") ? "err" : ""}"><span class="prompt">&gt; </span>${l.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;")}</div>`).join("")
        : '<div class="line" style="color:#4b5563;font-style:italic">(no output)</div>'
    }</div></body></html>`
    this.previewTarget.srcdoc = html
  }

  // ── TypeScript runner (Babel standalone) ─────────────────────────
  _runTypeScript(code) {
    if (!this.hasPreviewTarget) return
    const safe = code.replace(/\\/g, '\\\\').replace(/`/g, '\\`').replace(/\$/g, '\\$')
    this.previewTarget.srcdoc = `<!DOCTYPE html><html><head><style>
      *{box-sizing:border-box;margin:0;padding:0}
      body{background:#0b0b1e;color:#e2e0f0;font-family:'Fira Code',monospace;font-size:12.5px;padding:12px;overflow:auto}
      .brand{font-size:11px;color:#6b7280;margin-bottom:8px;font-style:italic;border-bottom:1px solid #1e1e3a;padding-bottom:6px}
      .log{color:#a3e635;margin-bottom:3px;white-space:pre-wrap;word-break:break-word}
      .warn{color:#fbbf24;margin-bottom:3px;white-space:pre-wrap}
      .err{color:#f87171;margin-bottom:3px;white-space:pre-wrap;border-left:3px solid #ef4444;padding-left:6px}
      .info{color:#60a5fa;margin-bottom:3px;white-space:pre-wrap}
    </style></head><body>
    <div class="brand">🔷 TypeScript Simulator (Babel)</div>
    <div id="out"></div>
    <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
    <script>
    const out = document.getElementById('out');
    function addLine(text, cls) {
      const d = document.createElement('div');
      d.className = cls;
      d.textContent = text;
      out.appendChild(d);
    }
    function fmt(...args) {
      return args.map(a => {
        if (a === null) return 'null';
        if (a === undefined) return 'undefined';
        if (typeof a === 'object') { try { return JSON.stringify(a, null, 2); } catch { return String(a); } }
        return String(a);
      }).join(' ');
    }
    const _log   = console.log;
    const _warn  = console.warn;
    const _error = console.error;
    const _info  = console.info;
    console.log   = (...a) => { addLine(fmt(...a), 'log');  _log(...a); };
    console.warn  = (...a) => { addLine(fmt(...a), 'warn'); _warn(...a); };
    console.error = (...a) => { addLine(fmt(...a), 'err');  _error(...a); };
    console.info  = (...a) => { addLine(fmt(...a), 'info'); _info(...a); };
    try {
      const ts = \`${safe}\`;
      const result = Babel.transform(ts, {
        presets: [['typescript', { allExtensions: true }]],
        filename: 'input.ts',
        plugins: []
      });
      const AsyncFunction = Object.getPrototypeOf(async function(){}).constructor;
      const fn = new AsyncFunction(result.code);
      fn().catch(e => addLine('Runtime error: ' + e.message, 'err'));
    } catch(e) {
      addLine('Compile error: ' + e.message, 'err');
    }
    </script></body></html>`
  }

  // ── React runner ──────────────────────────────────────────────────
  _runReact(code) {
    if (!this.hasPreviewTarget) return
    // React 19 no longer ships UMD builds, so the preview loads the official
    // CommonJS *development* builds from jsDelivr (pinned versions) and links
    // them with a tiny require() shim. Learner code is compiled by Babel
    // (automatic JSX runtime + ES modules -> CommonJS), so it can use real
    // imports (import { useState } from "react") or the React/ReactDOM globals.
    const useBootstrap = /className=/.test(code)
    const bootstrapCss = useBootstrap
      ? '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">\n  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">'
      : ''
    const src = JSON.stringify(code).replace(/</g, "\\u003c")
    const html = `<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  ${bootstrapCss}
  <style>
    *{box-sizing:border-box}body{margin:0}
    #__rx-log{position:fixed;left:0;right:0;bottom:0;max-height:40%;overflow:auto;margin:0;padding:6px 12px;
      background:#0a0a18;color:#a3e635;font:12px/1.55 'Fira Code',monospace;border-top:2px solid #334155;
      white-space:pre-wrap;word-break:break-word;display:none;z-index:2147483647}
    #__rx-log .e{color:#f87171}#__rx-log .w{color:#fbbf24}#__rx-log .i{color:#60a5fa}
  </style>
</head>
<body>
  <div id="root"><p style="font:14px sans-serif;color:#6b7280;padding:1rem">Loading React 19...</p></div>
  <pre id="__rx-log"></pre>
  <script src="https://cdn.jsdelivr.net/npm/@babel/standalone@7.29.9/babel.min.js"></script>
  ${useBootstrap ? '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>' : ''}
  <script>
  (function () {
    var SRC = ${src};
    var CDN = "https://cdn.jsdelivr.net/npm/";
    var FILES = {
      "react": "react@19.3.0/cjs/react.development.js",
      "react/jsx-runtime": "react@19.3.0/cjs/react-jsx-runtime.development.js",
      "react/jsx-dev-runtime": "react@19.3.0/cjs/react-jsx-dev-runtime.development.js",
      "scheduler": "scheduler@0.28.0/cjs/scheduler.development.js",
      "react-dom": "react-dom@19.3.0/cjs/react-dom.development.js",
      "react-dom/client": "react-dom@19.3.0/cjs/react-dom-client.development.js"
    };
    var logEl = document.getElementById("__rx-log");
    function str(v) {
      if (v === undefined) return "undefined";
      if (v === null) return "null";
      if (v instanceof Error) return v.name + ": " + v.message;
      if (typeof v === "function") return "function " + (v.name || "anonymous");
      if (typeof v === "object") { try { return JSON.stringify(v); } catch (e) { return String(v); } }
      return String(v);
    }
    function fmt(args) {
      args = Array.prototype.slice.call(args);
      if (!args.length) return "";
      var first = args.shift();
      if (typeof first === "string" && /%[csdioOf%]/.test(first)) {
        first = first.replace(/%([csdioOf%])/g, function (m, t) {
          if (t === "%") return "%";
          if (!args.length) return m;
          var v = args.shift();
          return t === "c" ? "" : str(v);
        });
      } else {
        first = str(first);
      }
      return [first].concat(args.map(str)).join(" ");
    }
    function show(cls, args) {
      var text = fmt(args);
      if (text.indexOf("react.dev/link/react-devtools") !== -1) return;
      logEl.style.display = "block";
      var d = document.createElement("div");
      d.className = cls;
      d.textContent = (cls === "e" ? "[error] " : cls === "w" ? "[warn] " : "> ") + text;
      logEl.appendChild(d);
      logEl.scrollTop = logEl.scrollHeight;
    }
    [["log", ""], ["info", "i"], ["warn", "w"], ["error", "e"]].forEach(function (p) {
      var orig = console[p[0]].bind(console);
      console[p[0]] = function () { show(p[1], arguments); orig.apply(null, arguments); };
    });
    window.addEventListener("error", function (e) { show("e", [e.error || e.message]); });
    window.addEventListener("unhandledrejection", function (e) { show("e", ["Unhandled promise rejection:", e.reason]); });

    var sources = {}, cache = {};
    var process = { env: { NODE_ENV: "development" } };
    window.process = window.process || process;
    function req(name) {
      if (cache[name]) return cache[name].exports;
      if (!(name in sources)) {
        throw new Error('Cannot import "' + name + '" in this editor. Available: react, react-dom, react-dom/client.');
      }
      var module = { exports: {} };
      cache[name] = module;
      new Function("module", "exports", "require", "process",
        sources[name] + "\\n//# sourceURL=" + CDN + FILES[name])(module, module.exports, req, process);
      return module.exports;
    }
    Promise.all(Object.keys(FILES).map(function (k) {
      return fetch(CDN + FILES[k]).then(function (r) {
        if (!r.ok) throw new Error("HTTP " + r.status + " while loading " + FILES[k]);
        return r.text();
      }).then(function (t) { sources[k] = t; });
    })).then(function () {
      window.React = req("react");
      window.ReactDOM = Object.assign({}, req("react-dom"), req("react-dom/client"));
      var out;
      try {
        out = Babel.transform(SRC, {
          filename: "App.jsx",
          sourceType: "module",
          presets: [["react", { runtime: "automatic", development: true }]],
          plugins: ["transform-modules-commonjs"]
        }).code;
      } catch (err) {
        document.getElementById("root").innerHTML = "";
        show("e", ["Syntax error: " + err.message]);
        return;
      }
      document.getElementById("root").innerHTML = "";
      var mod = { exports: {} };
      new Function("require", "module", "exports", out + "\\n//# sourceURL=App.jsx")(req, mod, mod.exports);
    }).catch(function (err) { show("e", [err]); });
  })();
  </script>
</body>
</html>`
    this.previewTarget.srcdoc = html
  }

  _clearConsole() {
    if (this.hasConsoleTarget) this.consoleTarget.innerHTML = ""
  }

  _unescape(str) {
    const d = document.createElement("div")
    d.innerHTML = str
    return d.textContent
  }
}

// ── Expression helpers (module-level) ────────────────────────────

function _splitArgs(str) {
  const args  = []
  let   depth = 0, cur = "", inStr = false, strChar = ""
  for (const ch of str) {
    if (inStr) {
      cur += ch
      if (ch === strChar) inStr = false
    } else if (ch === '"' || ch === "'") {
      inStr = true; strChar = ch; cur += ch
    } else if ("([{".includes(ch)) { depth++; cur += ch }
    else if (")]}".includes(ch))   { depth--; cur += ch }
    else if (ch === "," && depth === 0) { args.push(cur.trim()); cur = "" }
    else { cur += ch }
  }
  if (cur.trim()) args.push(cur.trim())
  return args
}

function _splitArith(expr) {
  // Careful: don't split on ** before *
  const ops = ["**", "//", "+", "-", "*", "/", "%"]
  for (const op of ops) {
    const idx = _findOpIndex(expr, op)
    if (idx !== -1) {
      return [expr.slice(0, idx).trim(), op, expr.slice(idx + op.length).trim()]
    }
  }
  return null
}

function _findOpIndex(expr, op) {
  let depth = 0, inStr = false, strChar = ""
  for (let i = op.length === 2 ? 1 : 0; i < expr.length - op.length + 1; i++) {
    const ch = expr[i]
    if (inStr) { if (ch === strChar) inStr = false; continue }
    if (ch === '"' || ch === "'") { inStr = true; strChar = ch; continue }
    if ("([{".includes(ch)) { depth++; continue }
    if (")]}".includes(ch)) { depth--; continue }
    if (depth === 0 && expr.slice(i, i + op.length) === op) {
      // Avoid matching ** when looking for *
      if (op === "*" && (expr[i+1] === "*" || (i > 0 && expr[i-1] === "*"))) continue
      // Avoid matching // when looking for /
      if (op === "/" && (expr[i+1] === "/" || (i > 0 && expr[i-1] === "/"))) continue
      // Avoid matching += etc
      if ((op === "+" || op === "-") && expr[i+1] === "=") continue
      if (i > 0) return i
    }
  }
  return -1
}
