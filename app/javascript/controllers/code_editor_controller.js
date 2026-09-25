import { Controller } from "@hotwired/stimulus"

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
    if (this.mode === "html")            this._runHtml(code)
    else if (this.mode === "javascript") this._runJs(code)
    else if (this.mode === "python")     this._runPython(code)
    else if (this.mode === "ruby")       this._runRuby(code)
    else if (this.mode === "java")       this._runJava(code)
    else if (this.mode === "php")        this._runPhp(code)
    else if (this.mode === "sql")        this._runSql(code)
    else if (this.mode === "mysql")      this._runMySql(code)
    else if (this.mode === "postgresql") this._runPostgresql(code)
    else if (this.mode === "react")       this._runReact(code)
    else if (this.mode === "pandas")      this._runPandas(code)
    else if (this.mode === "numpy")       this._runNumpy(code)
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

  // ── Python: enhanced simulator ───────────────────────────────────
  _runPython(code) {
    if (!this.hasPreviewTarget) return
    const lines   = code.split("\n")
    const output  = []
    const env     = {}
    let   i       = 0

    const fmt = (v) => {
      if (v === null || v === undefined) return "None"
      if (typeof v === "boolean")  return v ? "True" : "False"
      if (typeof v === "string")   return v
      if (Array.isArray(v))        return "[" + v.map(x => _repr(x)).join(", ") + "]"
      if (typeof v === "object") {
        const pairs = Object.entries(v).map(([k,val]) => `'${k}': ${_repr(val)}`)
        return "{" + pairs.join(", ") + "}"
      }
      return String(v)
    }

    const _repr = (v) => {
      if (typeof v === "string")  return "'" + v + "'"
      return fmt(v)
    }

    const evalExpr = (expr, localEnv) => {
      const e = { ...env, ...localEnv }
      expr = expr.trim()

      // f-string
      const fMatch = expr.match(/^f["'](.*)["']$/)
      if (fMatch) {
        return fMatch[1].replace(/\{([^}]+)\}/g, (_, inner) => {
          const colonIdx = inner.indexOf(":")
          if (colonIdx > -1) {
            const varPart    = inner.slice(0, colonIdx).trim()
            const fmtSpec    = inner.slice(colonIdx + 1).trim()
            const val        = evalExpr(varPart, e)
            const dpMatch    = fmtSpec.match(/\.(\d+)f/)
            if (dpMatch) return parseFloat(val).toFixed(parseInt(dpMatch[1]))
            return fmt(val)
          }
          return fmt(evalExpr(inner.trim(), e))
        })
      }

      // Strings
      if (/^".*"$/.test(expr))  return expr.slice(1, -1)
      if (/^'.*'$/.test(expr))  return expr.slice(1, -1)
      if (/^"""[\s\S]*"""$/.test(expr)) return expr.slice(3, -3)

      // Bool / None
      if (expr === "True")  return true
      if (expr === "False") return false
      if (expr === "None")  return null

      // Number
      if (/^-?\d+$/.test(expr))     return parseInt(expr, 10)
      if (/^-?\d+\.\d+$/.test(expr)) return parseFloat(expr)

      // List literal
      if (expr.startsWith("[") && expr.endsWith("]")) {
        const inner = expr.slice(1, -1).trim()
        if (!inner) return []
        return _splitArgs(inner).map(s => evalExpr(s.trim(), e))
      }

      // Dict literal
      if (expr.startsWith("{") && expr.endsWith("}")) {
        const inner = expr.slice(1, -1).trim()
        if (!inner) return {}
        const obj = {}
        _splitArgs(inner).forEach(pair => {
          const colonIdx = pair.indexOf(":")
          if (colonIdx > -1) {
            const k = evalExpr(pair.slice(0, colonIdx).trim(), e)
            const v = evalExpr(pair.slice(colonIdx + 1).trim(), e)
            obj[k] = v
          }
        })
        return obj
      }

      // Tuple (a, b)
      if (expr.startsWith("(") && expr.endsWith(")")) {
        const inner = expr.slice(1, -1).trim()
        if (!inner) return []
        return _splitArgs(inner).map(s => evalExpr(s.trim(), e))
      }

      // range(n) or range(a,b) or range(a,b,c)
      const rangeMatch = expr.match(/^range\((.+)\)$/)
      if (rangeMatch) {
        const args = _splitArgs(rangeMatch[1]).map(a => parseInt(evalExpr(a.trim(), e)))
        const [start = 0, stop, step = 1] = args.length === 1 ? [0, args[0]] : args
        const arr = []
        if (step > 0) for (let j = start; j < stop; j += step) arr.push(j)
        else          for (let j = start; j > stop; j += step) arr.push(j)
        return arr
      }

      // len()
      const lenMatch = expr.match(/^len\((.+)\)$/)
      if (lenMatch) {
        const v = evalExpr(lenMatch[1], e)
        return Array.isArray(v) ? v.length : (typeof v === "string" ? v.length : 0)
      }

      // str(), int(), float(), bool()
      const convMatch = expr.match(/^(str|int|float|bool|list|set)\((.+)\)$/)
      if (convMatch) {
        const v = evalExpr(convMatch[2], e)
        if (convMatch[1] === "str")   return String(v)
        if (convMatch[1] === "int")   return parseInt(v, 10)
        if (convMatch[1] === "float") return parseFloat(v)
        if (convMatch[1] === "bool")  return Boolean(v)
        if (convMatch[1] === "list")  return Array.isArray(v) ? v : [...v]
        if (convMatch[1] === "set")   return Array.isArray(v) ? [...new Set(v)] : v
        return v
      }

      // type()
      const typeMatch = expr.match(/^type\((.+)\)$/)
      if (typeMatch) {
        const v = evalExpr(typeMatch[1], e)
        if (v === null)           return "<class 'NoneType'>"
        if (typeof v === "boolean") return "<class 'bool'>"
        if (typeof v === "number") return Number.isInteger(v) ? "<class 'int'>" : "<class 'float'>"
        if (typeof v === "string") return "<class 'str'>"
        if (Array.isArray(v))     return "<class 'list'>"
        return "<class 'object'>"
      }

      // isinstance()
      const isinstMatch = expr.match(/^isinstance\((.+),\s*(.+)\)$/)
      if (isinstMatch) return true  // simplified

      // abs(), round(), max(), min(), sum()
      const mathMatch = expr.match(/^(abs|round|max|min|sum)\((.+)\)$/)
      if (mathMatch) {
        const [, fn, argsStr] = mathMatch
        const args = _splitArgs(argsStr).map(a => evalExpr(a.trim(), e))
        if (fn === "abs")   return Math.abs(args[0])
        if (fn === "round") return args.length > 1 ? parseFloat(args[0].toFixed(args[1])) : Math.round(args[0])
        if (fn === "max")   return Array.isArray(args[0]) ? Math.max(...args[0]) : Math.max(...args)
        if (fn === "min")   return Array.isArray(args[0]) ? Math.min(...args[0]) : Math.min(...args)
        if (fn === "sum")   return (Array.isArray(args[0]) ? args[0] : args).reduce((a, b) => a + b, 0)
      }

      // sorted()
      const sortedMatch = expr.match(/^sorted\(([^,)]+)(?:,\s*key=.+?)?(,\s*reverse=True)?\)$/)
      if (sortedMatch) {
        const arr = evalExpr(sortedMatch[1].trim(), e)
        if (!Array.isArray(arr)) return arr
        const rev  = !!sortedMatch[2]
        return [...arr].sort((a, b) => rev ? (b > a ? 1 : -1) : (a > b ? 1 : -1))
      }

      // zip() — simplified
      const zipMatch = expr.match(/^zip\((.+)\)$/)
      if (zipMatch) {
        const arrs = _splitArgs(zipMatch[1]).map(a => evalExpr(a.trim(), e))
        const len  = Math.min(...arrs.map(a => (Array.isArray(a) ? a.length : 0)))
        return Array.from({ length: len }, (_, j) => arrs.map(a => a[j]))
      }

      // enumerate()
      const enumMatch = expr.match(/^enumerate\((.+)\)$/)
      if (enumMatch) {
        const arr = evalExpr(enumMatch[1], e)
        return Array.isArray(arr) ? arr.map((x, j) => [j, x]) : []
      }

      // dict.items() / .keys() / .values()
      const dictMethodMatch = expr.match(/^(\w+)\.(items|keys|values)\(\)$/)
      if (dictMethodMatch) {
        const obj = e[dictMethodMatch[1]]
        if (typeof obj === "object" && !Array.isArray(obj) && obj !== null) {
          if (dictMethodMatch[2] === "items")  return Object.entries(obj)
          if (dictMethodMatch[2] === "keys")   return Object.keys(obj)
          if (dictMethodMatch[2] === "values") return Object.values(obj)
        }
        return []
      }

      // list method calls: .append / .pop / .sort / etc (return side-effecty value)
      const listMethodMatch = expr.match(/^(\w+)\.(append|pop|remove|sort|reverse|count|index)\(([^)]*)\)$/)
      if (listMethodMatch) {
        const [, varName, method, argStr] = listMethodMatch
        const arr = e[varName]
        if (!Array.isArray(arr)) return null
        const arg = argStr ? evalExpr(argStr.trim(), e) : undefined
        if (method === "append")  { arr.push(arg);  env[varName] = arr; return null }
        if (method === "pop")     { return arr.pop() }
        if (method === "remove")  { const idx = arr.indexOf(arg); if (idx > -1) arr.splice(idx,1); env[varName]=arr; return null }
        if (method === "sort")    { arr.sort((a,b) => a > b ? 1 : -1); env[varName]=arr; return null }
        if (method === "reverse") { arr.reverse(); env[varName]=arr; return null }
        if (method === "count")   return arr.filter(x => x === arg).length
        if (method === "index")   return arr.indexOf(arg)
      }

      // string method calls
      const strMethodMatch = expr.match(/^(.+)\.(upper|lower|strip|split|replace|startswith|endswith|capitalize|title|join|format|isdigit|isalpha)\(([^)]*)\)$/)
      if (strMethodMatch) {
        const [, base, method, argStr] = strMethodMatch
        const str = fmt(evalExpr(base, e))
        const args = argStr ? _splitArgs(argStr).map(a => evalExpr(a.trim(), e)) : []
        if (method === "upper")      return str.toUpperCase()
        if (method === "lower")      return str.toLowerCase()
        if (method === "strip")      return str.trim()
        if (method === "capitalize") return str[0].toUpperCase() + str.slice(1).toLowerCase()
        if (method === "title")      return str.replace(/\b\w/g, c => c.toUpperCase())
        if (method === "split")      return str.split(args[0] !== undefined ? String(args[0]) : " ")
        if (method === "replace")    return str.replace(new RegExp(String(args[0]).replace(/[.*+?^${}()|[\]\\]/g,'\\$&'), "g"), String(args[1]))
        if (method === "startswith") return str.startsWith(String(args[0]))
        if (method === "endswith")   return str.endsWith(String(args[0]))
        if (method === "join")       return (Array.isArray(args[0]) ? args[0] : []).join(str)
        if (method === "isdigit")    return /^\d+$/.test(str)
        if (method === "isalpha")    return /^[a-zA-Z]+$/.test(str)
      }

      // Arithmetic  +  -  *  //  %  **  /
      const arithParts = _splitArith(expr)
      if (arithParts) {
        const [left, op, right] = arithParts
        const a = evalExpr(left, e)
        const b = evalExpr(right, e)
        if (op === "+")  return (typeof a === "string" || typeof b === "string") ? String(a) + String(b) : a + b
        if (op === "-")  return a - b
        if (op === "*")  return (typeof a === "string") ? a.repeat(b) : a * b
        if (op === "/")  return a / b
        if (op === "//") return Math.floor(a / b)
        if (op === "%")  return ((a % b) + b) % b
        if (op === "**") return Math.pow(a, b)
      }

      // Comparison / boolean
      if (expr.includes(">=")) {
        const [l, r] = expr.split(">=").map(s => evalExpr(s.trim(), e))
        return l >= r
      }
      if (expr.includes("<=")) {
        const [l, r] = expr.split("<=").map(s => evalExpr(s.trim(), e))
        return l <= r
      }
      if (expr.includes("!=")) {
        const [l, r] = expr.split("!=").map(s => evalExpr(s.trim(), e))
        return l !== r
      }
      if (expr.includes("==")) {
        const [l, r] = expr.split("==").map(s => evalExpr(s.trim(), e))
        return l === r
      }
      if (/\s+and\s+/.test(expr)) {
        const [l, r] = expr.split(/\s+and\s+/).map(s => evalExpr(s.trim(), e))
        return l && r
      }
      if (/\s+or\s+/.test(expr)) {
        const [l, r] = expr.split(/\s+or\s+/).map(s => evalExpr(s.trim(), e))
        return l || r
      }
      if (/^not\s+/.test(expr)) {
        return !evalExpr(expr.replace(/^not\s+/, ""), e)
      }
      if (/ in /.test(expr) && !expr.startsWith("for")) {
        const match = expr.match(/^(.+?)\s+in\s+(.+)$/)
        if (match) {
          const item = evalExpr(match[1].trim(), e)
          const coll = evalExpr(match[2].trim(), e)
          return Array.isArray(coll) ? coll.includes(item) : String(coll).includes(String(item))
        }
      }

      // Subscript access obj[key]
      const subscriptMatch = expr.match(/^(\w+)\[(.+)\]$/)
      if (subscriptMatch) {
        const obj = e[subscriptMatch[1]]
        const key = evalExpr(subscriptMatch[2], e)
        if (Array.isArray(obj)) {
          const idx = key < 0 ? obj.length + key : key
          return obj[idx]
        }
        if (typeof obj === "object" && obj !== null) return obj[key]
        if (typeof obj === "string") return obj[key < 0 ? obj.length + key : key]
      }

      // Slice obj[a:b]
      const sliceMatch = expr.match(/^(\w+)\[(-?\d*):(-?\d*)\]$/)
      if (sliceMatch) {
        const obj  = e[sliceMatch[1]]
        const arr  = Array.isArray(obj) ? obj : (typeof obj === "string" ? obj.split("") : [])
        const start = sliceMatch[2] === "" ? 0 : parseInt(sliceMatch[2])
        const end   = sliceMatch[3] === "" ? arr.length : parseInt(sliceMatch[3])
        const result = arr.slice(start < 0 ? arr.length + start : start, end < 0 ? arr.length + end : end)
        return typeof obj === "string" ? result.join("") : result
      }

      // Attribute access obj.attr
      const attrMatch = expr.match(/^(\w+)\.(\w+)$/)
      if (attrMatch && e[attrMatch[1]] !== undefined) {
        const obj  = e[attrMatch[1]]
        const attr = attrMatch[2]
        if (attr === "length" || attr === "size") return Array.isArray(obj) ? obj.length : (typeof obj === "string" ? obj.length : 0)
        if (typeof obj === "object" && obj !== null) return obj[attr]
      }

      // Function call from env
      const fnCallMatch = expr.match(/^(\w+)\(([^)]*)\)$/)
      if (fnCallMatch && typeof e[fnCallMatch[1]] === "function") {
        const fn   = e[fnCallMatch[1]]
        const args = fnCallMatch[2] ? _splitArgs(fnCallMatch[2]).map(a => evalExpr(a.trim(), e)) : []
        return fn(...args)
      }

      // Variable lookup
      if (/^\w+$/.test(expr) && e[expr] !== undefined) return e[expr]

      return expr // fallback
    }

    // ── Main interpreter loop ─────────────────────────────────────
    try {
      while (i < lines.length) {
        const raw     = lines[i]
        const trimmed = raw.trim()
        i++

        if (!trimmed || trimmed.startsWith("#")) continue

        // if / elif / else block
        if (/^if\s+.+:$/.test(trimmed) || /^elif\s+.+:$/.test(trimmed) || /^else\s*:$/.test(trimmed)) {
          const blocks  = _collectIfElse(lines, i - 1)
          i = blocks.nextLine
          let executed  = false
          for (const block of blocks.branches) {
            if (!executed) {
              const cond = block.condition === null || block.condition === "else"
                ? true
                : evalExpr(block.condition, {})
              if (cond) {
                executed = true
                _runBlock(block.body, env, evalExpr, fmt, output)
              }
            }
          }
          continue
        }

        // for loop
        const forMatch = trimmed.match(/^for\s+(.+)\s+in\s+(.+)\s*:$/)
        if (forMatch) {
          const body     = _collectBody(lines, i)
          i = body.nextLine
          const iterable = evalExpr(forMatch[2].trim(), {})
          const varPart  = forMatch[1].trim()
          const items    = Array.isArray(iterable) ? iterable : []

          for (const item of items) {
            // Tuple unpacking: for a, b in ...
            if (varPart.includes(",")) {
              const varNames = varPart.split(",").map(v => v.trim())
              if (Array.isArray(item)) {
                varNames.forEach((vn, vi) => { env[vn] = item[vi] })
              } else {
                env[varNames[0]] = item
              }
            } else {
              env[varPart] = item
            }
            _runBlock(body.lines, env, evalExpr, fmt, output)
          }
          continue
        }

        // while loop (limited iterations)
        const whileMatch = trimmed.match(/^while\s+(.+)\s*:$/)
        if (whileMatch) {
          const body = _collectBody(lines, i)
          i = body.nextLine
          let guard = 0
          while (evalExpr(whileMatch[1].trim(), {}) && guard++ < 200) {
            _runBlock(body.lines, env, evalExpr, fmt, output)
          }
          continue
        }

        // def — store as callable
        const defMatch = trimmed.match(/^def\s+(\w+)\s*\(([^)]*)\)\s*:$/)
        if (defMatch) {
          const fnName   = defMatch[1]
          const paramStr = defMatch[2]
          const body     = _collectBody(lines, i)
          i = body.nextLine
          const params   = paramStr ? paramStr.split(",").map(p => p.trim().split("=")[0].trim()) : []
          const defaults = {}
          if (paramStr) {
            paramStr.split(",").forEach(p => {
              const parts = p.trim().split("=")
              if (parts.length > 1) defaults[parts[0].trim()] = evalExpr(parts[1].trim(), {})
            })
          }
          env[fnName] = (...args) => {
            const localEnv = { ...env, ...defaults }
            params.forEach((p, pi) => { if (args[pi] !== undefined) localEnv[p] = args[pi] })
            let result = undefined
            for (const bl of body.lines) {
              const bt = bl.trim()
              if (!bt || bt.startsWith("#")) continue
              const retMatch = bt.match(/^return\s+(.+)$/)
              if (retMatch) { result = evalExpr(retMatch[1], localEnv); break }
              // assignments inside function
              const assignMatch = bt.match(/^(\w+)\s*=\s*(.+)$/)
              if (assignMatch && !bt.includes("==")) {
                localEnv[assignMatch[1]] = evalExpr(assignMatch[2].trim(), localEnv)
              }
            }
            return result
          }
          continue
        }

        // class — minimal support: store empty object
        if (/^class\s+\w+/.test(trimmed)) {
          const body = _collectBody(lines, i)
          i = body.nextLine
          continue
        }

        // print()
        const printMatch = trimmed.match(/^print\((.*)?\)$/)
        if (printMatch) {
          const argsStr = printMatch[1] || ""
          let sep = " ", endStr = "\n"
          // Handle sep= and end= kwargs
          let cleanArgs = argsStr
            .replace(/,?\s*sep\s*=\s*["'](.*)["']/, (_, s) => { sep = s; return "" })
            .replace(/,?\s*end\s*=\s*["'](.*)["']/, (_, e) => { endStr = e; return "" })
          const parts = cleanArgs ? _splitArgs(cleanArgs).map(a => {
            const v = evalExpr(a.trim(), {})
            return fmt(v)
          }) : []
          output.push(parts.join(sep))
          continue
        }

        // Variable assignment (simple and augmented)
        const augMatch = trimmed.match(/^(\w+)\s*(\+=|-=|\*=|\/=|\/\/=|%=|\*\*=)\s*(.+)$/)
        if (augMatch) {
          const [, vn, op, rhs] = augMatch
          const cur = env[vn] ?? 0
          const val = evalExpr(rhs, {})
          if (op === "+=")  env[vn] = (typeof cur === "string" || typeof val === "string") ? String(cur) + String(val) : cur + val
          if (op === "-=")  env[vn] = cur - val
          if (op === "*=")  env[vn] = cur * val
          if (op === "/=")  env[vn] = cur / val
          if (op === "//=") env[vn] = Math.floor(cur / val)
          if (op === "%=")  env[vn] = cur % val
          if (op === "**=") env[vn] = Math.pow(cur, val)
          continue
        }

        // Multi-target assignment: a, b = val, val  OR  a = b = val
        const multiAssign = trimmed.match(/^([\w,\s]+)\s*=\s*(.+)$/)
        if (multiAssign && !trimmed.includes("==") && !trimmed.includes("!=") && !trimmed.includes("<=") && !trimmed.includes(">=")) {
          const lhs = multiAssign[1].trim()
          const rhs = multiAssign[2].trim()
          if (lhs.includes(",")) {
            const vars = lhs.split(",").map(v => v.trim())
            const vals = rhs.startsWith("(") || rhs.includes(",")
              ? _splitArgs(rhs.replace(/^\(|\)$/g, "")).map(v => evalExpr(v.trim(), {}))
              : [evalExpr(rhs, {})]
            vars.forEach((v, vi) => { env[v] = vals[vi] ?? null })
          } else {
            env[lhs] = evalExpr(rhs, {})
          }
          continue
        }

        // Method calls as statements (e.g. list.append(...))
        const methodStmt = trimmed.match(/^(\w+)\.(\w+)\(([^)]*)\)$/)
        if (methodStmt) {
          evalExpr(trimmed, {})
          continue
        }

        // Standalone function calls (e.g. validate_age(25))
        const funcStmt = trimmed.match(/^(\w+)\(([^)]*)\)$/)
        if (funcStmt && env[funcStmt[1]] && typeof env[funcStmt[1]] === "function") {
          env[funcStmt[1]](..._splitArgs(funcStmt[2]).map(a => evalExpr(a.trim(), {})))
          continue
        }
      }
    } catch (e) {
      output.push(`Error: ${e.message}`)
    }

    // Render output in iframe
    const html = `<!DOCTYPE html>
<html>
<head>
<style>
  body { margin:0; background:#0a0a18; font-family:'Fira Code',monospace; font-size:13px; }
  #out { padding:14px 16px; }
  .line { color:#a3e635; margin-bottom:3px; white-space:pre-wrap; }
  .err  { color:#f87171; }
  .prompt { color:#4b5563; user-select:none; }
</style>
</head>
<body><div id="out">${
  output.length
    ? output.map(l =>
        `<div class="line ${l.startsWith("Error:") ? "err" : ""}"><span class="prompt">&gt; </span>${l.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;")}</div>`
      ).join("")
    : '<div class="line" style="color:#4b5563;font-style:italic">(no output)</div>'
}</div></body></html>`
    this.previewTarget.srcdoc = html
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

  // ── PHP simulator ─────────────────────────────────────────────────
  _runPhp(code) {
    if (!this.hasPreviewTarget) return

    // Strip PHP tags and extract body
    let src = code
      .replace(/^<\?php\s*/i, "")
      .replace(/\?>\s*$/i, "")
      .replace(/<\?=\s*/g, 'echo ')
      .trim()

    const lines  = src.split("\n")
    const output = []
    const env    = {}   // variables stored WITHOUT $ prefix
    let   i      = 0

    // ── Helpers ────────────────────────────────────────────────────
    const phpStr = (v) => {
      if (v === null || v === undefined) return ""
      if (typeof v === "boolean") return v ? "1" : ""
      if (Array.isArray(v)) return "Array"
      if (typeof v === "object") return "Array"
      return String(v)
    }

    const phpDump = (v) => {
      if (v === null) return "NULL"
      if (typeof v === "boolean") return v ? "bool(true)" : "bool(false)"
      if (typeof v === "number") return Number.isInteger(v) ? `int(${v})` : `float(${v})`
      if (typeof v === "string") return `string(${v.length}) "${v}"`
      if (Array.isArray(v)) return `array(${v.length}) { ... }`
      return String(v)
    }

    // Strip $ from variable name
    const varName = (s) => s.trim().replace(/^\$/, "")

    // Interpolate "$var" and "{$var}" in double-quoted strings
    const interpolate = (str) => {
      return str
        .replace(/\{?\$([a-zA-Z_]\w*)\}?/g, (_, name) => phpStr(env[name]))
        .replace(/\\n/g, "\n")
        .replace(/\\t/g, "\t")
        .replace(/\\\\/g, "\\")
    }

    // ── Expression evaluator ───────────────────────────────────────
    const evalPhp = (expr) => {
      expr = expr.trim()
      // Remove trailing semicolon
      expr = expr.replace(/;$/, "").trim()

      // null / true / false
      if (/^null$/i.test(expr)) return null
      if (/^true$/i.test(expr)) return true
      if (/^false$/i.test(expr)) return false

      // Integer
      if (/^-?\d+$/.test(expr)) return parseInt(expr, 10)
      // Float
      if (/^-?\d+\.\d+$/.test(expr)) return parseFloat(expr)

      // Double-quoted string with interpolation
      const dq = expr.match(/^"((?:[^"\\]|\\.)*)"$/)
      if (dq) return interpolate(dq[1])
      // Single-quoted string (no interpolation)
      const sq = expr.match(/^'([^']*)'$/)
      if (sq) return sq[1]

      // Heredoc (simplified): just skip, return ""
      if (/^<<</.test(expr)) return ""

      // PHP constants
      if (expr === "M_PI") return Math.PI
      if (expr === "PHP_EOL") return "\n"
      if (expr === "PHP_INT_MAX") return 2147483647

      // Array literal [] or array(...)
      if (expr.startsWith("[") && expr.endsWith("]")) {
        const inner = expr.slice(1, -1).trim()
        if (!inner) return []
        // Detect associative: "key" => val
        if (inner.includes("=>")) {
          const obj = {}
          _splitArgs(inner).forEach(pair => {
            const arrowIdx = pair.indexOf("=>")
            if (arrowIdx > -1) {
              const k = evalPhp(pair.slice(0, arrowIdx).trim())
              const v = evalPhp(pair.slice(arrowIdx + 2).trim())
              obj[String(k)] = v
            }
          })
          return obj
        }
        return _splitArgs(inner).map(a => evalPhp(a.trim()))
      }

      if (/^array\s*\(/.test(expr)) {
        const inner = expr.replace(/^array\s*\(/, "").replace(/\)$/, "").trim()
        if (!inner) return []
        if (inner.includes("=>")) {
          const obj = {}
          _splitArgs(inner).forEach(pair => {
            const arrowIdx = pair.indexOf("=>")
            if (arrowIdx > -1) {
              obj[String(evalPhp(pair.slice(0, arrowIdx).trim()))] = evalPhp(pair.slice(arrowIdx + 2).trim())
            }
          })
          return obj
        }
        return _splitArgs(inner).map(a => evalPhp(a.trim()))
      }

      // Variable: $name or $arr["key"] or $arr[0]
      const varM = expr.match(/^\$([a-zA-Z_]\w*)$/)
      if (varM) return env[varM[1]] ?? null

      const arrAccessM = expr.match(/^\$([a-zA-Z_]\w*)\[(.+)\]$/)
      if (arrAccessM) {
        const v = env[arrAccessM[1]]
        const k = evalPhp(arrAccessM[2])
        if (Array.isArray(v)) return v[typeof k === "number" && k < 0 ? v.length + k : k] ?? null
        if (typeof v === "object" && v !== null) return v[String(k)] ?? null
      }

      // $obj->method() or $obj->prop
      const objChainM = expr.match(/^\$([a-zA-Z_]\w*)->(\w+)\(([^)]*)\)$/)
      if (objChainM) {
        const [, name, method, argStr] = objChainM
        const obj  = env[name]
        const args = argStr ? _splitArgs(argStr).map(a => evalPhp(a.trim())) : []
        if (obj && typeof obj["__" + method] === "function") return obj["__" + method](...args)
        return null
      }

      // Built-in PHP functions
      const fnM = expr.match(/^([a-zA-Z_]\w*)\s*\((.*)?\)$/s)
      if (fnM) {
        const [, fn, argRaw] = fnM
        const args = argRaw ? _splitArgs(argRaw).map(a => evalPhp(a.trim())) : []
        const a0 = args[0], a1 = args[1], a2 = args[2]

        // Output functions
        if (fn === "var_dump") { output.push(phpDump(a0)); return null }
        if (fn === "print_r") {
          if (Array.isArray(a0)) {
            output.push("Array")
            output.push("(")
            a0.forEach((v, k) => output.push(`    [${k}] => ${phpStr(v)}`))
            output.push(")")
          } else if (typeof a0 === "object" && a0 !== null) {
            output.push("Array")
            output.push("(")
            Object.entries(a0).forEach(([k, v]) => output.push(`    [${k}] => ${phpStr(v)}`))
            output.push(")")
          } else {
            output.push(phpStr(a0))
          }
          return null
        }

        // String functions
        if (fn === "strlen")       return typeof a0 === "string" ? a0.length : 0
        if (fn === "strtoupper")   return phpStr(a0).toUpperCase()
        if (fn === "strtolower")   return phpStr(a0).toLowerCase()
        if (fn === "trim")         return phpStr(a0).trim()
        if (fn === "ltrim")        return phpStr(a0).trimStart()
        if (fn === "rtrim")        return phpStr(a0).trimEnd()
        if (fn === "ucfirst")      { const s = phpStr(a0); return s[0].toUpperCase() + s.slice(1) }
        if (fn === "lcfirst")      { const s = phpStr(a0); return s[0].toLowerCase() + s.slice(1) }
        if (fn === "ucwords")      return phpStr(a0).replace(/\b\w/g, c => c.toUpperCase())
        if (fn === "strrev")       return phpStr(a0).split("").reverse().join("")
        if (fn === "str_replace")  return phpStr(a2).split(phpStr(a0)).join(phpStr(a1))
        if (fn === "str_contains") return phpStr(a0).includes(phpStr(a1))
        if (fn === "str_starts_with") return phpStr(a0).startsWith(phpStr(a1))
        if (fn === "str_ends_with")   return phpStr(a0).endsWith(phpStr(a1))
        if (fn === "str_repeat")   return phpStr(a0).repeat(parseInt(a1) || 0)
        if (fn === "str_pad") {
          const s = phpStr(a0), len = parseInt(a1) || 0, pad = a2 !== undefined ? phpStr(a2) : " "
          return s.length >= len ? s : s + pad.repeat(Math.ceil((len - s.length) / pad.length)).slice(0, len - s.length)
        }
        if (fn === "str_word_count") return phpStr(a0).trim().split(/\s+/).filter(Boolean).length
        if (fn === "substr")       { const s = phpStr(a0); const st = parseInt(a1)||0; return a2 !== undefined ? s.slice(st, st + parseInt(a2)) : s.slice(st) }
        if (fn === "strpos")       { const idx = phpStr(a0).indexOf(phpStr(a1)); return idx === -1 ? false : idx }
        if (fn === "strrpos")      { const idx = phpStr(a0).lastIndexOf(phpStr(a1)); return idx === -1 ? false : idx }
        if (fn === "sprintf") {
          let fmt = phpStr(a0), idx2 = 1
          fmt = fmt.replace(/%[-\d]*\.?\d*[sdf%]/g, spec => {
            if (spec === "%%") return "%"
            const val = args[idx2++]
            const dpM = spec.match(/\.(\d+)f/)
            if (dpM) return parseFloat(phpStr(val)).toFixed(parseInt(dpM[1]))
            if (spec.includes("d")) return String(parseInt(phpStr(val)) || 0)
            if (spec.includes("s")) {
              const wM = spec.match(/%(-)?(\d+)s/)
              if (wM) { const w = parseInt(wM[2]); return wM[1] ? phpStr(val).padEnd(w) : phpStr(val).padStart(w) }
              return phpStr(val)
            }
            return phpStr(val)
          })
          return fmt
        }
        if (fn === "number_format") {
          const n = parseFloat(a0) || 0, dec = parseInt(a1) || 0
          return n.toFixed(dec).replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        }
        if (fn === "explode")      return phpStr(a0).length === 0 ? [phpStr(a1)] : phpStr(a1).split(phpStr(a0))
        if (fn === "implode" || fn === "join") {
          const sep = phpStr(a0)
          const arr = Array.isArray(a1) ? a1 : (typeof a1 === "object" ? Object.values(a1) : [])
          return arr.map(phpStr).join(sep)
        }

        // Array functions
        if (fn === "count" || fn === "sizeof") return Array.isArray(a0) ? a0.length : (typeof a0 === "object" ? Object.keys(a0).length : 0)
        if (fn === "array_push")   { if (Array.isArray(a0)) { a0.push(a1); return a0.length } return null }
        if (fn === "array_pop")    return Array.isArray(a0) ? a0.pop() : null
        if (fn === "array_shift")  return Array.isArray(a0) ? a0.shift() : null
        if (fn === "array_unshift"){ if (Array.isArray(a0)) { a0.unshift(a1); return a0.length } return null }
        if (fn === "in_array")     return Array.isArray(a1) ? a1.some(x => String(x) === String(a0)) : false
        if (fn === "array_search") { if (!Array.isArray(a1)) return false; const idx3 = a1.findIndex(x => String(x) === String(a0)); return idx3 === -1 ? false : idx3 }
        if (fn === "array_keys")   return typeof a0 === "object" && !Array.isArray(a0) ? Object.keys(a0) : (Array.isArray(a0) ? a0.map((_, k) => k) : [])
        if (fn === "array_values") return Array.isArray(a0) ? a0 : (typeof a0 === "object" ? Object.values(a0) : [])
        if (fn === "array_unique") return Array.isArray(a0) ? [...new Set(a0.map(String))].map(s => { const n = parseFloat(s); return isNaN(n) || String(n) !== s ? s : n }) : a0
        if (fn === "array_reverse") return Array.isArray(a0) ? [...a0].reverse() : a0
        if (fn === "array_merge")  return Array.isArray(a0) && Array.isArray(a1) ? [...a0, ...a1] : { ...a0, ...a1 }
        if (fn === "array_sum")    return (Array.isArray(a0) ? a0 : Object.values(a0 || {})).reduce((s, v) => s + (parseFloat(phpStr(v)) || 0), 0)
        if (fn === "array_column") {
          if (!Array.isArray(a0)) return []
          return a0.map(row => typeof row === "object" ? row[phpStr(a1)] : row)
        }
        if (fn === "sort" || fn === "rsort") {
          if (Array.isArray(a0)) {
            a0.sort((x, y) => fn === "sort" ? (phpStr(x) > phpStr(y) ? 1 : -1) : (phpStr(x) < phpStr(y) ? 1 : -1))
          }
          return true
        }
        if (fn === "usort") {
          // Simplified: sort by natural order
          if (Array.isArray(a0)) a0.sort((x, y) => x > y ? 1 : -1)
          return true
        }
        if (fn === "array_map") {
          const fnObj = env[typeof a0 === "string" ? a0.replace(/['"]/g, "") : ""]
          const arr   = Array.isArray(a1) ? a1 : []
          return arr.map(v => typeof fnObj === "function" ? fnObj(v) : v)
        }
        if (fn === "array_filter") {
          const arr2 = Array.isArray(a0) ? a0 : []
          return arr2.filter(v => v !== null && v !== false && v !== "" && v !== 0)
        }
        if (fn === "array_reduce") {
          if (!Array.isArray(a0)) return a2
          return a0.reduce((carry, item) => carry + (typeof item === "number" ? item : 0), parseFloat(phpStr(a2)) || 0)
        }
        if (fn === "array_slice")  return Array.isArray(a0) ? a0.slice(parseInt(a1)||0, a2 !== undefined ? (parseInt(a1)||0) + parseInt(a2) : undefined) : []
        if (fn === "array_chunk")  { const sz = parseInt(a1)||1; const res = []; for (let j=0;j<(Array.isArray(a0)?a0:[]).length;j+=sz) res.push(a0.slice(j,j+sz)); return res }

        // Math functions
        if (fn === "abs")     return Math.abs(parseFloat(phpStr(a0)) || 0)
        if (fn === "ceil")    return Math.ceil(parseFloat(phpStr(a0)) || 0)
        if (fn === "floor")   return Math.floor(parseFloat(phpStr(a0)) || 0)
        if (fn === "round")   { const n = parseFloat(phpStr(a0)) || 0; const dp = parseInt(phpStr(a1)) || 0; return parseFloat(n.toFixed(dp)) }
        if (fn === "sqrt")    return Math.sqrt(parseFloat(phpStr(a0)) || 0)
        if (fn === "pow")     return Math.pow(parseFloat(phpStr(a0)) || 0, parseFloat(phpStr(a1)) || 0)
        if (fn === "max")     { const vals = args.length === 1 && Array.isArray(a0) ? a0 : args; return Math.max(...vals.map(v => parseFloat(phpStr(v)))) }
        if (fn === "min")     { const vals = args.length === 1 && Array.isArray(a0) ? a0 : args; return Math.min(...vals.map(v => parseFloat(phpStr(v)))) }
        if (fn === "intdiv")  return Math.trunc((parseFloat(phpStr(a0)) || 0) / (parseFloat(phpStr(a1)) || 1))
        if (fn === "fmod")    return (parseFloat(phpStr(a0)) || 0) % (parseFloat(phpStr(a1)) || 1)
        if (fn === "rand")    return Math.floor(Math.random() * ((parseInt(phpStr(a1))||10) - (parseInt(phpStr(a0))||1) + 1)) + (parseInt(phpStr(a0))||1)
        if (fn === "pi")      return Math.PI

        // Type functions
        if (fn === "gettype") {
          const v = a0
          if (v === null) return "NULL"
          if (typeof v === "boolean") return "boolean"
          if (typeof v === "number") return Number.isInteger(v) ? "integer" : "double"
          if (typeof v === "string") return "string"
          if (Array.isArray(v) || typeof v === "object") return "array"
          return "unknown"
        }
        if (fn === "is_int" || fn === "is_integer") return Number.isInteger(a0)
        if (fn === "is_float" || fn === "is_double") return typeof a0 === "number" && !Number.isInteger(a0)
        if (fn === "is_string") return typeof a0 === "string"
        if (fn === "is_bool")   return typeof a0 === "boolean"
        if (fn === "is_array")  return Array.isArray(a0) || (typeof a0 === "object" && a0 !== null)
        if (fn === "is_null")   return a0 === null
        if (fn === "isset")     return a0 !== null && a0 !== undefined
        if (fn === "empty")     return !a0 || a0 === "" || a0 === 0 || a0 === "0" || (Array.isArray(a0) && a0.length === 0)

        // Cast-like functions
        if (fn === "intval")    return parseInt(phpStr(a0), 10) || 0
        if (fn === "floatval" || fn === "doubleval") return parseFloat(phpStr(a0)) || 0.0
        if (fn === "strval")    return phpStr(a0)
        if (fn === "boolval")   return Boolean(a0)

        // Date functions (simplified)
        if (fn === "time")      return Math.floor(Date.now() / 1000)
        if (fn === "date") {
          const fmt = phpStr(a0)
          const d   = a1 ? new Date(parseInt(phpStr(a1)) * 1000) : new Date()
          const pad = n => String(n).padStart(2, "0")
          const days   = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
          const daysS  = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"]
          const months = ["January","February","March","April","May","June","July","August","September","October","November","December"]
          const monthsS= ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
          return fmt.replace(/[YmdHisDlNFMj]/g, c => {
            if (c === "Y") return d.getFullYear()
            if (c === "m") return pad(d.getMonth() + 1)
            if (c === "d") return pad(d.getDate())
            if (c === "H") return pad(d.getHours())
            if (c === "i") return pad(d.getMinutes())
            if (c === "s") return pad(d.getSeconds())
            if (c === "D") return daysS[d.getDay()]
            if (c === "l") return days[d.getDay()]
            if (c === "N") return d.getDay() === 0 ? 7 : d.getDay()
            if (c === "F") return months[d.getMonth()]
            if (c === "M") return monthsS[d.getMonth()]
            if (c === "j") return d.getDate()
            return c
          })
        }
        if (fn === "mktime") {
          const [h=0,min=0,sec=0,mo=1,day=1,yr=new Date().getFullYear()] = args.map(a => parseInt(phpStr(a))||0)
          return Math.floor(new Date(yr, mo-1, day, h, min, sec).getTime() / 1000)
        }
        if (fn === "strtotime") {
          const str = phpStr(a0)
          const relM = str.match(/^([+-]?\d+)\s+(day|week|month|year)s?$/)
          if (relM) {
            const d2 = new Date()
            const n  = parseInt(relM[1])
            const u  = relM[2]
            if (u === "day")   d2.setDate(d2.getDate() + n)
            if (u === "week")  d2.setDate(d2.getDate() + n * 7)
            if (u === "month") d2.setMonth(d2.getMonth() + n)
            if (u === "year")  d2.setFullYear(d2.getFullYear() + n)
            return Math.floor(d2.getTime() / 1000)
          }
          const ts = Date.parse(str)
          return isNaN(ts) ? false : Math.floor(ts / 1000)
        }

        // Class instantiation
        if (fn === "get_class") return a0?.__class || "object"

        // User-defined functions
        if (env["__fn_" + fn]) return env["__fn_" + fn](...args)
      }

      // Ternary
      const ternM = expr.match(/^(.+?)\s*\?\s*(.+?)\s*:\s*(.+)$/)
      if (ternM) return evalPhp(ternM[1]) ? evalPhp(ternM[2]) : evalPhp(ternM[3])

      // Null coalescing ??
      if (expr.includes(" ?? ")) {
        const [l, r] = expr.split(" ?? ")
        const lv = evalPhp(l.trim())
        return (lv !== null && lv !== undefined) ? lv : evalPhp(r.trim())
      }

      // Concatenation with .
      if (expr.includes(" . ") || /[a-zA-Z0-9_"')\]]\s*\.\s*[a-zA-Z0-9_"'($]/.test(expr)) {
        const dotIdx = _phpFindDot(expr)
        if (dotIdx !== -1) {
          return phpStr(evalPhp(expr.slice(0, dotIdx).trim())) + phpStr(evalPhp(expr.slice(dotIdx + 1).trim()))
        }
      }

      // Arithmetic
      const arith = _splitArith(expr)
      if (arith) {
        const [l, op, r] = arith
        const a = evalPhp(l), b = evalPhp(r)
        const na = parseFloat(phpStr(a)) || 0, nb = parseFloat(phpStr(b)) || 0
        if (op === "+") return na + nb
        if (op === "-") return na - nb
        if (op === "*") return na * nb
        if (op === "/") return nb === 0 ? null : na / nb
        if (op === "%") return na % nb
        if (op === "**") return Math.pow(na, nb)
      }

      // Comparisons
      const cmpPairs = [["===","==="],["!==","!=="],[">=",">="],["<=","<="],["!=","!="],["==","=="],["<","<"],[">",">"]]
      for (const [op, jsOp] of cmpPairs) {
        const idx = expr.indexOf(op)
        if (idx > 0) {
          const a = evalPhp(expr.slice(0, idx).trim()), b = evalPhp(expr.slice(idx + op.length).trim())
          if (jsOp === "===") return a === b
          if (jsOp === "!==") return a !== b
          if (jsOp === ">=")  return parseFloat(phpStr(a)) >= parseFloat(phpStr(b))
          if (jsOp === "<=")  return parseFloat(phpStr(a)) <= parseFloat(phpStr(b))
          if (jsOp === "!=")  return phpStr(a) != phpStr(b)
          if (jsOp === "==")  return phpStr(a) == phpStr(b)
          if (jsOp === "<")   return parseFloat(phpStr(a)) < parseFloat(phpStr(b))
          if (jsOp === ">")   return parseFloat(phpStr(a)) > parseFloat(phpStr(b))
        }
      }

      // Logical
      if (/ && /.test(expr))  { const [l, r] = expr.split(" && ");  return evalPhp(l) && evalPhp(r) }
      if (/ \|\| /.test(expr)){ const [l, r] = expr.split(" || ");  return evalPhp(l) || evalPhp(r) }
      if (/^!/.test(expr))    return !evalPhp(expr.slice(1).trim())
      if (/ and /i.test(expr)){ const [l, r] = expr.split(/ and /i); return evalPhp(l) && evalPhp(r) }
      if (/ or /i.test(expr)) { const [l, r] = expr.split(/ or /i);  return evalPhp(l) || evalPhp(r) }

      return null
    }

    // ── Block collector (find matching }) ──────────────────────────
    const collectBlock = (startIdx) => {
      const body = []; let depth = 1, idx = startIdx
      while (idx < lines.length && depth > 0) {
        const t = lines[idx].trim(); idx++
        if (t.includes("{")) depth += (t.match(/\{/g) || []).length
        if (t.includes("}")) depth -= (t.match(/\}/g) || []).length
        if (depth > 0) body.push(t)
      }
      return { body, nextLine: idx }
    }

    // ── Execute one line ───────────────────────────────────────────
    const runLine = (raw) => {
      const t = raw.trim().replace(/;+$/, "")
      if (!t || t.startsWith("//") || t.startsWith("#") || t.startsWith("*")) return

      // echo / print
      const echoM = t.match(/^(?:echo|print)\s+(.+)$/s)
      if (echoM) {
        const parts = _splitArgs(echoM[1])
        const out   = parts.map(p => phpStr(evalPhp(p.trim()))).join("")
        // Handle \n within output
        out.split("\n").forEach((line, li, arr) => {
          if (li === 0 && output.length > 0 && !output[output.length-1].endsWith("\n")) {
            output[output.length-1] += line + (li < arr.length - 1 ? "\n" : "")
          } else {
            output.push(line + (li < arr.length - 1 ? "\n" : ""))
          }
        })
        return
      }

      // var_dump / print_r
      const dumpM = t.match(/^var_dump\((.+)\)$/)
      if (dumpM) { evalPhp(t + ";"); return }
      const prM = t.match(/^print_r\((.+)\)$/)
      if (prM)   { evalPhp(t + ";"); return }

      // Augmented assignment
      const augM = t.match(/^\$([a-zA-Z_]\w*)\s*(\.\s*=|\.=|\+=|-=|\*=|\/=|%=)\s*(.+)$/)
      if (augM) {
        const [, name, op, rhs] = augM
        const cur = env[name] ?? (op.includes(".") ? "" : 0)
        const val = evalPhp(rhs.trim())
        const opClean = op.replace(/\s/g, "")
        if (opClean === ".=") env[name] = phpStr(cur) + phpStr(val)
        else if (opClean === "+=") env[name] = (parseFloat(phpStr(cur))||0) + (parseFloat(phpStr(val))||0)
        else if (opClean === "-=") env[name] = (parseFloat(phpStr(cur))||0) - (parseFloat(phpStr(val))||0)
        else if (opClean === "*=") env[name] = (parseFloat(phpStr(cur))||0) * (parseFloat(phpStr(val))||0)
        return
      }

      // $arr[] = val
      const appendM = t.match(/^\$([a-zA-Z_]\w*)\[\]\s*=\s*(.+)$/)
      if (appendM) {
        if (!Array.isArray(env[appendM[1]])) env[appendM[1]] = []
        env[appendM[1]].push(evalPhp(appendM[2].trim()))
        return
      }

      // $arr[$key] = val
      const arrSetM = t.match(/^\$([a-zA-Z_]\w*)\[(.+)\]\s*=\s*(.+)$/)
      if (arrSetM) {
        const key = evalPhp(arrSetM[2])
        const val = evalPhp(arrSetM[3].trim())
        if (!env[arrSetM[1]]) env[arrSetM[1]] = {}
        if (Array.isArray(env[arrSetM[1]])) env[arrSetM[1]][key] = val
        else env[arrSetM[1]][String(key)] = val
        return
      }

      // ++$var / $var++
      if (/^\$\w+\+\+$/.test(t) || /^\+\+\$\w+$/.test(t)) { const n = t.replace(/[$+]/g,""); env[n] = (env[n]||0)+1; return }
      if (/^\$\w+--$/.test(t)   || /^--\$\w+$/.test(t))   { const n = t.replace(/[$\-]/g,""); env[n] = (env[n]||0)-1; return }

      // $var = expr
      const assignM = t.match(/^\$([a-zA-Z_]\w*)\s*=(?!=)\s*(.+)$/)
      if (assignM) { env[assignM[1]] = evalPhp(assignM[2].trim()); return }

      // Standalone function call (e.g. sort($arr), array_push($arr, $val))
      const fnCallM = t.match(/^([a-zA-Z_]\w*)\s*\((.*)?\)$/)
      if (fnCallM) { evalPhp(t + ";"); return }

      // unset($var)
      if (/^unset\(\$(\w+)\)/.test(t)) { const n = t.match(/\$(\w+)/)[1]; delete env[n]; return }
    }

    // ── Main execution loop ────────────────────────────────────────
    try {
      while (i < lines.length) {
        const raw = lines[i]; i++
        const t   = raw.trim().replace(/;+$/, "")
        if (!t || t.startsWith("//") || t.startsWith("#") || t.startsWith("*")) continue
        if (t === "?>" || t === "<?php") continue

        // if / elseif / else
        if (/^if\s*\(/.test(t)) {
          const condM = t.match(/^if\s*\((.+)\)\s*\{?(.*)$/)
          if (!condM) continue
          const cond = !!evalPhp(condM[1])
          const body = condM[2].trim() ? [condM[2].trim()] : []
          if (t.endsWith("{") || t.match(/\)\s*\{/)) {
            const block = collectBlock(i); i = block.nextLine
            block.body.forEach(bl => body.push(bl))
          }
          if (cond) {
            body.forEach(runLine)
            while (i < lines.length && /^\s*(else|elseif)/.test(lines[i])) {
              const eb = collectBlock(i + 1); i = eb.nextLine
            }
          } else {
            while (i < lines.length) {
              const next = lines[i].trim()
              if (/^elseif\s*\(/.test(next)) {
                i++
                const ecM = next.match(/^elseif\s*\((.+)\)\s*\{?(.*)$/)
                if (ecM && !!evalPhp(ecM[1])) {
                  const eb = []; if (ecM[2].trim()) eb.push(ecM[2].trim())
                  const block = collectBlock(i); i = block.nextLine
                  block.body.forEach(bl => eb.push(bl))
                  eb.forEach(runLine)
                  while (i < lines.length && /^\s*(else|elseif)/.test(lines[i])) {
                    const sb = collectBlock(i + 1); i = sb.nextLine
                  }
                  break
                } else {
                  if (i < lines.length) { const bl = collectBlock(i); i = bl.nextLine }
                }
              } else if (/^else\s*\{?/.test(next)) {
                i++
                const eb = next.replace(/^else\s*\{?/, "").trim() ? [next.replace(/^else\s*\{?/, "").trim()] : []
                const block = collectBlock(i); i = block.nextLine
                block.body.forEach(bl => eb.push(bl))
                eb.forEach(runLine); break
              } else break
            }
          }
          continue
        }

        // for ($i=0; $i<n; $i++)
        const forM = t.match(/^for\s*\(\s*\$(\w+)\s*=\s*(.+?);\s*(.+?);\s*(.+?)\s*\)\s*\{?(.*)$/)
        if (forM) {
          const [, vn, init, cond, update, inline] = forM
          env[vn] = evalPhp(init)
          const body = inline.trim() ? [inline.trim()] : []
          if (t.endsWith("{") || t.match(/\)\s*\{/)) { const bl = collectBlock(i); i = bl.nextLine; bl.body.forEach(b => body.push(b)) }
          let guard = 0
          while (!!evalPhp(`$${vn} ${cond.replace(vn, "").trim()}`.replace(/^\$\w+\s*/, "").replace(/\$\w+/, phpStr(env[vn])).trim().replace(/^\d+\s*</, phpStr(env[vn]) + " <") || cond) && guard++ < 500) {
            // re-eval condition properly
            const condStr = cond.replace(/\$(\w+)/g, (_, n) => phpStr(env[n]))
            const condOk  = evalPhp(condStr.includes("<") || condStr.includes(">") || condStr.includes("=") ? condStr : `${phpStr(env[vn])} ${cond.replace(/\$\w+\s*/, "")}`)
            if (!condOk) break
            body.forEach(runLine)
            const upd = update.trim().replace(/;$/, "")
            if (/\$\w+\+\+/.test(upd) || /\+\+\$\w+/.test(upd)) env[vn] = (env[vn]||0)+1
            else if (/\$\w+--/.test(upd) || /--\$\w+/.test(upd)) env[vn] = (env[vn]||0)-1
            else if (/\+=/.test(upd)) { const [,rhs] = upd.split("+="); env[vn] = (env[vn]||0)+(parseFloat(evalPhp(rhs))||0) }
            else if (/-=/.test(upd))  { const [,rhs] = upd.split("-="); env[vn] = (env[vn]||0)-(parseFloat(evalPhp(rhs))||0) }
          }
          continue
        }

        // foreach ($arr as $val) or foreach ($arr as $key => $val)
        const feM = t.match(/^foreach\s*\(\s*(\$[\w\[\]'"]+)\s+as\s+(?:\$(\w+)\s*=>\s*)?\$(\w+)\s*\)\s*\{?(.*)$/)
        if (feM) {
          const [, srcExpr, keyVar, valVar, inline] = feM
          const coll = evalPhp(srcExpr)
          const body = inline.trim() ? [inline.trim()] : []
          if (t.endsWith("{") || t.match(/\)\s*\{/)) { const bl = collectBlock(i); i = bl.nextLine; bl.body.forEach(b => body.push(b)) }
          const entries = Array.isArray(coll) ? coll.map((v, k) => [k, v]) : (typeof coll === "object" && coll ? Object.entries(coll) : [])
          for (const [k, v] of entries) {
            if (keyVar) env[keyVar] = k
            env[valVar] = v
            body.forEach(runLine)
          }
          continue
        }

        // while ($cond)
        const whileM = t.match(/^while\s*\((.+)\)\s*\{?(.*)$/)
        if (whileM) {
          const body = whileM[2].trim() ? [whileM[2].trim()] : []
          if (t.endsWith("{")) { const bl = collectBlock(i); i = bl.nextLine; bl.body.forEach(b => body.push(b)) }
          let guard = 0
          while (!!evalPhp(whileM[1]) && guard++ < 500) body.forEach(runLine)
          continue
        }

        // function definition
        const fnDefM = t.match(/^(?:public\s+|private\s+|protected\s+|static\s+)*function\s+(\w+)\s*\(([^)]*)\)\s*(?::\s*\w+)?\s*\{?(.*)$/)
        if (fnDefM) {
          const [, fnName, paramStr, inline] = fnDefM
          const body = inline.trim() ? [inline.trim()] : []
          if (t.endsWith("{") || t.match(/\)\s*\{/)) { const bl = collectBlock(i); i = bl.nextLine; bl.body.forEach(b => body.push(b)) }
          const params = paramStr ? paramStr.split(",").map(p => {
            const pm = p.trim().match(/\$(\w+)(?:\s*=\s*(.+))?$/)
            return pm ? { name: pm[1], default: pm[2] ? evalPhp(pm[2]) : undefined } : null
          }).filter(Boolean) : []
          env["__fn_" + fnName] = (...callArgs) => {
            const saved = { ...env }
            params.forEach((p, pi) => { env[p.name] = callArgs[pi] !== undefined ? callArgs[pi] : p.default })
            let result = null
            for (const bl of body) {
              const bt = bl.trim().replace(/;$/, "")
              const retM = bt.match(/^return\s+(.+)$/)
              if (retM) { result = evalPhp(retM[1]); break }
              runLine(bl)
            }
            Object.assign(env, saved)
            return result
          }
          continue
        }

        // class definition — simplified skip
        if (/^(?:abstract\s+)?class\s+/.test(t) || /^(?:public|private|protected)$/.test(t)) {
          if (t.endsWith("{")) { const bl = collectBlock(i); i = bl.nextLine }
          continue
        }

        runLine(raw)
      }
    } catch (e) {
      output.push("PHP Error: " + e.message)
    }

    // Render output
    const finalOut = output.join("").split("\n")
    const html = `<!DOCTYPE html><html><head><style>
      body{margin:0;background:#0a0a18;font-family:'Fira Code',monospace;font-size:13px}
      #out{padding:14px 16px}
      .line{color:#a78bfa;margin-bottom:3px;white-space:pre-wrap}
      .err{color:#f87171}
      .prompt{color:#4b5563;user-select:none}
    </style></head><body><div id="out">${
      finalOut.filter(l => l !== "").length
        ? finalOut.map(l => `<div class="line ${l.startsWith("PHP Error:") ? "err" : ""}"><span class="prompt">&gt; </span>${l.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;")}</div>`).join("")
        : '<div class="line" style="color:#4b5563;font-style:italic">(no output)</div>'
    }</div></body></html>`
    this.previewTarget.srcdoc = html
  }

  // ── Ruby simulator ────────────────────────────────────────────────
  _runRuby(code) {
    if (!this.hasPreviewTarget) return
    const lines  = code.split("\n")
    const output = []
    const env    = {}
    let i        = 0

    const rubyInspect = (v) => {
      if (v === null || v === undefined) return "nil"
      if (typeof v === "boolean")  return v ? "true" : "false"
      if (typeof v === "string")   return `"${v}"`
      if (Array.isArray(v))        return "[" + v.map(rubyInspect).join(", ") + "]"
      if (typeof v === "object") {
        const pairs = Object.entries(v).map(([k,val]) => `${rubyInspect(k)}=>${rubyInspect(val)}`)
        return "{" + pairs.join(", ") + "}"
      }
      return String(v)
    }

    const rubyStr = (v) => {
      if (v === null || v === undefined) return ""
      if (typeof v === "boolean")  return v ? "true" : "false"
      if (Array.isArray(v))        return v.map(rubyStr).join("\n")
      return String(v)
    }

    // Interpolate "#{expr}" inside a string
    const interpolate = (str) => {
      return str.replace(/#\{([^}]+)\}/g, (_, inner) => {
        try { return rubyStr(evalR(inner.trim())) } catch { return "" }
      })
    }

    const evalR = (expr) => {
      expr = expr.trim()
      if (!expr) return nil

      // nil / true / false
      if (expr === "nil")   return null
      if (expr === "true")  return true
      if (expr === "false") return false

      // Integer
      if (/^-?\d+$/.test(expr)) return parseInt(expr, 10)
      // Float
      if (/^-?\d+\.\d+$/.test(expr)) return parseFloat(expr)

      // Double-quoted string with interpolation
      const dq = expr.match(/^"((?:[^"\\]|\\.)*)"$/)
      if (dq) return interpolate(dq[1].replace(/\\n/g, "\n").replace(/\\t/g, "\t"))
      // Single-quoted string (no interpolation)
      const sq = expr.match(/^'([^']*)'$/)
      if (sq) return sq[1]

      // Array literal
      if (expr.startsWith("[") && expr.endsWith("]")) {
        const inner = expr.slice(1, -1).trim()
        if (!inner) return []
        return _rubyArgs(inner).map(a => evalR(a.trim()))
      }

      // Hash literal (symbol keys: {a: 1} or rocket: {"a"=>1})
      if (expr.startsWith("{") && expr.endsWith("}")) {
        const inner = expr.slice(1, -1).trim()
        if (!inner) return {}
        const obj = {}
        _rubyArgs(inner).forEach(pair => {
          const rocket = pair.indexOf("=>")
          const sym    = pair.indexOf(":")
          if (rocket > -1) {
            obj[evalR(pair.slice(0, rocket).trim())] = evalR(pair.slice(rocket + 2).trim())
          } else if (sym > -1 && !/^"/.test(pair)) {
            const key = pair.slice(0, sym).trim()
            obj[key]  = evalR(pair.slice(sym + 1).trim())
          }
        })
        return obj
      }

      // Range (..)
      const rangeM = expr.match(/^\((-?\d+)\.\.\.?(-?\d+)\)$/) || expr.match(/^(-?\d+)\.\.\.?(-?\d+)$/)
      if (rangeM) {
        const exclusive = expr.includes("...")
        const start = parseInt(rangeM[1]), stop = parseInt(rangeM[2])
        const arr = []
        for (let n = start; exclusive ? n < stop : n <= stop; n++) arr.push(n)
        return arr
      }

      // Method chain: obj.method or obj.method(args)
      const chainM = expr.match(/^(.+?)\.(\w+[?!]?)(?:\(([^)]*)\))?$/)
      if (chainM) {
        const [, baseExpr, method, argStr] = chainM
        const base = evalR(baseExpr)
        const args = argStr ? _rubyArgs(argStr).map(a => evalR(a.trim())) : []

        if (typeof base === "number") {
          if (method === "times")      return _makeTimesRange(base)
          if (method === "upto")       { const arr=[]; for(let n=base;n<=args[0];n++) arr.push(n); return arr }
          if (method === "downto")     { const arr=[]; for(let n=base;n>=args[0];n--) arr.push(n); return arr }
          if (method === "even?")      return base % 2 === 0
          if (method === "odd?")       return base % 2 !== 0
          if (method === "abs")        return Math.abs(base)
          if (method === "round")      return args[0] !== undefined ? parseFloat(base.toFixed(args[0])) : Math.round(base)
          if (method === "ceil")       return Math.ceil(base)
          if (method === "floor")      return Math.floor(base)
          if (method === "to_f")       return parseFloat(base)
          if (method === "to_i")       return parseInt(base)
          if (method === "to_s")       return String(base)
          if (method === "class")      return Number.isInteger(base) ? "Integer" : "Float"
          if (method === "lcm")        return _lcm(base, args[0])
          if (method === "gcd")        return _gcd(base, args[0])
        }

        if (typeof base === "string") {
          if (method === "upcase" || method === "upcase!")    return base.toUpperCase()
          if (method === "downcase" || method === "downcase!") return base.toLowerCase()
          if (method === "capitalize") return base[0].toUpperCase() + base.slice(1).toLowerCase()
          if (method === "strip")      return base.trim()
          if (method === "chomp")      return base.replace(/\n$/, "")
          if (method === "chop")       return base.slice(0, -1)
          if (method === "reverse")    return base.split("").reverse().join("")
          if (method === "length" || method === "size") return base.length
          if (method === "empty?")     return base.length === 0
          if (method === "include?")   return base.includes(String(args[0]))
          if (method === "start_with?") return base.startsWith(String(args[0]))
          if (method === "end_with?")  return base.endsWith(String(args[0]))
          if (method === "split")      return args[0] !== undefined ? base.split(String(args[0])) : base.split(" ")
          if (method === "gsub")       return base.replace(new RegExp(String(args[0]).replace(/[.*+?^${}()|[\]\\]/g,"\\$&"), "g"), String(args[1] ?? ""))
          if (method === "sub")        return base.replace(String(args[0]), String(args[1] ?? ""))
          if (method === "to_i")       return parseInt(base, 10) || 0
          if (method === "to_f")       return parseFloat(base) || 0.0
          if (method === "class")      return "String"
          if (method === "inspect")    return `"${base}"`
          if (method === "chars")      return base.split("")
          if (method === "bytes")      return [...base].map(c => c.charCodeAt(0))
          if (method === "count")      { return args[0] !== undefined ? (base.split(String(args[0])).length - 1) : base.length }
          if (method === "each_char")  return base.split("")
        }

        if (Array.isArray(base)) {
          if (method === "length" || method === "size" || method === "count") return args[0] !== undefined ? base.filter(x => rubyStr(x) === rubyStr(args[0])).length : base.length
          if (method === "first")    return args[0] !== undefined ? base.slice(0, args[0]) : base[0]
          if (method === "last")     return args[0] !== undefined ? base.slice(-args[0]) : base[base.length - 1]
          if (method === "push" || method === "append")  { base.push(args[0]); return base }
          if (method === "pop")      return base.pop()
          if (method === "shift")    return base.shift()
          if (method === "unshift")  { base.unshift(args[0]); return base }
          if (method === "include?") return base.some(x => rubyStr(x) === rubyStr(args[0]))
          if (method === "sort" || method === "sort!")   return [...base].sort((a,b) => a>b?1:a<b?-1:0)
          if (method === "sort_by")  return base  // simplified
          if (method === "reverse" || method === "reverse!")  return [...base].reverse()
          if (method === "uniq" || method === "uniq!")  { const seen=new Set(); return base.filter(x=>{ const k=rubyStr(x); if(seen.has(k)) return false; seen.add(k); return true; }) }
          if (method === "flatten")  return base.flat(Infinity)
          if (method === "compact")  return base.filter(x => x !== null && x !== undefined)
          if (method === "sum")      return base.reduce((a,b) => a + (typeof b === "number" ? b : 0), 0)
          if (method === "min")      return Math.min(...base)
          if (method === "max")      return Math.max(...base)
          if (method === "empty?")   return base.length === 0
          if (method === "any?")     return base.length > 0
          if (method === "map" || method === "collect")    return base  // block needed
          if (method === "select" || method === "filter")  return base  // block needed
          if (method === "reject")   return base  // block needed
          if (method === "each" || method === "each_with_index") return base
          if (method === "join")     return base.map(rubyStr).join(String(args[0] ?? ""))
          if (method === "inspect")  return "[" + base.map(rubyInspect).join(", ") + "]"
          if (method === "to_a")     return base
          if (method === "tally")    { const t={}; base.forEach(x=>{ const k=rubyStr(x); t[k]=(t[k]||0)+1 }); return t }
          if (method === "class")    return "Array"
        }

        if (typeof base === "object" && base !== null && !Array.isArray(base)) {
          if (method === "keys")      return Object.keys(base)
          if (method === "values")    return Object.values(base)
          if (method === "length" || method === "size") return Object.keys(base).length
          if (method === "has_key?") return Object.prototype.hasOwnProperty.call(base, String(args[0]))
          if (method === "merge")    return { ...base, ...args[0] }
          if (method === "inspect")  { const pairs=Object.entries(base).map(([k,v])=>`${rubyInspect(k)}=>${rubyInspect(v)}`); return "{"+pairs.join(", ")+"}" }
          if (method === "to_s")     return rubyStr(base)
          if (method === "class")    return "Hash"
          if (method === "each")     return Object.entries(base)
          if (method === "each_pair") return Object.entries(base)
          if (method === "each_with_object") return base
        }

        if (base === null) {
          if (method === "inspect" || method === "to_s") return "nil"
          if (method === "nil?")  return true
          if (method === "class") return "NilClass"
        }

        if (typeof base === "boolean") {
          if (method === "class") return base ? "TrueClass" : "FalseClass"
          if (method === "to_s")  return String(base)
        }

        return null
      }

      // Math:: constants / methods
      const mathM = expr.match(/^Math(?:::)?(PI|E|sqrt|sin|cos|log10?)\(?([^)]*)\)?$/)
      if (mathM) {
        const [, fn, arg] = mathM
        if (fn === "PI") return Math.PI
        if (fn === "E")  return Math.E
        const v = arg ? evalR(arg.trim()) : 0
        if (fn === "sqrt")  return Math.sqrt(v)
        if (fn === "sin")   return Math.sin(v)
        if (fn === "cos")   return Math.cos(v)
        if (fn === "log10") return Math.log10(v)
        if (fn === "log")   return Math.log(v)
      }

      // Arithmetic
      const arith = _rubyArith(expr)
      if (arith) {
        const [l, op, r] = arith
        const a = evalR(l), b = evalR(r)
        if (op === "+")  return (typeof a === "string" || typeof b === "string") ? String(a) + String(b) : a + b
        if (op === "-")  return a - b
        if (op === "*")  return (typeof a === "string") ? a.repeat(b) : a * b
        if (op === "/")  return (Number.isInteger(a) && Number.isInteger(b)) ? Math.trunc(a/b) : a/b
        if (op === "%")  return ((a%b)+b)%b
        if (op === "**") return Math.pow(a, b)
      }

      // Comparisons
      const cmpOps = [[">=",">="],["<=","<="],["!=","!="],["==","=="],["<","<"],[">",">"]]
      for (const [op, jsOp] of cmpOps) {
        if (expr.includes(op)) {
          const [l, r] = _splitOnce(expr, op)
          const a = evalR(l), b = evalR(r)
          if (jsOp === ">=") return a >= b
          if (jsOp === "<=") return a <= b
          if (jsOp === "!=") return a !== b
          if (jsOp === "==") return a === b || String(a) === String(b)
          if (jsOp === "<")  return a < b
          if (jsOp === ">")  return a > b
        }
      }

      // Boolean ops
      if (/ && /.test(expr)) { const [l,r]=_splitOnce(expr," && "); return evalR(l) && evalR(r) }
      if (/ \|\| /.test(expr)) { const [l,r]=_splitOnce(expr," || "); return evalR(l) || evalR(r) }

      // Variable / constant lookup
      if (/^\w+$/.test(expr)) return env[expr] ?? null

      // Hash subscript: var[:key] or var["key"]
      const subM = expr.match(/^(\w+)\[(.+)\]$/)
      if (subM) {
        const obj = env[subM[1]]
        const key = evalR(subM[2])
        if (Array.isArray(obj)) { const idx = typeof key==="number" && key<0 ? obj.length+key : key; return obj[idx] ?? null }
        if (typeof obj === "object" && obj !== null) return obj[key] ?? obj[String(key)] ?? null
      }

      return null
    }

    // ── Execute lines ─────────────────────────────────────────────
    try {
      while (i < lines.length) {
        const raw = lines[i]; i++
        const t   = raw.trim()
        if (!t || t.startsWith("#")) continue

        // puts
        const putsM = t.match(/^puts\s+(.+)$/) || (t === "puts" ? ["puts",""] : null)
        if (putsM || t === "puts") {
          const arg = putsM ? putsM[1] : ""
          if (!arg) { output.push(""); continue }
          const v = evalR(arg)
          output.push(Array.isArray(v) ? v.map(rubyStr).join("\n") : rubyStr(v))
          continue
        }

        // print
        const printM = t.match(/^print\s+(.+)$/)
        if (printM) {
          const v = evalR(printM[1])
          const last = output[output.length - 1]
          if (last !== undefined && !last.endsWith("\n")) output[output.length-1] = last + rubyStr(v)
          else output.push(rubyStr(v))
          continue
        }

        // p
        const pM = t.match(/^p\s+(.+)$/)
        if (pM) {
          const v = evalR(pM[1])
          output.push(rubyInspect(v))
          continue
        }

        // if/elsif/else/end block
        if (/^if\s+/.test(t) || /^unless\s+/.test(t)) {
          const block = _rubyCollectIf(lines, i - 1)
          i = block.nextLine
          let executed = false
          for (const branch of block.branches) {
            if (executed) break
            let cond = branch.condition === "else" ? true : evalR(branch.condition)
            if (branch.isUnless) cond = !cond
            if (cond) { executed = true; _rubyRunBlock(branch.body, env, evalR, rubyStr, output, interpolate) }
          }
          continue
        }

        // case/when
        if (/^case\s+/.test(t)) {
          const block = _rubyCollectCase(lines, i)
          i = block.nextLine
          const val = evalR(t.replace(/^case\s+/, "").trim())
          let executed = false
          for (const branch of block.branches) {
            if (executed) break
            if (branch.isElse || String(val) === String(evalR(branch.condition)) || rubyStr(val) === rubyStr(evalR(branch.condition))) {
              executed = true
              _rubyRunBlock(branch.body, env, evalR, rubyStr, output, interpolate)
            }
          }
          continue
        }

        // n.times do |i| ... end
        const timesM = t.match(/^(\w+|\d+)\.times\s+do\s*(?:\|(\w+)\|)?\s*$/) || t.match(/^(\w+|\d+)\.times\s*\{\s*(?:\|(\w+)\|)?\s*$/)
        if (timesM) {
          const count  = evalR(timesM[1])
          const ivar   = timesM[2] || "_i"
          const body   = _rubyCollectBlock(lines, i)
          i = body.nextLine
          for (let n = 0; n < count; n++) {
            env[ivar] = n
            _rubyRunBlock(body.lines, env, evalR, rubyStr, output, interpolate)
          }
          continue
        }

        // arr.each / arr.each_with_index / range.each / hash.each do |vars| ... end
        const eachM = t.match(/^(.+)\.(each|each_with_index|each_with_object|upto|downto|each_char|each_pair)\s+do\s*\|([^|]+)\|\s*$/)
                   || t.match(/^(.+)\.(each|each_with_index|upto|downto)\s*\{\s*\|([^|]+)\|\s*$/)
        if (eachM) {
          const [, collExpr, method, varStr] = eachM
          const vars = varStr.split(",").map(v => v.trim())
          const body = _rubyCollectBlock(lines, i)
          i = body.nextLine
          let items = evalR(collExpr)

          if (method === "each_with_index") {
            if (Array.isArray(items)) {
              items.forEach((item, idx) => {
                env[vars[0]] = item; env[vars[1] || "_i"] = idx
                _rubyRunBlock(body.lines, env, evalR, rubyStr, output, interpolate)
              })
            }
          } else if (method === "each_pair" || (method === "each" && !Array.isArray(items) && typeof items === "object" && items !== null)) {
            Object.entries(items || {}).forEach(([k, v]) => {
              env[vars[0]] = k; env[vars[1]] = v
              _rubyRunBlock(body.lines, env, evalR, rubyStr, output, interpolate)
            })
          } else {
            if (!Array.isArray(items)) items = items ? [items] : []
            items.forEach(item => {
              if (vars.length > 1 && Array.isArray(item)) {
                vars.forEach((v, vi) => { env[v] = item[vi] })
              } else { env[vars[0]] = item }
              _rubyRunBlock(body.lines, env, evalR, rubyStr, output, interpolate)
            })
          }
          continue
        }

        // map / select / reject / reduce with do...end block
        const enumM = t.match(/^(\w+)\s*=\s*(.+)\.(map|collect|select|filter|reject|reduce|inject|sort_by|min_by|max_by|each_with_object)\s+do\s*\|([^|]+)\|\s*$/)
        if (enumM) {
          const [, lhs, collExpr, method, varStr] = enumM
          const vars  = varStr.split(",").map(v => v.trim())
          const body  = _rubyCollectBlock(lines, i)
          i = body.nextLine
          const items = evalR(collExpr)
          const arr   = Array.isArray(items) ? items : []
          let result

          if (method === "map" || method === "collect") {
            result = arr.map(item => {
              env[vars[0]] = item
              return _rubyEvalBlock(body.lines, env, evalR)
            })
          } else if (method === "select" || method === "filter") {
            result = arr.filter(item => { env[vars[0]] = item; return _rubyEvalBlock(body.lines, env, evalR) })
          } else if (method === "reject") {
            result = arr.filter(item => { env[vars[0]] = item; return !_rubyEvalBlock(body.lines, env, evalR) })
          } else if (method === "reduce" || method === "inject") {
            result = arr.reduce((acc, item) => {
              env[vars[0]] = acc; env[vars[1]] = item
              return _rubyEvalBlock(body.lines, env, evalR)
            }, typeof arr[0] === "number" ? 0 : [])
          } else if (method === "sort_by") {
            result = [...arr].sort((a, b) => {
              env[vars[0]] = a; const ka = _rubyEvalBlock(body.lines, env, evalR)
              env[vars[0]] = b; const kb = _rubyEvalBlock(body.lines, env, evalR)
              return ka > kb ? 1 : ka < kb ? -1 : 0
            })
          } else if (method === "min_by") {
            result = arr.reduce((best, item) => {
              env[vars[0]] = item; const v = _rubyEvalBlock(body.lines, env, evalR)
              env[vars[0]] = best; const bv = _rubyEvalBlock(body.lines, env, evalR)
              return v < bv ? item : best
            }, arr[0])
          } else if (method === "max_by") {
            result = arr.reduce((best, item) => {
              env[vars[0]] = item; const v = _rubyEvalBlock(body.lines, env, evalR)
              env[vars[0]] = best; const bv = _rubyEvalBlock(body.lines, env, evalR)
              return v > bv ? item : best
            }, arr[0])
          }
          env[lhs] = result
          continue
        }

        // while / until
        const whileM = t.match(/^(while|until)\s+(.+)$/)
        if (whileM) {
          const body  = _rubyCollectBlock(lines, i)
          i = body.nextLine
          let guard = 0
          const isUntil = whileM[1] === "until"
          while (guard++ < 300) {
            const cond = evalR(whileM[2])
            if (isUntil ? cond : !cond) break
            _rubyRunBlock(body.lines, env, evalR, rubyStr, output, interpolate)
          }
          continue
        }

        // def...end
        const defM = t.match(/^def\s+(\w+[?!]?)\s*(?:\(([^)]*)\))?$/)
        if (defM) {
          const fnName   = defM[1]
          const paramStr = defM[2] || ""
          const body     = _rubyCollectBlock(lines, i)
          i = body.nextLine
          const params = paramStr ? paramStr.split(",").map(p => p.trim().split(/\s*=\s*/)[0].trim()) : []
          const defaults = {}
          if (paramStr) {
            paramStr.split(",").forEach(p => {
              const parts = p.trim().split(/\s*=\s*/)
              if (parts.length > 1) defaults[parts[0].trim()] = evalR(parts[1].trim())
            })
          }
          env[fnName] = (...args) => {
            const savedEnv = { ...env }
            Object.assign(env, defaults)
            params.forEach((p, pi) => { if (args[pi] !== undefined) env[p] = args[pi] })
            const result = _rubyEvalBlock(body.lines, env, evalR)
            // Restore non-local env
            Object.keys(env).forEach(k => { if (!Object.prototype.hasOwnProperty.call(savedEnv, k) && !params.includes(k)) delete env[k] })
            Object.assign(env, savedEnv)
            return result
          }
          continue
        }

        // class...end (simplified — just skip)
        if (/^class\s+/.test(t)) {
          const body = _rubyCollectBlock(lines, i)
          i = body.nextLine
          continue
        }

        // inline if/unless modifier: puts "x" if condition
        const inlineIf = t.match(/^(.+?)\s+(if|unless)\s+(.+)$/)
        if (inlineIf && !inlineIf[1].startsWith("if ") && !inlineIf[1].startsWith("elsif ")) {
          const [, stmt, mod, condExpr] = inlineIf
          let cond = evalR(condExpr)
          if (mod === "unless") cond = !cond
          if (cond) { i--; lines[i-1] = stmt; /* re-process */ i--; lines.splice(i, 0, stmt); i++ }
          // Actually just re-evaluate the statement directly
          const newLines = [...lines.slice(0, i-1), stmt, ...lines.slice(i)]
          lines.splice(0, lines.length, ...newLines)
          i-- // re-process this line without the modifier
          continue
        }

        // Augmented assignment: x += 1
        const augM = t.match(/^(\w+)\s*(\+=|-=|\*=|\/=|%=|\*\*=|<<|\.push\(.+\))\s*(.*)$/)
        if (augM && !t.startsWith("puts")) {
          const [, vn, op, rhs] = augM
          if (op === "<<") {
            const arr = env[vn]
            if (Array.isArray(arr)) arr.push(evalR(rhs))
            else env[vn] = (rubyStr(env[vn] ?? "") + rubyStr(evalR(rhs)))
          } else {
            const cur = env[vn] ?? 0
            const val = evalR(rhs)
            if (op === "+=")  env[vn] = (typeof cur === "string") ? cur + rubyStr(val) : cur + val
            if (op === "-=")  env[vn] = cur - val
            if (op === "*=")  env[vn] = cur * val
            if (op === "/=")  env[vn] = Number.isInteger(cur) && Number.isInteger(val) ? Math.trunc(cur/val) : cur/val
            if (op === "%=")  env[vn] = cur % val
            if (op === "**=") env[vn] = Math.pow(cur, val)
          }
          continue
        }

        // Multi-target assignment: a, b = 1, 2  OR  a = expr
        const assignM = t.match(/^([A-Za-z_][\w,\s]*)\s*=(?!=|~)\s*(.+)$/)
        if (assignM) {
          const lhs = assignM[1].trim()
          const rhs = assignM[2].trim()
          if (lhs.includes(",")) {
            const vars = lhs.split(",").map(v => v.trim())
            const vals = rhs.startsWith("[") ? evalR(rhs) : _rubyArgs(rhs).map(a => evalR(a.trim()))
            vars.forEach((v, vi) => { env[v] = Array.isArray(vals) ? (vals[vi] ?? null) : null })
          } else {
            env[lhs] = evalR(rhs)
          }
          continue
        }

        // Standalone method/function call
        const callM = t.match(/^(\w+[?!]?)\s*(?:\(([^)]*)\))?$/)
        if (callM && env[callM[1]] && typeof env[callM[1]] === "function") {
          const args = callM[2] ? _rubyArgs(callM[2]).map(a => evalR(a.trim())) : []
          env[callM[1]](...args)
          continue
        }

        // Method call on variable (statement form)
        const methStmt = t.match(/^(\w+)\.(\w+[?!]?)(?:\(([^)]*)\))?$/)
        if (methStmt) {
          evalR(t)
          continue
        }
      }
    } catch (e) {
      output.push(`Error: ${e.message}`)
    }

    // Build output iframe
    const html = `<!DOCTYPE html><html><head><style>
      body{margin:0;background:#0a0a18;font-family:'Fira Code',monospace;font-size:13px}
      #out{padding:14px 16px}
      .line{color:#f87171;margin-bottom:3px;white-space:pre-wrap}
      .line.ok{color:#a3e635}
      .prompt{color:#4b5563;user-select:none}
    </style></head><body><div id="out">${
      output.length
        ? output.map(l => `<div class="line ok"><span class="prompt">&gt; </span>${l.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;")}</div>`).join("")
        : '<div class="line" style="color:#4b5563;font-style:italic">(no output)</div>'
    }</div></body></html>`
    this.previewTarget.srcdoc = html
  }

  // ── SQL runner ────────────────────────────────────────────────────
  _runSql(code) {
    if (!this.hasPreviewTarget) return
    const engine  = _sqlEngine()
    const results = engine.execute(code)
    this.previewTarget.srcdoc = _sqlRenderHtml(results)
  }

  // ── MySQL runner (SQL engine + MySQL-specific function extensions) ─
  _runMySql(code) {
    if (!this.hasPreviewTarget) return
    // Translate MySQL-specific syntax to engine-compatible SQL
    const translated = _mysqlTranslate(code)
    const engine     = _sqlEngine()
    // Inject MySQL extra functions into the engine
    _mysqlExtend(engine)
    const results = engine.execute(translated)
    this.previewTarget.srcdoc = _sqlRenderHtml(results, true)
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

  // ── NumPy runner ──────────────────────────────────────────────────
  _runNumpy(code) {
    if (!this.hasPreviewTarget) return
    const results = _npExecute(code)
    this.previewTarget.srcdoc = _npRenderHtml(results)
  }

  // ── Pandas runner ─────────────────────────────────────────────────
  _runPandas(code) {
    if (!this.hasPreviewTarget) return
    const results = _pdExecute(code)
    this.previewTarget.srcdoc = _pdRenderHtml(results)
  }

  // ── React runner ──────────────────────────────────────────────────
  _runReact(code) {
    if (!this.hasPreviewTarget) return
    const useBootstrap = /className=/.test(code)
    const bootstrapCss = useBootstrap
      ? '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">\n  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">'
      : ''
    const html = `<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  ${bootstrapCss}
  <style>*{box-sizing:border-box}body{margin:0}</style>
</head>
<body>
  <div id="root"></div>
  <script src="https://unpkg.com/react@18/umd/react.development.js" crossorigin></script>
  <script src="https://unpkg.com/react-dom@18/umd/react-dom.development.js" crossorigin></script>
  <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
  ${useBootstrap ? '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>' : ''}
  <script type="text/babel" data-presets="react">
${code}
  </script>
</body>
</html>`
    this.previewTarget.srcdoc = html
  }

  // ── PostgreSQL runner ─────────────────────────────────────────────
  _runPostgresql(code) {
    if (!this.hasPreviewTarget) return
    const results = _pgExecute(code)
    this.previewTarget.srcdoc = _pgRenderHtml(results)
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

// ── Block/branch collectors (module-level helpers) ───────────────

function _collectBody(lines, startIndex) {
  const body = []
  let i = startIndex
  while (i < lines.length) {
    const line = lines[i]
    if (line.trim() === "" || line.startsWith("    ") || line.startsWith("\t")) {
      if (line.trim()) body.push(line.trim())
      i++
    } else break
  }
  return { lines: body, nextLine: i }
}

function _collectIfElse(lines, startIndex) {
  const branches = []
  let i = startIndex

  while (i < lines.length) {
    const raw     = lines[i]
    const trimmed = raw.trim()

    let condition = null
    if (/^if\s+.+:$/.test(trimmed)) {
      condition = trimmed.slice(3, -1).trim()
    } else if (/^elif\s+.+:$/.test(trimmed)) {
      condition = trimmed.slice(5, -1).trim()
    } else if (/^else\s*:$/.test(trimmed)) {
      condition = "else"
    } else {
      break
    }
    i++

    const body = []
    while (i < lines.length) {
      const bl = lines[i]
      if (bl.trim() === "") { i++; continue }
      if (bl.startsWith("    ") || bl.startsWith("\t")) {
        body.push(bl.trim())
        i++
      } else break
    }
    branches.push({ condition, body })
  }

  return { branches, nextLine: i }
}

function _runBlock(bodyLines, env, evalExpr, fmt, output) {
  for (const bl of bodyLines) {
    const bt = bl.trim()
    if (!bt || bt.startsWith("#")) continue

    // Nested if
    if (/^if\s+.+:$/.test(bt)) continue // simplified: skip nested

    // print
    const pm = bt.match(/^print\((.*)?\)$/)
    if (pm) {
      const argsStr = pm[1] || ""
      let sep = " "
      let cleanArgs = argsStr.replace(/,?\s*sep\s*=\s*["'](.*)["']/, (_, s) => { sep = s; return "" })
                             .replace(/,?\s*end\s*=\s*["'](.*)["']/, () => "")
      const parts = cleanArgs ? _splitArgs(cleanArgs).map(a => fmt(evalExpr(a.trim(), {}))) : []
      output.push(parts.join(sep))
      continue
    }

    // return
    const retMatch = bt.match(/^return\s+(.+)$/)
    if (retMatch) break

    // augmented assignment
    const augMatch = bt.match(/^(\w+)\s*(\+=|-=|\*=|\/=)\s*(.+)$/)
    if (augMatch) {
      const cur = env[augMatch[1]] ?? 0
      const val = evalExpr(augMatch[3], {})
      if (augMatch[2] === "+=") env[augMatch[1]] = (typeof cur === "string") ? cur + String(val) : cur + val
      if (augMatch[2] === "-=") env[augMatch[1]] = cur - val
      if (augMatch[2] === "*=") env[augMatch[1]] = cur * val
      if (augMatch[2] === "/=") env[augMatch[1]] = cur / val
      continue
    }

    // assignment
    const am = bt.match(/^([\w,\s]+)\s*=\s*(.+)$/)
    if (am && !bt.includes("==") && !bt.includes("!=")) {
      const lhs = am[1].trim()
      if (lhs.includes(",")) {
        const vars = lhs.split(",").map(v => v.trim())
        const vals = _splitArgs(am[2].replace(/^\(|\)$/g, "")).map(v => evalExpr(v.trim(), {}))
        vars.forEach((v, vi) => { env[v] = vals[vi] ?? null })
      } else {
        env[lhs] = evalExpr(am[2].trim(), {})
      }
    }
  }
}

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

// ── Ruby-specific helper functions ───────────────────────────────

function _rubyArgs(str) {
  return _splitArgs(str) // reuse existing helper
}

function _rubyArith(expr) {
  return _splitArith(expr) // reuse existing helper
}

function _splitOnce(str, sep) {
  const idx = str.indexOf(sep)
  return idx === -1 ? [str, ""] : [str.slice(0, idx).trim(), str.slice(idx + sep.length).trim()]
}

function _makeTimesRange(n) {
  return Array.from({ length: n }, (_, i) => i)
}

function _lcm(a, b) { return Math.abs(a * b) / _gcd(a, b) }
function _gcd(a, b) { while(b) { [a,b] = [b, a%b] } return Math.abs(a) }

function _rubyCollectBlock(lines, startIdx) {
  const body = []
  let   i    = startIdx
  let   depth = 1

  while (i < lines.length) {
    const t = lines[i].trim()
    i++
    if (/^(def|class|module|if|unless|while|until|begin|case|do)\b/.test(t) && !/ do\s*$/.test(t)) depth++
    if (/ do\s*(\|[^|]*\|)?\s*$/.test(t) || /\{\s*(\|[^|]*\|)?\s*$/.test(t)) depth++
    if (t === "end" || /^end\b/.test(t) || t === "}") {
      depth--
      if (depth === 0) break
    }
    body.push(t)
  }
  return { lines: body, nextLine: i }
}

function _rubyCollectIf(lines, startIdx) {
  const branches = []
  let   i        = startIdx
  let   depth    = 0

  while (i < lines.length) {
    const raw = lines[i]
    const t   = raw.trim()
    i++

    const isUnless = /^unless\s+/.test(t)
    const ifMatch  = t.match(/^(?:if|unless)\s+(.+)$/)
    const elseifM  = t.match(/^elsif\s+(.+)$/)

    if ((ifMatch || elseifM) && depth === 0) {
      const condition = (ifMatch || elseifM)[1]
      const body = []
      let dd = 1

      while (i < lines.length) {
        const bt = lines[i].trim()
        i++
        if (/^(if|unless|while|until|begin|case)\b/.test(bt)) dd++
        if (/^end\b/.test(bt) || bt === "end") {
          dd--
          if (dd === 0) { i--; break }
        }
        if (dd === 1 && (bt.startsWith("elsif ") || bt === "else")) { i--; break }
        body.push(bt)
      }
      branches.push({ condition, isUnless, body })
    } else if (t === "else" && depth === 0) {
      const body = []
      let dd = 1
      while (i < lines.length) {
        const bt = lines[i].trim()
        i++
        if (/^(if|unless|while|until|begin|case)\b/.test(bt)) dd++
        if (/^end\b/.test(bt) || bt === "end") { dd--; if (dd === 0) break }
        body.push(bt)
      }
      branches.push({ condition: "else", isUnless: false, body })
      break
    } else if ((/^end\b/.test(t) || t === "end") && depth === 0) {
      break
    }
  }
  return { branches, nextLine: i }
}

function _rubyCollectCase(lines, startIdx) {
  const branches = []
  let i = startIdx

  while (i < lines.length) {
    const t = lines[i].trim(); i++
    const whenM = t.match(/^when\s+(.+)$/)
    if (whenM) {
      const conditions = whenM[1].split(",").map(c => c.trim())
      const body = []
      while (i < lines.length) {
        const bt = lines[i].trim()
        if (/^(when|else|end)/.test(bt)) break
        body.push(bt); i++
      }
      conditions.forEach(c => branches.push({ condition: c, isElse: false, body }))
    } else if (t === "else") {
      const body = []
      while (i < lines.length) {
        const bt = lines[i].trim()
        if (/^end/.test(bt)) break
        body.push(bt); i++
      }
      branches.push({ condition: null, isElse: true, body })
    } else if (/^end/.test(t)) {
      break
    }
  }
  return { branches, nextLine: i }
}

function _rubyRunBlock(bodyLines, env, evalR, rubyStr, output, interpolate) {
  for (const bl of bodyLines) {
    const t = bl.trim()
    if (!t || t.startsWith("#")) continue

    const putsM = t.match(/^puts\s+(.+)$/) || (t === "puts" ? ["",""] : null)
    if (putsM) {
      const arg = t === "puts" ? "" : putsM[1]
      if (!arg) { output.push(""); continue }
      try {
        const v = evalR(arg)
        output.push(Array.isArray(v) ? v.map(rubyStr).join("\n") : rubyStr(v))
      } catch(e) { output.push("Error: " + e.message) }
      continue
    }

    const pM = t.match(/^p\s+(.+)$/)
    if (pM) { try { output.push(JSON.stringify(evalR(pM[1])) ?? "nil") } catch {} continue }

    // Augmented assignment
    const augM = t.match(/^(\w+)\s*(\+=|-=|\*=|<<)\s*(.+)$/)
    if (augM) {
      const [, vn, op, rhs] = augM
      const cur = env[vn] ?? (op === "<<" ? [] : 0)
      const val = evalR(rhs)
      if (op === "<<") { if (Array.isArray(cur)) cur.push(val); env[vn] = cur }
      else if (op === "+=") env[vn] = (typeof cur === "string") ? cur + rubyStr(val) : cur + val
      else if (op === "-=") env[vn] = cur - val
      else if (op === "*=") env[vn] = cur * val
      continue
    }

    // Assignment
    const am = t.match(/^([A-Za-z_]\w*)\s*=(?!=)\s*(.+)$/)
    if (am) { try { env[am[1]] = evalR(am[2]) } catch {} continue }
  }
}

function _rubyEvalBlock(bodyLines, env, evalR) {
  let last = null
  for (const bl of bodyLines) {
    const t = bl.trim()
    if (!t || t.startsWith("#")) continue
    try { last = evalR(t) } catch {}
  }
  return last
}

// PHP-specific: find concatenation dot that is not part of .= or number
function _phpFindDot(expr) {
  let depth = 0, inStr = false, strChar = ""
  for (let i = 1; i < expr.length - 1; i++) {
    const ch = expr[i]
    if (inStr) { if (ch === strChar && expr[i-1] !== "\\") inStr = false; continue }
    if (ch === '"' || ch === "'") { inStr = true; strChar = ch; continue }
    if ("([{".includes(ch)) { depth++; continue }
    if (")]}".includes(ch)) { depth--; continue }
    if (ch === "." && depth === 0 && expr[i+1] !== "=" && !/\d/.test(expr[i-1])) return i
  }
  return -1
}

// ── SQL Engine ────────────────────────────────────────────────────
// Full in-browser SQL simulator with table rendering

function _sqlEngine() {
  const tables  = {}   // { name: { cols: [...], rows: [{...}] } }
  const views   = {}   // { name: sqlString }
  const results = []   // array of { type, data, cols, message }

  // ── Tokenizer ─────────────────────────────────────────────────
  const tokenize = (sql) => {
    // Split into statements by semicolon (outside quotes)
    const stmts = []
    let cur = "", inStr = false, strChar = ""
    for (const ch of sql) {
      if (inStr) { cur += ch; if (ch === strChar) inStr = false }
      else if (ch === "'" || ch === '"') { inStr = true; strChar = ch; cur += ch }
      else if (ch === ";") { const t = cur.trim(); if (t) stmts.push(t); cur = "" }
      else cur += ch
    }
    const t = cur.trim(); if (t) stmts.push(t)
    return stmts
  }

  // ── Value parser ──────────────────────────────────────────────
  const parseVal = (v) => {
    if (v === undefined || v === null || /^null$/i.test(String(v))) return null
    const s = String(v).trim()
    if ((s.startsWith("'") && s.endsWith("'")) || (s.startsWith('"') && s.endsWith('"'))) return s.slice(1, -1)
    if (/^-?\d+(\.\d+)?$/.test(s)) return parseFloat(s)
    if (/^true$/i.test(s)) return true
    if (/^false$/i.test(s)) return false
    return s
  }

  // ── Condition evaluator ───────────────────────────────────────
  const evalCond = (cond, row, colMap) => {
    if (!cond) return true
    cond = cond.trim()

    // Handle AND / OR (simple left-to-right)
    const andIdx = cond.toUpperCase().indexOf(" AND ")
    const orIdx  = cond.toUpperCase().indexOf(" OR ")

    if (andIdx > -1 && (orIdx === -1 || andIdx < orIdx)) {
      return evalCond(cond.slice(0, andIdx), row, colMap) &&
             evalCond(cond.slice(andIdx + 5), row, colMap)
    }
    if (orIdx > -1) {
      return evalCond(cond.slice(0, orIdx), row, colMap) ||
             evalCond(cond.slice(orIdx + 4), row, colMap)
    }

    // NOT
    if (/^NOT\s+/i.test(cond)) return !evalCond(cond.slice(4), row, colMap)

    // BETWEEN
    const betM = cond.match(/^([\w.]+)\s+BETWEEN\s+(.+?)\s+AND\s+(.+)$/i)
    if (betM) {
      const v = resolveCol(betM[1].trim(), row, colMap)
      const lo = parseVal(betM[2].trim()), hi = parseVal(betM[3].trim())
      return v >= lo && v <= hi
    }

    // NOT IN
    const ninM = cond.match(/^([\w.]+)\s+NOT\s+IN\s*\((.+)\)$/i)
    if (ninM) {
      const v   = resolveCol(ninM[1].trim(), row, colMap)
      const lst = splitArgs(ninM[2]).map(x => parseVal(x.trim()))
      return !lst.some(x => String(x) === String(v))
    }

    // IN
    const inM = cond.match(/^([\w.]+)\s+IN\s*\((.+)\)$/i)
    if (inM) {
      const v   = resolveCol(inM[1].trim(), row, colMap)
      const lst = splitArgs(inM[2]).map(x => parseVal(x.trim()))
      return lst.some(x => String(x) === String(v))
    }

    // IS NOT NULL
    if (/\s+IS\s+NOT\s+NULL$/i.test(cond)) {
      const col = cond.replace(/\s+IS\s+NOT\s+NULL$/i, "").trim()
      return resolveCol(col, row, colMap) !== null
    }

    // IS NULL
    if (/\s+IS\s+NULL$/i.test(cond)) {
      const col = cond.replace(/\s+IS\s+NULL$/i, "").trim()
      return resolveCol(col, row, colMap) === null
    }

    // LIKE
    const likeM = cond.match(/^([\w.]+)\s+(NOT\s+)?LIKE\s+(.+)$/i)
    if (likeM) {
      const v       = String(resolveCol(likeM[1].trim(), row, colMap) ?? "")
      const pattern = parseVal(likeM[3].trim())
      const regex   = new RegExp("^" + String(pattern).replace(/%/g, ".*").replace(/_/g, ".") + "$", "i")
      const match   = regex.test(v)
      return likeM[2] ? !match : match
    }

    // Comparison operators
    const cmpM = cond.match(/^(.+?)\s*(>=|<=|!=|<>|>|<|=)\s*(.+)$/)
    if (cmpM) {
      let lhs = resolveExpr(cmpM[1].trim(), row, colMap)
      let rhs = resolveExpr(cmpM[3].trim(), row, colMap)
      const op = cmpM[2]
      if (lhs !== null && rhs !== null && !isNaN(lhs) && !isNaN(rhs)) {
        lhs = parseFloat(lhs); rhs = parseFloat(rhs)
      }
      if (op === "=")   return String(lhs) === String(rhs)
      if (op === "!=" || op === "<>") return String(lhs) !== String(rhs)
      if (op === ">")   return parseFloat(lhs) > parseFloat(rhs)
      if (op === "<")   return parseFloat(lhs) < parseFloat(rhs)
      if (op === ">=")  return parseFloat(lhs) >= parseFloat(rhs)
      if (op === "<=")  return parseFloat(lhs) <= parseFloat(rhs)
    }
    return true
  }

  const resolveCol = (name, row, colMap) => {
    if (!name) return null
    const key = name.toLowerCase().replace(/^.*\./, "")
    if (row[key] !== undefined) return row[key]
    if (colMap && colMap[key] !== undefined) return colMap[key]
    return null
  }

  const resolveExpr = (expr, row, colMap) => {
    expr = expr.trim()
    // String literal
    if ((expr.startsWith("'") && expr.endsWith("'")) ||
        (expr.startsWith('"') && expr.endsWith('"'))) return expr.slice(1, -1)
    // Number literal
    if (/^-?\d+(\.\d+)?$/.test(expr)) return parseFloat(expr)
    // NULL
    if (/^null$/i.test(expr)) return null
    // Boolean literals
    if (/^true$/i.test(expr))  return true
    if (/^false$/i.test(expr)) return false
    // Function calls
    const fnResult = evalSqlFn(expr, row, colMap)
    if (fnResult !== undefined) return fnResult
    // Arithmetic
    const arith = sqlArith(expr, row, colMap)
    if (arith !== null) return arith
    // Column ref
    return resolveCol(expr, row, colMap)
  }

  // String and math functions
  const evalSqlFn = (expr, row, colMap) => {
    const m = expr.match(/^(\w+)\s*\((.*)?\)$/s)
    if (!m) return undefined
    const [, fn, argRaw] = m
    const args = splitArgs(argRaw || "").map(a => resolveExpr(a.trim(), row, colMap))
    const a0 = args[0], a1 = args[1], a2 = args[2]
    const fnU = fn.toUpperCase()

    if (fnU === "UPPER")     return String(a0 ?? "").toUpperCase()
    if (fnU === "LOWER")     return String(a0 ?? "").toLowerCase()
    if (fnU === "LENGTH" || fnU === "LEN") return String(a0 ?? "").length
    if (fnU === "TRIM")      return String(a0 ?? "").trim()
    if (fnU === "LTRIM")     return String(a0 ?? "").trimStart()
    if (fnU === "RTRIM")     return String(a0 ?? "").trimEnd()
    if (fnU === "REPLACE")   return String(a0 ?? "").split(String(a1)).join(String(a2 ?? ""))
    if (fnU === "SUBSTR" || fnU === "SUBSTRING") {
      const s = String(a0 ?? ""), start = (parseInt(a1) || 1) - 1
      return a2 !== undefined ? s.slice(start, start + parseInt(a2)) : s.slice(start)
    }
    if (fnU === "INSTR")     { const idx = String(a0 ?? "").indexOf(String(a1 ?? "")); return idx === -1 ? 0 : idx + 1 }
    if (fnU === "ROUND")     return parseFloat((parseFloat(a0) || 0).toFixed(parseInt(a1) || 0))
    if (fnU === "ABS")       return Math.abs(parseFloat(a0) || 0)
    if (fnU === "CEIL" || fnU === "CEILING") return Math.ceil(parseFloat(a0) || 0)
    if (fnU === "FLOOR")     return Math.floor(parseFloat(a0) || 0)
    if (fnU === "COALESCE")  return args.find(x => x !== null && x !== undefined) ?? null
    if (fnU === "NULLIF")    return String(a0) === String(a1) ? null : a0
    if (fnU === "IFNULL" || fnU === "NVL" || fnU === "ISNULL") return a0 !== null && a0 !== undefined ? a0 : a1

    // ── MySQL-specific functions ──────────────────────────────────
    // CONCAT_WS(sep, s1, s2, ...) — join with separator, skip NULLs
    if (fnU === "CONCAT_WS") {
      const sep    = String(a0 ?? "")
      const parts  = args.slice(1).filter(x => x !== null && x !== undefined)
      return parts.map(String).join(sep)
    }
    // IF(condition, true_val, false_val)
    if (fnU === "IF") {
      const cond = a0
      return (cond && cond !== 0 && cond !== "" && cond !== "0") ? a1 : a2
    }
    // FORMAT(number, decimals) — number with commas
    if (fnU === "FORMAT") {
      const n = parseFloat(String(a0)) || 0
      const d = parseInt(String(a1)) || 0
      return n.toFixed(d).replace(/\B(?=(\d{3})+(?!\d))/g, ",")
    }
    // LPAD(str, len, pad)
    if (fnU === "LPAD") {
      const s = String(a0 ?? ""), len = parseInt(a1) || 0, pad = String(a2 ?? " ")
      if (s.length >= len) return s.slice(0, len)
      const needed = len - s.length
      return pad.repeat(Math.ceil(needed / pad.length)).slice(0, needed) + s
    }
    // RPAD(str, len, pad)
    if (fnU === "RPAD") {
      const s = String(a0 ?? ""), len = parseInt(a1) || 0, pad = String(a2 ?? " ")
      if (s.length >= len) return s.slice(0, len)
      return s + pad.repeat(Math.ceil((len - s.length) / pad.length)).slice(0, len - s.length)
    }
    // REPEAT(str, n)
    if (fnU === "REPEAT") return String(a0 ?? "").repeat(parseInt(a1) || 0)
    // CHAR_LENGTH / CHARACTER_LENGTH
    if (fnU === "CHAR_LENGTH" || fnU === "CHARACTER_LENGTH") return String(a0 ?? "").length
    // FIELD(val, v1, v2, ...) — 1-based position
    if (fnU === "FIELD") {
      const idx = args.slice(1).findIndex(v => String(v) === String(a0))
      return idx === -1 ? 0 : idx + 1
    }
    // FIND_IN_SET(val, 'a,b,c')
    if (fnU === "FIND_IN_SET") {
      const list = String(a1 ?? "").split(",")
      const idx  = list.findIndex(x => x.trim() === String(a0))
      return idx === -1 ? 0 : idx + 1
    }
    // GROUP_CONCAT(col) — handled by aggregation
    if (fnU === "GROUP_CONCAT") return undefined  // Let aggregation handle it
    // DATEDIFF(d1, d2) — days between dates
    if (fnU === "DATEDIFF") {
      try {
        const t1 = new Date(String(a0)).getTime()
        const t2 = new Date(String(a1)).getTime()
        return Math.round((t1 - t2) / 86400000)
      } catch { return null }
    }
    // DATE_FORMAT(date, format_str)
    if (fnU === "DATE_FORMAT") {
      try {
        const d   = new Date(String(a0))
        if (isNaN(d)) return null
        const fmt = String(a1 ?? "").replace(/'/g, "")
        const pad = n => String(n).padStart(2, "0")
        const months = ["January","February","March","April","May","June","July","August","September","October","November","December"]
        const monthsS= ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
        const days   = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
        const daysS  = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"]
        const ordinal = n => { const s=["th","st","nd","rd"]; const v=n%100; return n+(s[(v-20)%10]||s[v]||s[0]) }
        return fmt
          .replace(/%Y/g, d.getFullYear())
          .replace(/%y/g, String(d.getFullYear()).slice(-2))
          .replace(/%m/g, pad(d.getMonth() + 1))
          .replace(/%d/g, pad(d.getDate()))
          .replace(/%D/g, ordinal(d.getDate()))
          .replace(/%H/g, pad(d.getHours()))
          .replace(/%i/g, pad(d.getMinutes()))
          .replace(/%s/g, pad(d.getSeconds()))
          .replace(/%M/g, months[d.getMonth()])
          .replace(/%b/g, monthsS[d.getMonth()])
          .replace(/%W/g, days[d.getDay()])
          .replace(/%a/g, daysS[d.getDay()])
          .replace(/%j/g, String(Math.ceil((d - new Date(d.getFullYear(),0,1))/86400000)))
      } catch { return null }
    }
    // DATE_ADD(date, INTERVAL n unit) — handled in translate
    if (fnU === "DATE_ADD") {
      try {
        const d       = new Date(String(a0))
        const intStr  = String(a1 ?? "").replace(/INTERVAL\s*/i, "").trim()
        const intM    = intStr.match(/^(\d+)\s+(\w+)$/i)
        if (!intM) return String(a0)
        const n = parseInt(intM[1]), unit = intM[2].toUpperCase()
        if (unit === "DAY")   d.setDate(d.getDate() + n)
        if (unit === "MONTH") d.setMonth(d.getMonth() + n)
        if (unit === "YEAR")  d.setFullYear(d.getFullYear() + n)
        if (unit === "HOUR")  d.setHours(d.getHours() + n)
        return d.toISOString().slice(0, 10)
      } catch { return null }
    }
    // DATE_SUB(date, INTERVAL n unit)
    if (fnU === "DATE_SUB") {
      try {
        const d      = new Date(String(a0))
        const intStr = String(a1 ?? "").replace(/INTERVAL\s*/i, "").trim()
        const intM   = intStr.match(/^(\d+)\s+(\w+)$/i)
        if (!intM) return String(a0)
        const n = parseInt(intM[1]), unit = intM[2].toUpperCase()
        if (unit === "DAY")   d.setDate(d.getDate() - n)
        if (unit === "MONTH") d.setMonth(d.getMonth() - n)
        if (unit === "YEAR")  d.setFullYear(d.getFullYear() - n)
        return d.toISOString().slice(0, 10)
      } catch { return null }
    }
    // TIMESTAMPDIFF(unit, d1, d2)
    if (fnU === "TIMESTAMPDIFF") {
      try {
        const unit = String(a0).toUpperCase()
        const d1   = new Date(String(a1)), d2 = new Date(String(a2))
        const ms   = d2 - d1
        if (unit === "SECOND") return Math.round(ms / 1000)
        if (unit === "MINUTE") return Math.round(ms / 60000)
        if (unit === "HOUR")   return Math.round(ms / 3600000)
        if (unit === "DAY")    return Math.round(ms / 86400000)
        if (unit === "MONTH")  return (d2.getFullYear() - d1.getFullYear()) * 12 + d2.getMonth() - d1.getMonth()
        if (unit === "YEAR")   return d2.getFullYear() - d1.getFullYear()
      } catch { return null }
    }
    // NOW() / CURRENT_TIMESTAMP() / SYSDATE()
    if (fnU === "NOW" || fnU === "CURRENT_TIMESTAMP" || fnU === "SYSDATE") {
      return new Date().toISOString().slice(0, 19).replace("T", " ")
    }
    // CURDATE() / CURRENT_DATE()
    if (fnU === "CURDATE" || fnU === "CURRENT_DATE") return new Date().toISOString().slice(0, 10)
    // CURTIME() / CURRENT_TIME()
    if (fnU === "CURTIME" || fnU === "CURRENT_TIME")  return new Date().toISOString().slice(11, 19)
    // DAYNAME(date)
    if (fnU === "DAYNAME") {
      try { return ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"][new Date(String(a0)).getDay()] } catch { return null }
    }
    // MONTHNAME(date)
    if (fnU === "MONTHNAME") {
      try { return ["January","February","March","April","May","June","July","August","September","October","November","December"][new Date(String(a0)).getMonth()] } catch { return null }
    }
    // DAYOFWEEK(date) — 1=Sunday..7=Saturday
    if (fnU === "DAYOFWEEK") {
      try { return new Date(String(a0)).getDay() + 1 } catch { return null }
    }
    // WEEK(date)
    if (fnU === "WEEK") {
      try {
        const d   = new Date(String(a0))
        const jan = new Date(d.getFullYear(), 0, 1)
        return Math.ceil(((d - jan) / 86400000 + jan.getDay() + 1) / 7)
      } catch { return null }
    }
    // STR_TO_DATE(str, format) — simplified
    if (fnU === "STR_TO_DATE") {
      try { return new Date(String(a0)).toISOString().slice(0, 10) } catch { return null }
    }
    // LAST_INSERT_ID() — always return 0 in simulator
    if (fnU === "LAST_INSERT_ID") return 0
    // VERSION()
    if (fnU === "VERSION") return "8.0.35 (MySQL Simulator)"
    // DATABASE()
    if (fnU === "DATABASE") return "simulator_db"
    // USER() / CURRENT_USER()
    if (fnU === "USER" || fnU === "CURRENT_USER") return "root@localhost"
    // REGEXP_LIKE(str, pattern)
    if (fnU === "REGEXP_LIKE") {
      try { return new RegExp(String(a1), "i").test(String(a0)) } catch { return false }
    }
    if (fnU === "CAST") { const inner = argRaw.replace(/\s+AS\s+.+$/i, "").trim(); return resolveExpr(inner, row, colMap) }
    if (fnU === "DATE")      return a0 === "'now'" || a0 === "now" ? new Date().toISOString().slice(0,10) : String(a0)
    if (fnU === "DATETIME")  return new Date().toISOString().slice(0,19).replace("T", " ")
    if (fnU === "STRFTIME") {
      const fmt = String(a0).replace(/'/g,"")
      const d   = new Date()
      return fmt.replace(/%Y/g, d.getFullYear()).replace(/%m/g, String(d.getMonth()+1).padStart(2,"0"))
                .replace(/%d/g, String(d.getDate()).padStart(2,"0"))
    }
    if (fnU === "YEAR")  return new Date(String(a0)).getFullYear()
    if (fnU === "MONTH") return new Date(String(a0)).getMonth() + 1
    if (fnU === "DAY")   return new Date(String(a0)).getDate()
    if (fnU === "COUNT" || fnU === "SUM" || fnU === "AVG" || fnU === "MIN" || fnU === "MAX") {
      return undefined  // handled separately in aggregation
    }
    // ── PostgreSQL-specific functions ─────────────────────────────
    if (fnU === "INITCAP")  return String(a0 ?? "").toLowerCase().replace(/\b\w/g, c => c.toUpperCase())
    if (fnU === "REVERSE")  return String(a0 ?? "").split("").reverse().join("")
    if (fnU === "GREATEST") return args.reduce((m, v) => (v !== null && v !== undefined && v > m ? v : m), args[0])
    if (fnU === "LEAST")    return args.reduce((m, v) => (v !== null && v !== undefined && v < m ? v : m), args[0])
    if (fnU === "MD5")      return "[md5-hash]"
    if (fnU === "GEN_RANDOM_UUID" || fnU === "UUID_GENERATE_V4") {
      return "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, c => {
        const r = Math.random() * 16 | 0; return (c === "x" ? r : r & 0x3 | 0x8).toString(16)
      })
    }
    if (fnU === "POSITION") {
      const posM = argRaw.match(/^(.+?)\s+IN\s+(.+)$/i)
      if (posM) {
        const needle   = resolveExpr(posM[1].trim(), row, colMap)
        const haystack = resolveExpr(posM[2].trim(), row, colMap)
        const idx = String(haystack ?? "").indexOf(String(needle ?? ""))
        return idx === -1 ? 0 : idx + 1
      }
    }
    if (fnU === "EXTRACT") {
      const extM = argRaw.match(/^(\w+)\s+FROM\s+(.+)$/i)
      if (extM) {
        const part = extM[1].toUpperCase()
        const dateVal = resolveExpr(extM[2].trim(), row, colMap)
        try {
          const d = new Date(String(dateVal))
          if (isNaN(d)) return null
          if (part === "YEAR")   return d.getFullYear()
          if (part === "MONTH")  return d.getMonth() + 1
          if (part === "DAY")    return d.getDate()
          if (part === "HOUR")   return d.getHours()
          if (part === "MINUTE") return d.getMinutes()
          if (part === "SECOND") return d.getSeconds()
          if (part === "DOW")    return d.getDay()
          if (part === "WEEK") {
            const jan = new Date(d.getFullYear(), 0, 1)
            return Math.ceil(((d - jan) / 86400000 + jan.getDay() + 1) / 7)
          }
        } catch { return null }
      }
    }
    if (fnU === "DATE_TRUNC") {
      try {
        const prec = String(a0 ?? "").replace(/'/g, "").toLowerCase()
        const d    = new Date(String(a1 ?? ""))
        if (isNaN(d)) return null
        const pad  = n => String(n).padStart(2, "0")
        if (prec === "year")  return `${d.getFullYear()}-01-01`
        if (prec === "month") return `${d.getFullYear()}-${pad(d.getMonth() + 1)}-01`
        if (prec === "week") {
          const day = d.getDay()
          const mon = new Date(d); mon.setDate(d.getDate() - (day === 0 ? 6 : day - 1))
          return mon.toISOString().slice(0, 10)
        }
        if (prec === "day")   return d.toISOString().slice(0, 10)
        if (prec === "hour")  return `${d.toISOString().slice(0, 13)}:00:00`
      } catch { return null }
    }
    if (fnU === "TO_CHAR") {
      try {
        const d   = new Date(String(a0 ?? ""))
        const fmt = String(a1 ?? "").replace(/'/g, "")
        if (!isNaN(d)) {
          const pad    = n => String(n).padStart(2, "0")
          const months = ["January","February","March","April","May","June","July","August","September","October","November","December"]
          const monthsS = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
          const days    = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
          return fmt
            .replace(/YYYY/g, d.getFullYear())
            .replace(/YY/g, String(d.getFullYear()).slice(-2))
            .replace(/Month/g, months[d.getMonth()])
            .replace(/Mon/g, monthsS[d.getMonth()])
            .replace(/MM/g, pad(d.getMonth() + 1))
            .replace(/DD/g, pad(d.getDate()))
            .replace(/Day/g, days[d.getDay()])
            .replace(/HH24/g, pad(d.getHours()))
            .replace(/HH/g, pad(d.getHours() % 12 || 12))
            .replace(/MI/g, pad(d.getMinutes()))
            .replace(/SS/g, pad(d.getSeconds()))
        }
        return String(a0 ?? "")
      } catch { return null }
    }
    if (fnU === "CURRENT_DATABASE") return "pg_simulator"
    if (fnU === "VERSION")          return "PostgreSQL 16.0 (Simulator)"
    if (fnU === "CURRENT_USER")     return "postgres"
    if (fnU === "PG_TYPEOF")        return "text"
    return undefined
  }

  const sqlArith = (expr, row, colMap) => {
    // Simple arithmetic: a op b
    const ops = ["+", "-", "*", "/"]
    for (const op of ops) {
      // Find op not inside parentheses / strings
      let depth = 0, inStr = false, strCh = ""
      for (let i = 1; i < expr.length; i++) {
        const ch = expr[i]
        if (inStr) { if (ch === strCh) inStr = false; continue }
        if (ch === "'" || ch === '"') { inStr = true; strCh = ch; continue }
        if ("([".includes(ch)) { depth++; continue }
        if (")]".includes(ch)) { depth--; continue }
        if (ch === op && depth === 0) {
          const a = resolveExpr(expr.slice(0, i).trim(), row, colMap)
          const b = resolveExpr(expr.slice(i + 1).trim(), row, colMap)
          if (a === null || b === null) return null
          if (op === "+") return typeof a === "string" || typeof b === "string" ? String(a) + String(b) : parseFloat(a) + parseFloat(b)
          if (op === "-") return parseFloat(a) - parseFloat(b)
          if (op === "*") return parseFloat(a) * parseFloat(b)
          if (op === "/") return parseFloat(b) === 0 ? null : parseFloat(a) / parseFloat(b)
        }
      }
    }
    // String concat ||
    const concatIdx = expr.indexOf("||")
    if (concatIdx > -1) {
      const a = resolveExpr(expr.slice(0, concatIdx).trim(), row, colMap)
      const b = resolveExpr(expr.slice(concatIdx + 2).trim(), row, colMap)
      return String(a ?? "") + String(b ?? "")
    }
    return null
  }

  // Split SQL args (comma-aware of parens and quotes)
  const splitArgs = (str) => {
    const args = []; let cur = "", depth = 0, inStr = false, strCh = ""
    for (const ch of str) {
      if (inStr) { cur += ch; if (ch === strCh) inStr = false }
      else if (ch === "'" || ch === '"') { inStr = true; strCh = ch; cur += ch }
      else if ("([".includes(ch)) { depth++; cur += ch }
      else if (")]".includes(ch)) { depth--; cur += ch }
      else if (ch === "," && depth === 0) { args.push(cur.trim()); cur = "" }
      else cur += ch
    }
    if (cur.trim()) args.push(cur.trim())
    return args
  }

  // ── SELECT column resolver ─────────────────────────────────────
  const resolveSelectCols = (colsStr, row, colMap, allCols) => {
    const result = {}
    const labels = []

    if (colsStr.trim() === "*") {
      allCols.forEach(c => { result[c] = row[c]; labels.push(c) })
      return { result, labels }
    }

    const parts = splitArgs(colsStr)
    for (const part of parts) {
      const t = part.trim()
      // Detect alias
      const aliasM = t.match(/^(.+?)\s+AS\s+(\w+)$/i) || t.match(/^(.+?)\s+(\w+)$/i)
      let expr = t, label = t

      if (aliasM && !/^CASE\s/i.test(t)) {
        expr  = aliasM[1].trim()
        label = aliasM[2].trim()
      }

      // CASE WHEN expression
      if (/^CASE\s/i.test(t)) {
        const caseResult = evalCase(t, row, colMap)
        const caseLabelM = t.match(/END\s+AS\s+(\w+)$/i)
        const caseLabel  = caseLabelM ? caseLabelM[1] : "case"
        result[caseLabel] = caseResult
        labels.push(caseLabel)
        continue
      }

      const val = resolveExpr(expr, row, colMap)
      // Clean label
      const cleanLabel = label.replace(/^[\w.]+\./, "").replace(/[()'"]/g, "")
      result[cleanLabel] = val
      labels.push(cleanLabel)
    }
    return { result, labels }
  }

  const evalCase = (caseStr, row, colMap) => {
    const branches = []
    const whenRe   = /WHEN\s+(.+?)\s+THEN\s+(.+?)(?=\s+WHEN|\s+ELSE|\s+END)/gi
    let m
    while ((m = whenRe.exec(caseStr)) !== null) {
      branches.push({ cond: m[1], val: m[2] })
    }
    const elseM = caseStr.match(/ELSE\s+(.+?)\s+END/i)
    for (const { cond, val } of branches) {
      if (evalCond(cond, row, colMap)) return resolveExpr(val, row, colMap)
    }
    return elseM ? resolveExpr(elseM[1].trim(), row, colMap) : null
  }

  // ── Aggregate computing ────────────────────────────────────────
  const computeAgg = (fn, colExpr, rows, colMap) => {
    const fnU = fn.toUpperCase()
    if (fnU === "COUNT") {
      if (colExpr === "*") return rows.length
      return rows.filter(r => resolveExpr(colExpr, r, colMap) !== null).length
    }
    // GROUP_CONCAT — MySQL-specific aggregate
    if (fnU === "GROUP_CONCAT") {
      // Parse: col [ORDER BY col [ASC|DESC]] [SEPARATOR 'sep']
      let sep = ","
      let colPart = colExpr
      const sepM  = colPart.match(/SEPARATOR\s+['"]([^'"]*)['"]/i)
      if (sepM) { sep = sepM[1]; colPart = colPart.replace(sepM[0], "").trim() }
      // ORDER BY within GROUP_CONCAT
      const ordM = colPart.match(/ORDER\s+BY\s+(.+?)(?=\s*$)/i)
      let orderedRows = [...rows]
      if (ordM) {
        const ordCol = ordM[1].replace(/\s+(ASC|DESC)$/i, "").trim().toLowerCase()
        const desc   = /DESC$/i.test(ordM[1])
        orderedRows.sort((a, b) => {
          const av = a[ordCol], bv = b[ordCol]
          return desc ? (av < bv ? 1 : -1) : (av > bv ? 1 : -1)
        })
        colPart = colPart.replace(/ORDER\s+BY.+$/i, "").trim()
      }
      return orderedRows
        .map(r => resolveExpr(colPart, r, colMap))
        .filter(v => v !== null && v !== undefined)
        .map(String)
        .join(sep)
    }
    // STRING_AGG — PostgreSQL (same as GROUP_CONCAT with SEPARATOR)
    if (fnU === "STRING_AGG") {
      let sep = ",", colPart = colExpr
      const sepM = colPart.match(/SEPARATOR\s+['"]([^'"]*)['"]/i)
      if (sepM) { sep = sepM[1]; colPart = colPart.replace(sepM[0], "").trim() }
      const ordM = colPart.match(/ORDER\s+BY\s+(.+?)(?=\s*$)/i)
      let ordRows = [...rows]
      if (ordM) {
        const oc = ordM[1].replace(/\s+(ASC|DESC)$/i, "").trim().toLowerCase()
        const dc = /DESC$/i.test(ordM[1])
        ordRows.sort((a, b) => { const av=a[oc],bv=b[oc]; return dc?(av<bv?1:-1):(av>bv?1:-1) })
        colPart = colPart.replace(/ORDER\s+BY.+$/i, "").trim()
      }
      return ordRows.map(r => resolveExpr(colPart, r, colMap)).filter(v=>v!==null&&v!==undefined).map(String).join(sep)
    }
    // ARRAY_AGG — PostgreSQL: returns {val1,val2,...}
    if (fnU === "ARRAY_AGG") {
      const vals2 = rows.map(r => resolveExpr(colExpr, r, colMap)).filter(v=>v!==null).map(String)
      return "{" + vals2.join(",") + "}"
    }
    const vals = rows.map(r => resolveExpr(colExpr, r, colMap)).filter(v => v !== null).map(Number)
    if (fnU === "SUM")  return vals.reduce((a, b) => a + b, 0)
    if (fnU === "AVG")  return vals.length ? vals.reduce((a, b) => a + b, 0) / vals.length : null
    if (fnU === "MIN")  return vals.length ? Math.min(...vals) : null
    if (fnU === "MAX")  return vals.length ? Math.max(...vals) : null
    return null
  }

  // Check if SELECT cols contain aggregates (including GROUP_CONCAT/STRING_AGG/ARRAY_AGG)
  const hasAgg = (colsStr) => /\b(COUNT|SUM|AVG|MIN|MAX|GROUP_CONCAT|STRING_AGG|ARRAY_AGG)\s*\(/i.test(colsStr)

  const resolveAggCols = (colsStr, rows, groupKey, allCols) => {
    const parts  = splitArgs(colsStr)
    const result = {}
    const labels = []

    for (const part of parts) {
      const t = part.trim()
      const aliasM = t.match(/^(.+?)\s+AS\s+(\w+)$/i)
      const expr   = aliasM ? aliasM[1].trim() : t
      let label    = aliasM ? aliasM[2] : t.replace(/\s+as\s+\w+$/i, "")

      const aggM = expr.match(/^(COUNT|SUM|AVG|MIN|MAX|GROUP_CONCAT|STRING_AGG|ARRAY_AGG)\s*\((.+)\)$/i)
      if (aggM) {
        const val  = computeAgg(aggM[1], aggM[2], rows, {})
        const cleanLabel = label.replace(/[()*, ]/g, "_").replace(/__+/g, "_")
        result[cleanLabel] = typeof val === "number" ? (Number.isInteger(val) ? val : Math.round(val * 1000) / 1000) : val
        labels.push(cleanLabel)
      } else {
        // Non-aggregate: use value from first row
        const cleanLabel = label.replace(/^[\w.]*\./, "").replace(/[()'"]/g, "")
        result[cleanLabel] = rows.length > 0 ? resolveExpr(expr, rows[0], {}) : null
        labels.push(cleanLabel)
      }
    }
    return { result, labels }
  }

  // ── Statement executors ────────────────────────────────────────
  const execCreate = (sql) => {
    const m = sql.match(/^CREATE\s+TABLE\s+(?:IF\s+NOT\s+EXISTS\s+)?(\w+)\s*\((.+)\)$/is)
    if (!m) return null
    const name = m[1].toLowerCase()
    if (tables[name] && /IF\s+NOT\s+EXISTS/i.test(sql)) {
      return { type: "message", message: `Table '${name}' already exists.` }
    }
    // Parse column definitions
    const cols = []
    const colDefs = splitArgs(m[2])
    for (const def of colDefs) {
      const d = def.trim()
      if (/^(PRIMARY\s+KEY|FOREIGN\s+KEY|UNIQUE|CHECK|CONSTRAINT)/i.test(d)) continue
      const parts = d.split(/\s+/)
      if (parts.length >= 1) cols.push(parts[0].toLowerCase())
    }
    tables[name] = { cols, rows: [] }
    return { type: "message", message: `Table '${name}' created. (${cols.length} columns: ${cols.join(", ")})` }
  }

  const execDrop = (sql) => {
    const m = sql.match(/^DROP\s+TABLE\s+(?:IF\s+EXISTS\s+)?(\w+)$/i)
    if (!m) return null
    const name = m[1].toLowerCase()
    if (tables[name]) { delete tables[name]; return { type: "message", message: `Table '${name}' dropped.` } }
    return { type: "message", message: `Table '${name}' does not exist.` }
  }

  const execCreateView = (sql) => {
    const m = sql.match(/^CREATE\s+(?:OR\s+REPLACE\s+)?VIEW\s+(\w+)\s+AS\s+(.+)$/is)
    if (!m) return null
    views[m[1].toLowerCase()] = m[2].trim()
    return { type: "message", message: `View '${m[1]}' created.` }
  }

  const execDropView = (sql) => {
    const m = sql.match(/^DROP\s+VIEW\s+(?:IF\s+EXISTS\s+)?(\w+)$/i)
    if (!m) return null
    delete views[m[1].toLowerCase()]
    return { type: "message", message: `View '${m[1]}' dropped.` }
  }

  const execCreateIndex = (sql) => {
    const m = sql.match(/^CREATE\s+(?:UNIQUE\s+)?INDEX\s+(\w+)\s+ON\s+(\w+)\s*\((.+)\)$/i)
    if (!m) return null
    return { type: "message", message: `Index '${m[1]}' created on '${m[2]}' (${m[3]}).` }
  }

  const execInsert = (sql) => {
    // INSERT INTO table (cols) VALUES (vals), (vals), ...
    const m = sql.match(/^INSERT\s+INTO\s+(\w+)\s*(?:\(([^)]+)\))?\s*VALUES\s*(.+)$/is)
    if (!m) return null
    const name = m[1].toLowerCase()
    const tbl  = tables[name]
    if (!tbl) return { type: "message", message: `Error: Table '${name}' does not exist.` }

    const colList = m[2] ? m[2].split(",").map(c => c.trim().toLowerCase()) : tbl.cols

    // Split multiple value tuples
    const valPart = m[3].trim()
    const tupleRe = /\(([^)]+)\)/g
    let tm, count = 0
    while ((tm = tupleRe.exec(valPart)) !== null) {
      const vals = splitArgs(tm[1]).map(v => parseVal(v.trim()))
      const row  = {}
      tbl.cols.forEach(c => row[c] = null)
      colList.forEach((c, i) => { if (i < vals.length) row[c] = vals[i] })
      tbl.rows.push(row)
      count++
    }
    return { type: "message", message: `${count} row(s) inserted into '${name}'.` }
  }

  const execSelect = (sql) => {
    // Parse SELECT
    const sel = sql.match(/^SELECT\s+(DISTINCT\s+)?(.+?)\s+FROM\s+(.+?)(?:\s+WHERE\s+(.+?))?(?:\s+GROUP\s+BY\s+(.+?))?(?:\s+HAVING\s+(.+?))?(?:\s+ORDER\s+BY\s+(.+?))?(?:\s+LIMIT\s+(\d+)(?:\s+OFFSET\s+(\d+))?)?$/is)
    if (!sel) return null

    const [, isDistinct, colsStr, fromStr, whereStr, groupByStr, havingStr, orderByStr, limitStr, offsetStr] = sel

    // Resolve source (table, view, alias, or JOIN)
    let rows = [], allCols = []
    const resolved = resolveFrom(fromStr.trim())
    if (resolved.error) return { type: "message", message: resolved.error }
    rows    = resolved.rows
    allCols = resolved.cols

    // WHERE filter
    if (whereStr) rows = rows.filter(r => evalCond(whereStr.trim(), r, {}))

    // GROUP BY + aggregates
    if (groupByStr || hasAgg(colsStr)) {
      const groupCols = groupByStr ? groupByStr.split(",").map(c => c.trim().toLowerCase().replace(/^[\w.]+\./, "")) : []

      let groups = {}
      if (groupCols.length > 0) {
        for (const row of rows) {
          const key = groupCols.map(c => String(row[c] ?? "")).join("|")
          if (!groups[key]) groups[key] = []
          groups[key].push(row)
        }
      } else {
        groups["__all__"] = rows
      }

      let aggRows = [], aggLabels = []
      for (const [, gRows] of Object.entries(groups)) {
        const { result, labels } = resolveAggCols(colsStr, gRows, null, allCols)
        aggRows.push(result)
        aggLabels = labels
      }

      // HAVING
      if (havingStr) {
        aggRows = aggRows.filter(r => {
          const havCond = havingStr.replace(/\b(COUNT|SUM|AVG|MIN|MAX)\s*\((.+?)\)/gi, (_, fn, col) => {
            const aggKey = `${fn.toUpperCase()}_${col}`.replace(/[* ]/g,"_")
            return String(r[aggKey] ?? r[Object.keys(r).find(k => k.toLowerCase().includes(fn.toLowerCase())) ?? ""] ?? 0)
          })
          return evalCond(havingStr.replace(/\b(COUNT|SUM|AVG|MIN|MAX)\s*\((.+?)\)/gi, (_, fn, col) => {
            const gRsub = Object.values(groups).find(gr => gr[0] && Object.entries(r).every(([k,v]) => gr[0][k] === v || true)) || []
            return String(computeAgg(fn, col, Object.values(groups).find(gr => gr.length > 0 && resolveExpr(col === "*" ? "1" : col, gr[0], {}) !== undefined) || gRsub, {}) ?? 0)
          }), r, {})
        })
      }

      if (orderByStr) aggRows = sortRows(aggRows, orderByStr, {})
      let off = parseInt(offsetStr) || 0
      if (off) aggRows = aggRows.slice(off)
      if (limitStr) aggRows = aggRows.slice(0, parseInt(limitStr))
      return { type: "table", cols: aggLabels, rows: aggRows }
    }

    // Sort
    if (orderByStr) rows = sortRows(rows, orderByStr, {})

    // OFFSET
    const off = parseInt(offsetStr) || 0
    if (off) rows = rows.slice(off)

    // LIMIT
    if (limitStr) rows = rows.slice(0, parseInt(limitStr))

    // Project columns
    const projected = []
    let   labels    = []
    for (const row of rows) {
      const { result, labels: lbls } = resolveSelectCols(colsStr.trim(), row, {}, allCols)
      projected.push(result)
      labels = lbls
    }

    // DISTINCT
    if (isDistinct) {
      const seen = new Set()
      return { type: "table", cols: labels, rows: projected.filter(r => {
        const k = JSON.stringify(r)
        if (seen.has(k)) return false
        seen.add(k); return true
      })}
    }

    return { type: "table", cols: labels, rows: projected }
  }

  const resolveFrom = (fromStr) => {
    // Handle JOINs
    const joinRe = /^(.+?)\s+((?:INNER|LEFT|RIGHT|FULL|CROSS)?\s*JOIN)\s+(\w+)(?:\s+(\w+))?\s+ON\s+(.+?)(?=\s+(?:INNER|LEFT|RIGHT|FULL|CROSS)?\s*JOIN|\s+WHERE|\s+GROUP|\s+ORDER|\s+LIMIT|$)/gi
    const tableAliases = {}

    // Simple table (no join)
    if (!/\bJOIN\b/i.test(fromStr)) {
      const parts = fromStr.trim().split(/\s+/)
      const name  = parts[0].toLowerCase()
      const alias = parts[1] ? parts[1].toLowerCase() : name
      tableAliases[alias] = name

      // Check views
      if (views[name]) {
        const viewResult = execSelect("SELECT " + views[name].replace(/^.*?SELECT\s+/i, ""))
        if (viewResult && viewResult.rows) {
          return { rows: viewResult.rows, cols: viewResult.cols }
        }
      }

      const tbl = tables[name]
      if (!tbl) return { error: `Error: Table '${name}' does not exist.`, rows: [], cols: [] }

      const rows = tbl.rows.map(r => {
        const nr = {}
        Object.entries(r).forEach(([k,v]) => {
          nr[k] = v
          nr[alias + "." + k] = v
          nr[name + "." + k]  = v
        })
        return nr
      })
      return { rows, cols: tbl.cols }
    }

    // Handle JOINs by building cross product
    // Parse: table1 alias1 [LEFT|INNER] JOIN table2 alias2 ON cond ...
    const joinRe2 = /([\w.]+)(?:\s+AS\s+)?(?:\s+(\w+))?\s*$/i
    const tokens  = fromStr.split(/\b((?:INNER|LEFT|RIGHT|FULL)?\s*JOIN)\b/i)

    // First table
    const firstM = tokens[0].trim().match(/^(\w+)(?:\s+(\w+))?$/)
    if (!firstM) return { error: "Cannot parse FROM clause.", rows: [], cols: [] }

    const t1name  = firstM[1].toLowerCase()
    const t1alias = (firstM[2] || firstM[1]).toLowerCase()
    const t1       = tables[t1name]
    if (!t1) return { error: `Error: Table '${t1name}' does not exist.`, rows: [], cols: [] }

    let baseRows = t1.rows.map(r => {
      const nr = {}
      t1.cols.forEach(c => {
        nr[c] = r[c]; nr[t1alias + "." + c] = r[c]; nr[t1name + "." + c] = r[c]
      })
      return nr
    })

    let allCols = [...t1.cols]

    // Process each JOIN segment
    for (let ti = 1; ti < tokens.length; ti += 2) {
      if (!tokens[ti + 1]) break
      const joinType = tokens[ti].trim().toUpperCase()
      const rest     = tokens[ti + 1].trim()
      const onIdx    = rest.toUpperCase().indexOf(" ON ")
      if (onIdx === -1) continue
      const tblPart  = rest.slice(0, onIdx).trim()
      const onCond   = rest.slice(onIdx + 4).trim()
        .replace(/\b(?:WHERE|GROUP|ORDER|LIMIT|HAVING)\b.*/i, "").trim()

      const t2m   = tblPart.match(/^(\w+)(?:\s+(?:AS\s+)?(\w+))?$/)
      if (!t2m) continue
      const t2name  = t2m[1].toLowerCase()
      const t2alias = (t2m[2] || t2m[1]).toLowerCase()
      const t2       = tables[t2name]
      if (!t2) continue

      allCols = [...new Set([...allCols, ...t2.cols])]
      const isLeft = /LEFT/i.test(joinType)

      const joined = []
      for (const r1 of baseRows) {
        let matched = false
        for (const r2 of t2.rows) {
          const combined = { ...r1 }
          t2.cols.forEach(c => {
            combined[c] = r2[c]
            combined[t2alias + "." + c] = r2[c]
            combined[t2name + "." + c]  = r2[c]
          })
          if (evalCond(onCond, combined, {})) {
            joined.push(combined)
            matched = true
          }
        }
        if (!matched && isLeft) {
          const nullRow = { ...r1 }
          t2.cols.forEach(c => { nullRow[c] = null; nullRow[t2alias + "." + c] = null })
          joined.push(nullRow)
        }
      }
      baseRows = joined
    }

    return { rows: baseRows, cols: allCols }
  }

  const sortRows = (rows, orderByStr, _colMap) => {
    const parts = orderByStr.split(",").map(s => {
      const t   = s.trim()
      const dir = /\bDESC$/i.test(t) ? -1 : 1
      const col = t.replace(/\s+(ASC|DESC)$/i, "").trim().toLowerCase().replace(/^.*\./, "")
      return { col, dir }
    })
    return [...rows].sort((a, b) => {
      for (const { col, dir } of parts) {
        const av = a[col] ?? null, bv = b[col] ?? null
        if (av === null && bv !== null) return dir
        if (bv === null && av !== null) return -dir
        if (av < bv) return -dir
        if (av > bv) return  dir
      }
      return 0
    })
  }

  const execUpdate = (sql) => {
    const m = sql.match(/^UPDATE\s+(\w+)\s+SET\s+(.+?)(?:\s+WHERE\s+(.+))?$/is)
    if (!m) return null
    const name = m[1].toLowerCase()
    const tbl  = tables[name]
    if (!tbl) return { type: "message", message: `Error: Table '${name}' does not exist.` }

    const setParts = splitArgs(m[2]).map(s => {
      const eq = s.indexOf("="); return { col: s.slice(0, eq).trim().toLowerCase(), expr: s.slice(eq + 1).trim() }
    })

    let count = 0
    tbl.rows.forEach(row => {
      if (!m[3] || evalCond(m[3].trim(), row, {})) {
        setParts.forEach(({ col, expr }) => { row[col] = resolveExpr(expr, row, {}) })
        count++
      }
    })
    return { type: "message", message: `${count} row(s) updated in '${name}'.` }
  }

  const execDelete = (sql) => {
    const m = sql.match(/^DELETE\s+FROM\s+(\w+)(?:\s+WHERE\s+(.+))?$/is)
    if (!m) return null
    const name = m[1].toLowerCase()
    const tbl  = tables[name]
    if (!tbl) return { type: "message", message: `Error: Table '${name}' does not exist.` }
    const before = tbl.rows.length
    tbl.rows = m[2] ? tbl.rows.filter(r => !evalCond(m[2].trim(), r, {})) : []
    return { type: "message", message: `${before - tbl.rows.length} row(s) deleted from '${name}'.` }
  }

  // ── Main execute function ──────────────────────────────────────
  const execute = (sql) => {
    const stmts = tokenize(sql)
    for (const stmt of stmts) {
      const s    = stmt.trim()
      const sU   = s.toUpperCase()
      let   result = null

      // Strip comments
      const clean = s.replace(/--[^\n]*/g, "").replace(/\/\*[\s\S]*?\*\//g, "").trim()
      if (!clean) continue

      if (/^CREATE\s+TABLE/i.test(clean))  result = execCreate(clean)
      else if (/^DROP\s+TABLE/i.test(clean)) result = execDrop(clean)
      else if (/^CREATE\s+(?:OR\s+REPLACE\s+)?VIEW/i.test(clean)) result = execCreateView(clean)
      else if (/^DROP\s+VIEW/i.test(clean))  result = execDropView(clean)
      else if (/^CREATE\s+(?:UNIQUE\s+)?INDEX/i.test(clean)) result = execCreateIndex(clean)
      else if (/^INSERT\s+INTO/i.test(clean)) result = execInsert(clean)
      else if (/^SELECT/i.test(clean)) result = execSelect(clean)
      else if (/^UPDATE/i.test(clean))  result = execUpdate(clean)
      else if (/^DELETE\s+FROM/i.test(clean)) result = execDelete(clean)
      else if (/^BEGIN|^COMMIT|^ROLLBACK/i.test(clean)) {
        result = { type: "message", message: `${clean.split(/\s/)[0].toUpperCase()}: Transaction command acknowledged.` }
      }
      else if (/^SAVEPOINT/i.test(clean)) result = { type: "message", message: "SAVEPOINT created." }
      else result = { type: "message", message: `-- Statement: ${clean.slice(0,60)}` }

      if (result) results.push(result)
    }
    return results
  }

  return { execute }
}

// (SQL renderer defined below as _sqlRenderHtml with isMySQL param)
// placeholder removed — see unified _sqlRenderHtml below
function _sqlRenderHtmlPlaceholder(results) {
  const rows_html = results.map(r => {
    if (r.type === "message") {
      const cls = r.message.startsWith("Error") ? "sql-error" : "sql-msg"
      return `<div class="${cls}">${r.message.replace(/</g,"&lt;").replace(/>/g,"&gt;")}</div>`
    }
    if (r.type === "table") {
      if (!r.rows || r.rows.length === 0) {
        return `<div class="sql-msg">Query executed — 0 rows returned.</div>`
      }
      const cols = r.cols || Object.keys(r.rows[0])
      const th   = cols.map(c => `<th>${c}</th>`).join("")
      const trs  = r.rows.map(row => {
        const tds = cols.map(c => {
          const v = row[c]
          const display = v === null ? '<span class="sql-null">NULL</span>' : String(v).replace(/</g,"&lt;")
          return `<td>${display}</td>`
        }).join("")
        return `<tr>${tds}</tr>`
      }).join("")
      return `<div class="sql-result-wrap">
        <div class="sql-row-count">${r.rows.length} row(s) returned</div>
        <div class="sql-table-wrap"><table class="sql-table">
          <thead><tr>${th}</tr></thead>
          <tbody>${trs}</tbody>
        </table></div></div>`
    }
    return ""
  }).join("")

  return `<!DOCTYPE html><html><head><style>
    *{box-sizing:border-box;margin:0;padding:0}
    body{background:#0b0b1e;color:#e2e0f0;font-family:'Fira Code',monospace;font-size:12.5px;padding:12px;overflow:auto}
    .sql-msg{color:#a3e635;padding:6px 8px;margin-bottom:8px;border-left:3px solid #22c55e;background:rgba(34,197,94,.08)}
    .sql-error{color:#f87171;padding:6px 8px;margin-bottom:8px;border-left:3px solid #ef4444;background:rgba(239,68,68,.08)}
    .sql-result-wrap{margin-bottom:12px}
    .sql-row-count{font-size:11px;color:#6b7280;margin-bottom:4px}
    .sql-table-wrap{overflow-x:auto}
    .sql-table{border-collapse:collapse;min-width:100%;font-size:12px}
    .sql-table th{background:#1a1a40;color:#818cf8;padding:6px 12px;text-align:left;border:1px solid #252545;white-space:nowrap;font-size:11px;text-transform:uppercase;letter-spacing:.04em}
    .sql-table td{padding:5px 12px;border:1px solid #1e1e3a;color:#e2e0f0;white-space:nowrap}
    .sql-table tr:nth-child(even) td{background:rgba(124,58,237,.04)}
    .sql-table tr:hover td{background:rgba(124,58,237,.1)}
    .sql-null{color:#4b5563;font-style:italic}
  </style></head><body>${rows_html || '<div class="sql-msg">No output yet. Write SQL and click Run.</div>'}</body></html>`
}


// ── MySQL-specific helpers ────────────────────────────────────────

// Pre-process MySQL SQL into engine-compatible SQL
function _mysqlTranslate(sql) {
  return sql
    // Strip DELIMITER commands (used for stored procedures)
    .replace(/DELIMITER\s+[^\n]+/gi, "-- DELIMITER")
    // Strip ENGINE= specifications
    .replace(/\)\s*ENGINE\s*=\s*\w+\s*;/gi, ");")
    // AUTO_INCREMENT on CREATE: mark column so engine picks it up
    // (the engine's CREATE TABLE already strips constraints, AUTO_INCREMENT is allowed)
    // Convert MySQL backtick identifiers to plain names
    .replace(/`(\w+)`/g, "$1")
    // SHOW DATABASES / TABLES → friendly message
    .replace(/SHOW\s+DATABASES\s*;?/gi, "SELECT 'Use CREATE DATABASE & USE to work with databases' AS MySQL_Tip;")
    .replace(/SHOW\s+TABLES\s*;?/gi,    "SELECT name AS Tables_in_db FROM sqlite_master WHERE type='table';")
    .replace(/SHOW\s+VARIABLES[^;]*/gi, "SELECT 'SHOW VARIABLES requires a live MySQL server' AS Note;")
    .replace(/SHOW\s+PROCESSLIST[^;]*/gi,"SELECT 'SHOW PROCESSLIST requires a live MySQL server' AS Note;")
    .replace(/SHOW\s+GRANTS[^;]*/gi,    "SELECT 'SHOW GRANTS requires a live MySQL server' AS Note;")
    // USE database_name → comment
    .replace(/USE\s+\w+\s*;?/gi, "-- USE (database selection)")
    // FLUSH PRIVILEGES → comment
    .replace(/FLUSH\s+PRIVILEGES\s*;?/gi, "-- FLUSH PRIVILEGES")
    // SET autocommit / group_concat → comment
    .replace(/SET\s+(?:autocommit|group_concat_max_len)[^;]*;?/gi, "-- SET (server variable)")
    // CREATE DATABASE / DROP DATABASE → friendly message
    .replace(/CREATE\s+DATABASE[^;]*/gi, "-- CREATE DATABASE (requires live server)")
    .replace(/DROP\s+DATABASE[^;]*/gi,   "-- DROP DATABASE (requires live server)")
    // SIGNAL SQLSTATE → comment
    .replace(/SIGNAL\s+SQLSTATE[^;]*/gi, "-- SIGNAL (MySQL error raising)")
    // GRANT / REVOKE → comment
    .replace(/GRANT\s+[^;]+;?/gi,  "-- GRANT (requires live server)")
    .replace(/REVOKE\s+[^;]+;?/gi, "-- REVOKE (requires live server)")
    // CREATE USER / ALTER USER / DROP USER → comment
    .replace(/CREATE\s+USER[^;]*/gi,  "-- CREATE USER (requires live server)")
    .replace(/ALTER\s+USER[^;]*/gi,   "-- ALTER USER (requires live server)")
    .replace(/DROP\s+USER[^;]*/gi,    "-- DROP USER (requires live server)")
    // DELIMITER blocks → extract body between delimiters
    // (Handled by stripping DELIMITER lines above)
}

// Extend the SQL engine with MySQL-specific functions
function _mysqlExtend(engine) {
  // We patch the engine's internal evalSqlFn by wrapping execute
  // Instead, we rely on the evalSqlFn already handling many functions.
  // MySQL-specific additions are handled in _sqlEngine's evalSqlFn.
  // This function is a hook for future extensions.
}

// Override _sqlRenderHtml for MySQL with branded header
function _sqlRenderHtml(results, isMySQL) {
  const brand = isMySQL
    ? '<div class="sql-brand">🐬 MySQL Simulator</div>'
    : '<div class="sql-brand">🗄️ SQL Simulator</div>'

  const rows_html = results.map(r => {
    if (r.type === "message") {
      if (!r.message || r.message.startsWith("--")) {
        return `<div class="sql-comment">${r.message || ""}</div>`
      }
      const cls = r.message.startsWith("Error") ? "sql-error" : "sql-msg"
      return `<div class="${cls}">${r.message.replace(/</g,"&lt;").replace(/>/g,"&gt;")}</div>`
    }
    if (r.type === "table") {
      if (!r.rows || r.rows.length === 0) {
        return `<div class="sql-msg">Query OK — 0 rows returned.</div>`
      }
      const cols = r.cols || Object.keys(r.rows[0])
      const th   = cols.map(c => `<th>${c}</th>`).join("")
      const trs  = r.rows.map(row => {
        const tds = cols.map(c => {
          const v = row[c]
          const display = v === null ? '<span class="sql-null">NULL</span>' : String(v).replace(/</g,"&lt;")
          return `<td>${display}</td>`
        }).join("")
        return `<tr>${tds}</tr>`
      }).join("")
      return `<div class="sql-result-wrap">
        <div class="sql-row-count">${r.rows.length} row(s) in set</div>
        <div class="sql-table-wrap"><table class="sql-table">
          <thead><tr>${th}</tr></thead>
          <tbody>${trs}</tbody>
        </table></div></div>`
    }
    return ""
  }).join("")

  return `<!DOCTYPE html><html><head><style>
    *{box-sizing:border-box;margin:0;padding:0}
    body{background:#0b0b1e;color:#e2e0f0;font-family:'Fira Code',monospace;font-size:12.5px;padding:12px;overflow:auto}
    .sql-brand{font-size:11px;color:#6b7280;margin-bottom:8px;font-style:italic;border-bottom:1px solid #1e1e3a;padding-bottom:6px}
    .sql-msg{color:#a3e635;padding:6px 8px;margin-bottom:8px;border-left:3px solid #22c55e;background:rgba(34,197,94,.08)}
    .sql-comment{color:#4b5563;padding:3px 8px;margin-bottom:4px;font-style:italic;font-size:11px}
    .sql-error{color:#f87171;padding:6px 8px;margin-bottom:8px;border-left:3px solid #ef4444;background:rgba(239,68,68,.08)}
    .sql-result-wrap{margin-bottom:12px}
    .sql-row-count{font-size:11px;color:#6b7280;margin-bottom:4px}
    .sql-table-wrap{overflow-x:auto}
    .sql-table{border-collapse:collapse;min-width:100%;font-size:12px}
    .sql-table th{background:#1a1a40;color:#fb923c;padding:6px 12px;text-align:left;border:1px solid #252545;white-space:nowrap;font-size:11px;text-transform:uppercase;letter-spacing:.04em}
    .sql-table td{padding:5px 12px;border:1px solid #1e1e3a;color:#e2e0f0;white-space:nowrap}
    .sql-table tr:nth-child(even) td{background:rgba(251,146,60,.04)}
    .sql-table tr:hover td{background:rgba(251,146,60,.1)}
    .sql-null{color:#4b5563;font-style:italic}
  </style></head><body>${brand}${rows_html || '<div class="sql-msg">Write SQL and click Run ▶</div>'}</body></html>`
}

// ══════════════════════════════════════════════════════════════════
// NumPy Simulator
// ══════════════════════════════════════════════════════════════════

function _npExecute(code) {
  const out = []
  const env = {}

  // ── ndarray representation ────────────────────────────────────
  const isArr = v => v && v.__type === "ndarray"
  function mkArr(data, shape) {
    const flat = _npFlatten(data)
    const sh   = shape || (Array.isArray(data[0]) ? [data.length, data[0].length] : [data.length])
    return { __type:"ndarray", data: flat, shape: sh, dtype: flat.every(Number.isInteger) ? "int64" : "float64" }
  }
  function _npFlatten(arr) {
    if (!Array.isArray(arr)) return [arr]
    if (!Array.isArray(arr[0])) return arr.map(Number)
    return arr.flatMap(_npFlatten)
  }
  function _npShape(sh) { return "("+sh.join(", ")+(sh.length===1?",":"")+")" }
  function _npSize(sh)  { return sh.reduce((a,b)=>a*b,1) }
  function _npIdx(arr, ...idx) { // get element at index
    if (idx.length===1) return arr.data[idx[0]]
    if (idx.length===2 && arr.shape.length===2) return arr.data[idx[0]*arr.shape[1]+idx[1]]
    return arr.data[idx[0]]
  }
  function _npCopy(arr) { return { ...arr, data:[...arr.data], shape:[...arr.shape] } }

  // ── Expression tokeniser ──────────────────────────────────────
  function splitArgs(s) {
    const r=[]; let cur="",d=0,inS=false,sc=""
    for(const c of s){
      if(inS){cur+=c;if(c===sc)inS=false;continue}
      if(c==="'"||c==='"'){inS=true;sc=c;cur+=c;continue}
      if("([{".includes(c)){d++;cur+=c;continue}
      if(")]}".includes(c)){d--;cur+=c;continue}
      if(c===","&&d===0){r.push(cur.trim());cur="";continue}
      cur+=c
    }
    if(cur.trim())r.push(cur.trim());return r
  }
  function matchParen(s,i){
    let d=1,inS=false,sc=""
    for(let j=i+1;j<s.length;j++){
      const c=s[j]
      if(inS){if(c===sc)inS=false;continue}
      if(c==="'"||c==='"'){inS=true;sc=c;continue}
      if("([{".includes(c))d++
      if(")]}".includes(c)){d--;if(d===0)return j}
    }
    return s.length-1
  }

  // ── Scalar helpers ────────────────────────────────────────────
  const isNum = v => typeof v === "number" && !isNaN(v)
  function rnd(v, d=6) { return Math.round(v*10**d)/10**d }

  // ── Array constructors ────────────────────────────────────────
  function npArray(arg, dtype) {
    if (isArr(arg)) return _npCopy(arg)
    if (Array.isArray(arg)) return mkArr(arg)
    return mkArr([arg],[1])
  }
  function npZeros(shape) { const sh=Array.isArray(shape)?shape:[shape]; return {__type:"ndarray",data:new Array(_npSize(sh)).fill(0),shape:sh,dtype:"float64"} }
  function npOnes(shape)  { const sh=Array.isArray(shape)?shape:[shape]; return {__type:"ndarray",data:new Array(_npSize(sh)).fill(1),shape:sh,dtype:"float64"} }
  function npFull(shape,val){ const sh=Array.isArray(shape)?shape:[shape]; return {__type:"ndarray",data:new Array(_npSize(sh)).fill(Number(val)),shape:sh,dtype:"float64"} }
  function npEye(n) { const d=new Array(n*n).fill(0); for(let i=0;i<n;i++)d[i*n+i]=1; return {__type:"ndarray",data:d,shape:[n,n],dtype:"float64"} }
  function npArange(start,stop,step=1) {
    if(stop===undefined){stop=start;start=0}
    const d=[];for(let i=start;i<stop;i+=step)d.push(i)
    return {__type:"ndarray",data:d,shape:[d.length],dtype:Number.isInteger(step)?"int64":"float64"}
  }
  function npLinspace(start,stop,num=50) {
    if(num<=1) return {__type:"ndarray",data:[start],shape:[1],dtype:"float64"}
    const d=[];const step=(stop-start)/(num-1)
    for(let i=0;i<num;i++)d.push(rnd(start+i*step))
    return {__type:"ndarray",data:d,shape:[num],dtype:"float64"}
  }

  // ── Random ────────────────────────────────────────────────────
  let _seed = Date.now()
  function _rng() { _seed=(1664525*_seed+1013904223)&0xffffffff; return Math.abs(_seed)/0xffffffff }
  function npSeed(s){ _seed=s|0 }
  function npRand(...shape) {
    if(!shape.length)return rnd(_rng())
    const sh=shape.flat();const d=new Array(_npSize(sh)).fill(0).map(()=>rnd(_rng()))
    return {__type:"ndarray",data:d,shape:sh,dtype:"float64"}
  }
  function npRandn(...shape) {
    const sh=shape.flat();const d=new Array(_npSize(sh)).fill(0).map(()=>{
      const u=_rng()||1e-10; const v=_rng(); return rnd(Math.sqrt(-2*Math.log(u))*Math.cos(2*Math.PI*v),4)
    })
    return {__type:"ndarray",data:d,shape:sh.length?sh:[1],dtype:"float64"}
  }
  function npRandint(lo,hi,shape) {
    const sh=Array.isArray(shape)?shape:(shape?[shape]:[1])
    const d=new Array(_npSize(sh)).fill(0).map(()=>lo+Math.floor(_rng()*(hi-lo)))
    return {__type:"ndarray",data:d,shape:sh,dtype:"int64"}
  }
  function npNormal(mean=0,std=1,size=1) {
    const sh=Array.isArray(size)?size:[size]
    const d=new Array(_npSize(sh)).fill(0).map(()=>{
      const u=_rng()||1e-10;const v=_rng()
      return Math.round((mean+std*Math.sqrt(-2*Math.log(u))*Math.cos(2*Math.PI*v)))
    })
    return {__type:"ndarray",data:d,shape:sh,dtype:"float64"}
  }
  function npChoice(arr,n,replace=true) {
    const vals=isArr(arr)?arr.data:(Array.isArray(arr)?arr:Object.values(arr))
    const d=[];const used=new Set()
    while(d.length<n){
      const i=Math.floor(_rng()*vals.length)
      if(replace||!used.has(i)){d.push(vals[i]);used.add(i)}
    }
    return {__type:"ndarray",data:d,shape:[n],dtype:"object"}
  }
  function npPermutation(n) {
    const arr=isArr(n)?[...n.data]:Array.from({length:n},(_,i)=>i)
    for(let i=arr.length-1;i>0;i--){const j=Math.floor(_rng()*(i+1));[arr[i],arr[j]]=[arr[j],arr[i]]}
    return {__type:"ndarray",data:arr,shape:[arr.length],dtype:"int64"}
  }

  // ── Math operations ───────────────────────────────────────────
  function npElemWise(a, b, op) {
    if (isArr(a) && isArr(b)) {
      const da=a.data,db=b.data
      if(da.length===db.length) return {__type:"ndarray",data:da.map((v,i)=>op(v,db[i])),shape:[...a.shape],dtype:"float64"}
      // broadcasting: a=(m,n), b=(n,) → broadcast b across rows
      if(a.shape.length===2&&b.shape.length===1&&a.shape[1]===b.data.length){
        const d=[];for(let r=0;r<a.shape[0];r++)for(let c=0;c<a.shape[1];c++)d.push(op(a.data[r*a.shape[1]+c],b.data[c]))
        return {__type:"ndarray",data:d,shape:[...a.shape],dtype:"float64"}
      }
      // b=(m,1) broadcast across cols
      if(a.shape.length===2&&b.shape.length===2&&b.shape[1]===1){
        const d=[];for(let r=0;r<a.shape[0];r++)for(let c=0;c<a.shape[1];c++)d.push(op(a.data[r*a.shape[1]+c],b.data[r]))
        return {__type:"ndarray",data:d,shape:[...a.shape],dtype:"float64"}
      }
    }
    if (isArr(a) && isNum(b)) return {__type:"ndarray",data:a.data.map(v=>op(v,b)),shape:[...a.shape],dtype:"float64"}
    if (isNum(a) && isArr(b)) return {__type:"ndarray",data:b.data.map(v=>op(a,v)),shape:[...b.shape],dtype:"float64"}
    if (isNum(a) && isNum(b)) return op(a,b)
    return null
  }
  const npAdd  = (a,b)=>npElemWise(a,b,(x,y)=>x+y)
  const npSub  = (a,b)=>npElemWise(a,b,(x,y)=>x-y)
  const npMul  = (a,b)=>npElemWise(a,b,(x,y)=>x*y)
  const npDiv  = (a,b)=>npElemWise(a,b,(x,y)=>y===0?NaN:x/y)
  const npPow  = (a,b)=>npElemWise(a,b,(x,y)=>Math.pow(x,y))
  const npMod  = (a,b)=>npElemWise(a,b,(x,y)=>x%y)
  const npGt   = (a,b)=>npCmp(a,b,(x,y)=>x>y)
  const npLt   = (a,b)=>npCmp(a,b,(x,y)=>x<y)
  const npGe   = (a,b)=>npCmp(a,b,(x,y)=>x>=y)
  const npLe   = (a,b)=>npCmp(a,b,(x,y)=>x<=y)
  const npEq   = (a,b)=>npCmp(a,b,(x,y)=>x===y)
  const npNe   = (a,b)=>npCmp(a,b,(x,y)=>x!==y)
  function npCmp(a,b,op){
    if(isArr(a)&&isNum(b)) return {__type:"ndarray",data:a.data.map(v=>op(v,b)),shape:[...a.shape],dtype:"bool"}
    if(isArr(a)&&isArr(b)) return {__type:"ndarray",data:a.data.map((v,i)=>op(v,b.data[i])),shape:[...a.shape],dtype:"bool"}
    return op(a,b)
  }
  function npAnd(a,b){
    if(isArr(a)&&isArr(b)) return {__type:"ndarray",data:a.data.map((v,i)=>Boolean(v)&&Boolean(b.data[i])),shape:[...a.shape],dtype:"bool"}
    return Boolean(a)&&Boolean(b)
  }
  function npOr(a,b){
    if(isArr(a)&&isArr(b)) return {__type:"ndarray",data:a.data.map((v,i)=>Boolean(v)||Boolean(b.data[i])),shape:[...a.shape],dtype:"bool"}
    return Boolean(a)||Boolean(b)
  }

  // ── np functions ──────────────────────────────────────────────
  function npFn(name, args, lenv) {
    const a=args[0],a1=args[1],a2=args[2]
    const getD = v=>isArr(v)?v.data:[]
    const numD  = v=>getD(v).filter(Number.isFinite)
    if(name==="array")  return npArray(a)
    if(name==="zeros")  return npZeros(a)
    if(name==="ones")   return npOnes(a)
    if(name==="full")   return npFull(a,a1)
    if(name==="eye"||name==="identity") return npEye(Number(a))
    if(name==="empty")  return npZeros(a)
    if(name==="arange") return a1===undefined?npArange(0,Number(a)):npArange(Number(a),Number(a1),a2===undefined?1:Number(a2))
    if(name==="linspace") return npLinspace(Number(a),Number(a1),a2===undefined?50:Number(a2))
    if(name==="diag")   { const d=getD(a); const n=d.length; const mat=new Array(n*n).fill(0); for(let i=0;i<n;i++)mat[i*n+i]=d[i]; return {__type:"ndarray",data:mat,shape:[n,n],dtype:"float64"} }
    if(name==="seed")   { npSeed(Number(a)); return null }
    if(name==="sum"||name==="nansum") return npReduce(a,a1,"sum")
    if(name==="mean"||name==="nanmean") return npReduce(a,a1,"mean")
    if(name==="std"||name==="nanstd")  return npReduce(a,a1,"std")
    if(name==="var"||name==="nanvar")  return npReduce(a,a1,"var")
    if(name==="min"||name==="nanmin")  return npReduce(a,a1,"min")
    if(name==="max"||name==="nanmax")  return npReduce(a,a1,"max")
    if(name==="median") return npReduce(a,a1,"median")
    if(name==="cumsum") { if(!isArr(a))return a; return {__type:"ndarray",data:a.data.reduce((acc,v,i)=>[...acc,((acc[i-1]||0)+v)],[]),shape:[...a.shape],dtype:"float64"} }
    if(name==="cummax") { if(!isArr(a))return a; let m=-Infinity; return {__type:"ndarray",data:a.data.map(v=>{if(v>m)m=v;return m}),shape:[...a.shape],dtype:"float64"} }
    if(name==="cummin") { if(!isArr(a))return a; let m=Infinity;  return {__type:"ndarray",data:a.data.map(v=>{if(v<m)m=v;return m}),shape:[...a.shape],dtype:"float64"} }
    if(name==="sqrt")   return npUfunc(a,Math.sqrt)
    if(name==="abs"||name==="absolute") return npUfunc(a,Math.abs)
    if(name==="exp")    return npUfunc(a,Math.exp)
    if(name==="log")    return npUfunc(a,v=>v>0?Math.log(v):NaN)
    if(name==="log2")   return npUfunc(a,v=>v>0?Math.log2(v):NaN)
    if(name==="log10")  return npUfunc(a,v=>v>0?Math.log10(v):NaN)
    if(name==="sin")    return npUfunc(a,Math.sin)
    if(name==="cos")    return npUfunc(a,Math.cos)
    if(name==="tan")    return npUfunc(a,Math.tan)
    if(name==="floor")  return npUfunc(a,Math.floor)
    if(name==="ceil")   return npUfunc(a,Math.ceil)
    if(name==="round")  return npUfunc(a,v=>rnd(v,a1===undefined?0:Number(a1)))
    if(name==="sign")   return npUfunc(a,Math.sign)
    if(name==="maximum") return npElemWise(a,a1,(x,y)=>Math.max(x,y))
    if(name==="minimum") return npElemWise(a,a1,(x,y)=>Math.min(x,y))
    if(name==="clip") { const lo=Number(a1||0),hi=Number(a2||Infinity); return isArr(a)?{...a,data:a.data.map(v=>Math.max(lo,Math.min(hi,v)))}:Math.max(lo,Math.min(hi,a)) }
    if(name==="argmin") return npArgReduce(a,"min",a1)
    if(name==="argmax") return npArgReduce(a,"max",a1)
    if(name==="sort")   { if(!isArr(a))return a; const d=[...a.data].sort((x,y)=>x-y); return {__type:"ndarray",data:d,shape:[...a.shape],dtype:a.dtype} }
    if(name==="argsort") { if(!isArr(a))return {__type:"ndarray",data:[0],shape:[1],dtype:"int64"}; const idx=a.data.map((_,i)=>i).sort((i,j)=>a.data[i]-a.data[j]); return {__type:"ndarray",data:idx,shape:[idx.length],dtype:"int64"} }
    if(name==="unique") {
      if(!isArr(a))return a
      const vals=[...new Set(a.data)].sort((x,y)=>x-y)
      if(a1===undefined)return {__type:"ndarray",data:vals,shape:[vals.length],dtype:a.dtype}
      // return_counts
      const cnt=vals.map(v=>a.data.filter(x=>x===v).length)
      return [{__type:"ndarray",data:vals,shape:[vals.length],dtype:a.dtype},{__type:"ndarray",data:cnt,shape:[cnt.length],dtype:"int64"}]
    }
    if(name==="where") {
      if(a1===undefined) { // np.where(cond) → indices
        if(!isArr(a))return{__type:"ndarray",data:[],shape:[0],dtype:"int64"}
        const idx=a.data.map((v,i)=>v?i:null).filter(v=>v!==null)
        return [{__type:"ndarray",data:idx,shape:[idx.length],dtype:"int64"}]
      }
      if(isArr(a)) return {__type:"ndarray",data:a.data.map((v,i)=>v?evalNpExpr(a1,{},i):evalNpExpr(a2,{},i)),shape:[...a.shape],dtype:"object"}
      // where(cond_arr, arr_true, arr_false)
      return null
    }
    if(name==="nonzero") { if(!isArr(a))return[{__type:"ndarray",data:[],shape:[0],dtype:"int64"}]; const idx=a.data.map((v,i)=>v!==0?i:null).filter(v=>v!==null); return [{__type:"ndarray",data:idx,shape:[idx.length],dtype:"int64"}] }
    if(name==="reshape") { if(!isArr(a))return a; const sh=Array.isArray(a1)?a1:args.slice(1).map(Number); return {__type:"ndarray",data:[...a.data],shape:resolveShape(sh,a.data.length),dtype:a.dtype} }
    if(name==="flatten"||name==="ravel") return isArr(a)?{__type:"ndarray",data:[...a.data],shape:[a.data.length],dtype:a.dtype}:a
    if(name==="squeeze") { if(!isArr(a))return a; const sh=a.shape.filter(d=>d!==1); return {__type:"ndarray",data:[...a.data],shape:sh.length?sh:[1],dtype:a.dtype} }
    if(name==="expand_dims") { if(!isArr(a))return a; const ax=Number(a1)||0; const sh=[...a.shape]; sh.splice(ax,0,1); return {__type:"ndarray",data:[...a.data],shape:sh,dtype:a.dtype} }
    if(name==="transpose") return isArr(a)?npTranspose(a):a
    if(name==="concatenate"||name==="concat") {
      const arrs=Array.isArray(a)?a:args; const ax=arrs[arrs.length-1]&&isNum(arrs[arrs.length-1])?arrs.pop():0
      const all=arrs.filter(isArr)
      if(!all.length) return npZeros([0])
      if(ax===0) return {__type:"ndarray",data:all.flatMap(x=>x.data),shape:[all.reduce((s,x)=>s+x.shape[0],0),...all[0].shape.slice(1)],dtype:"float64"}
      return {__type:"ndarray",data:all.flatMap(x=>x.data),shape:[all[0].shape[0],all.reduce((s,x)=>s+(x.shape[1]||1),0)],dtype:"float64"}
    }
    if(name==="vstack") { const arrs=(Array.isArray(a)?a:args).filter(isArr); return {__type:"ndarray",data:arrs.flatMap(x=>x.data),shape:[arrs.reduce((s,x)=>s+x.shape[0],0),...(arrs[0]?.shape.slice(1)||[1])],dtype:"float64"} }
    if(name==="hstack") { const arrs=(Array.isArray(a)?a:args).filter(isArr); if(arrs[0]?.shape.length===1)return{__type:"ndarray",data:arrs.flatMap(x=>x.data),shape:[arrs.reduce((s,x)=>s+x.data.length,0)],dtype:"float64"}; return {__type:"ndarray",data:arrs.flatMap(x=>x.data),shape:[arrs[0].shape[0],arrs.reduce((s,x)=>s+(x.shape[1]||1),0)],dtype:"float64"} }
    if(name==="column_stack") { const arrs=(Array.isArray(a)?a:args).filter(isArr); const n=arrs[0]?.data.length||0; const d=[]; for(let i=0;i<n;i++)arrs.forEach(x=>d.push(x.data[i])); return {__type:"ndarray",data:d,shape:[n,arrs.length],dtype:"float64"} }
    if(name==="split") { if(!isArr(a))return[]; const n=Array.isArray(a1)?a1:[Number(a1)]; const parts=[]; let s=0; const boundaries=Array.isArray(a1)?[...a1,a.data.length]:Array.from({length:Number(a1)},(_,i)=>Math.floor(a.data.length/Number(a1)*(i+1))); boundaries.forEach(e=>{parts.push({__type:"ndarray",data:a.data.slice(s,e),shape:[e-s],dtype:a.dtype});s=e}); return parts }
    if(name==="dot"||name==="matmul") return npMatmul(a,a1)
    if(name==="cross") { if(!isArr(a)||!isArr(a1))return null; const [ax,ay,az]=a.data; const [bx,by,bz]=a1.data; return mkArr([ay*bz-az*by,az*bx-ax*bz,ax*by-ay*bx]) }
    if(name==="percentile"||name==="quantile") {
      const pct = name==="quantile"?Number(a1)*100:Number(a1)
      const d=numD(a).sort((x,y)=>x-y)
      if(!d.length) return null
      if(Array.isArray(a1)) { const ps=a1.map(p=>{ const i=(name==="quantile"?p:p/100)*(d.length-1); const lo=Math.floor(i),hi=Math.ceil(i); return rnd(d[lo]+(d[hi]-d[lo])*(i-lo),4) }); return mkArr(ps) }
      const i=pct/100*(d.length-1); const lo=Math.floor(i),hi=Math.ceil(i); return rnd(d[lo]+(d[hi]-d[lo])*(i-lo),4)
    }
    if(name==="corrcoef") {
      const x=numD(a),y=numD(a1||a)
      const n=Math.min(x.length,y.length)
      const mx=x.slice(0,n).reduce((s,v)=>s+v,0)/n, my=y.slice(0,n).reduce((s,v)=>s+v,0)/n
      const num=x.slice(0,n).reduce((s,v,i)=>s+(v-mx)*(y[i]-my),0)
      const dx=Math.sqrt(x.slice(0,n).reduce((s,v)=>s+(v-mx)**2,0))
      const dy=Math.sqrt(y.slice(0,n).reduce((s,v)=>s+(v-my)**2,0))
      const r=dx&&dy?rnd(num/dx/dy,6):(a===a1?1:0)
      return mkArr([[1,r],[r,1]])
    }
    if(name==="cov") { const x=numD(a),y=numD(a1||a); const n=Math.min(x.length,y.length); const mx=x.slice(0,n).reduce((s,v)=>s+v,0)/n,my=y.slice(0,n).reduce((s,v)=>s+v,0)/n; const vx=x.slice(0,n).reduce((s,v)=>s+(v-mx)**2,0)/(n-1),vy=y.slice(0,n).reduce((s,v)=>s+(v-my)**2,0)/(n-1),cxy=x.slice(0,n).reduce((s,v,i)=>s+(v-mx)*(y[i]-my),0)/(n-1); return mkArr([[rnd(vx,4),rnd(cxy,4)],[rnd(cxy,4),rnd(vy,4)]]) }
    if(name==="allclose") { if(!isArr(a)||!isArr(a1))return a===a1; return a.data.every((v,i)=>Math.abs(v-a1.data[i])<1e-8) }
    if(name==="piecewise") {
      if(!isArr(a))return a
      const condList=Array.isArray(a1)?a1:[]
      const fnList=Array.isArray(a2)?a2:[]
      return {__type:"ndarray",data:a.data.map(v=>{
        for(let i=0;i<condList.length;i++){
          const cond=condList[i]
          const match=isArr(cond)?cond.data[a.data.indexOf(v)]:evalNpExpr(cond,{v},0)
          if(match)return isNum(fnList[i])?fnList[i]:evalNpExpr(fnList[i],{v},0)
        }
        return fnList[fnList.length-1]||0
      }),shape:[...a.shape],dtype:"float64"}
    }
    if(name==="histogram") { const d=numD(a); const bins=Number(a1||10); const mn=Math.min(...d),mx=Math.max(...d); const w=(mx-mn)/bins; const counts=new Array(bins).fill(0); d.forEach(v=>{ let i=Math.min(Math.floor((v-mn)/w),bins-1); counts[i]++ }); const edges=[...Array(bins+1)].map((_,i)=>rnd(mn+i*w,4)); return [{__type:"ndarray",data:counts,shape:[bins],dtype:"int64"},{__type:"ndarray",data:edges,shape:[bins+1],dtype:"float64"}] }
    if(name==="average") { const d=numD(a); const w=Array.isArray(a1)?a1:(isArr(a1)?a1.data:null); if(w) return rnd(d.reduce((s,v,i)=>s+v*w[i],0)/w.reduce((s,v)=>s+v,0),6); return rnd(d.reduce((s,v)=>s+v,0)/d.length,6) }
    if(name==="vectorize") { return (fn)=>fn }  // simplified
    if(name==="frompyfunc") return a
    return null
  }

  function npUfunc(a, fn) {
    if(isArr(a)) return {__type:"ndarray",data:a.data.map(v=>rnd(fn(v),6)),shape:[...a.shape],dtype:"float64"}
    if(isNum(a)) return rnd(fn(a),6)
    return null
  }
  function npReduce(a, axis, fn) {
    if(!isArr(a)) return isNum(a)?a:null
    const d=a.data.filter(isNum)
    if(axis===undefined||axis===null){
      const result=_stat(d,fn)
      return isNum(result)?rnd(result,6):result
    }
    const ax=Number(axis)
    if(a.shape.length===2&&ax===0){
      const [rows,cols]=a.shape; const res=[]
      for(let c=0;c<cols;c++){const col=[];for(let r=0;r<rows;r++)col.push(a.data[r*cols+c]); res.push(rnd(_stat(col,fn),6))}
      return {__type:"ndarray",data:res,shape:[cols],dtype:"float64"}
    }
    if(a.shape.length===2&&ax===1){
      const [rows,cols]=a.shape; const res=[]
      for(let r=0;r<rows;r++){const row=a.data.slice(r*cols,(r+1)*cols); res.push(rnd(_stat(row,fn),6))}
      return {__type:"ndarray",data:res,shape:[rows],dtype:"float64"}
    }
    return rnd(_stat(d,fn),6)
  }
  function _stat(d, fn) {
    if(!d.length)return 0
    if(fn==="sum")    return d.reduce((a,b)=>a+b,0)
    if(fn==="mean")   return d.reduce((a,b)=>a+b,0)/d.length
    if(fn==="min")    return Math.min(...d)
    if(fn==="max")    return Math.max(...d)
    if(fn==="median") { const s=[...d].sort((a,b)=>a-b); return s[Math.floor(s.length/2)] }
    if(fn==="var")    { const m=d.reduce((a,b)=>a+b,0)/d.length; return d.reduce((a,b)=>a+(b-m)**2,0)/d.length }
    if(fn==="std")    { const m=d.reduce((a,b)=>a+b,0)/d.length; return Math.sqrt(d.reduce((a,b)=>a+(b-m)**2,0)/d.length) }
    return 0
  }
  function npArgReduce(a,fn,axis) {
    if(!isArr(a))return 0
    if(axis===undefined){
      if(fn==="max"){let mi=0;a.data.forEach((v,i)=>{if(v>a.data[mi])mi=i});return mi}
      let mi=0;a.data.forEach((v,i)=>{if(v<a.data[mi])mi=i});return mi
    }
    const ax=Number(axis)
    if(a.shape.length===2&&ax===1){
      const [rows,cols]=a.shape; const res=[]
      for(let r=0;r<rows;r++){const row=a.data.slice(r*cols,(r+1)*cols); let mi=0;row.forEach((v,i)=>{if(fn==="max"?v>row[mi]:v<row[mi])mi=i}); res.push(mi)}
      return {__type:"ndarray",data:res,shape:[rows],dtype:"int64"}
    }
    if(a.shape.length===2&&ax===0){
      const [rows,cols]=a.shape; const res=[]
      for(let c=0;c<cols;c++){const col=[];for(let r=0;r<rows;r++)col.push(a.data[r*cols+c]); let mi=0;col.forEach((v,i)=>{if(fn==="max"?v>col[mi]:v<col[mi])mi=i}); res.push(mi)}
      return {__type:"ndarray",data:res,shape:[cols],dtype:"int64"}
    }
    return 0
  }
  function npTranspose(a) {
    if(!isArr(a))return a
    if(a.shape.length===1) return {...a,shape:[1,a.shape[0]]}
    const [rows,cols]=a.shape; const d=[]
    for(let c=0;c<cols;c++)for(let r=0;r<rows;r++)d.push(a.data[r*cols+c])
    return {__type:"ndarray",data:d,shape:[cols,rows],dtype:a.dtype}
  }
  function npMatmul(A,B) {
    if(!isArr(A)||!isArr(B))return null
    if(A.shape.length===1&&B.shape.length===1)return A.data.reduce((s,v,i)=>s+v*B.data[i],0)
    const ar=A.shape[0],ac=A.shape.length>1?A.shape[1]:1
    const br=B.shape[0],bc=B.shape.length>1?B.shape[1]:1
    const d=[]
    for(let r=0;r<ar;r++)for(let c=0;c<bc;c++){let s=0;for(let k=0;k<ac;k++)s+=A.data[r*ac+k]*B.data[k*bc+c];d.push(rnd(s,6))}
    return {__type:"ndarray",data:d,shape:[ar,bc],dtype:"float64"}
  }
  function resolveShape(sh,total){
    const negIdx=sh.indexOf(-1)
    if(negIdx<0)return sh
    const known=sh.filter(d=>d!==-1).reduce((a,b)=>a*b,1)
    const newSh=[...sh];newSh[negIdx]=total/known;return newSh
  }

  // ── Indexing / slicing ────────────────────────────────────────
  function npSlice(arr, sliceStr, lenv) {
    if (!isArr(arr)) return arr
    const parts = sliceStr.split(",").map(s=>s.trim())
    if (parts.length === 1) {
      const s = parts[0]
      // Boolean mask
      if (isArr(lenv[s]) && lenv[s].dtype==="bool") {
        return {__type:"ndarray",data:arr.data.filter((_,i)=>lenv[s].data[i]),shape:[arr.data.filter((_,i)=>lenv[s].data[i]).length],dtype:arr.dtype}
      }
      // Numeric index
      if (/^-?\d+$/.test(s)) { const i=parseInt(s); const idx=i<0?arr.data.length+i:i; return arr.data[idx] }
      // Slice a:b:c
      return npSlice1D(arr.data, s, arr.shape)
    }
    if (parts.length === 2 && arr.shape.length === 2) {
      const [rp, cp] = parts
      const rows = arr.shape[0], cols = arr.shape[1]
      // row index, col slice
      const rowIdx = rp===":"?null:parseInt(rp)
      const colIdx = cp===":"?null:parseInt(cp)
      if (rowIdx !== null && colIdx !== null) return arr.data[rowIdx*cols+colIdx]
      if (rowIdx !== null) {
        // single row
        const row = arr.data.slice(rowIdx*cols, (rowIdx+1)*cols)
        if(cp===":") return {__type:"ndarray",data:row,shape:[cols],dtype:arr.dtype}
        return npSlice1D({data:row,shape:[cols]},cp,null)?.data ?? row
      }
      if (colIdx !== null) {
        // single column
        const col=[]; for(let r=0;r<rows;r++)col.push(arr.data[r*cols+colIdx])
        return {__type:"ndarray",data:col,shape:[rows],dtype:arr.dtype}
      }
      // both slices
      const {start:rs,end:re}=parseSlice(rp,rows)
      const {start:cs,end:ce}=parseSlice(cp,cols)
      const d=[]; for(let r=rs;r<re;r++)for(let c=cs;c<ce;c++)d.push(arr.data[r*cols+c])
      return {__type:"ndarray",data:d,shape:[re-rs,ce-cs],dtype:arr.dtype}
    }
    return arr
  }
  function npSlice1D(arrOrData,s) {
    const data=Array.isArray(arrOrData)?arrOrData:arrOrData.data
    const n=data.length
    if (s===":") return {__type:"ndarray",data:[...data],shape:[n],dtype:"float64"}
    if (/^::(-?\d+)$/.test(s)) { const step=parseInt(s.slice(2)); const d=[]; for(let i=step<0?n-1:0;step<0?i>=0:i<n;i+=step)d.push(data[i]); return {__type:"ndarray",data:d,shape:[d.length],dtype:"float64"} }
    const {start,end,step}=parseSlice(s,n)
    const d=[];for(let i=start;step>0?i<end:i>end;i+=step)d.push(data[i])
    return {__type:"ndarray",data:d,shape:[d.length],dtype:"float64"}
  }
  function parseSlice(s,n) {
    const parts=s.split(":"); const step=parts[2]?parseInt(parts[2]):1
    let start=parts[0]===''?(step<0?n-1:0):parseInt(parts[0])
    let end  =parts[1]===''?(step<0?-1:n):parseInt(parts[1])
    if(start<0)start=n+start; if(end<0&&end!==-1)end=n+end
    return {start,end,step}
  }

  // ── Evaluate a NumPy expression ────────────────────────────────
  function evalNpExpr(expr, lenv={}, idx=null) {
    expr = String(expr).trim()
    if(!expr) return null

    // Literal values
    if (expr==="True") return true; if(expr==="False") return false; if(expr==="None") return null
    if (expr==="np.pi" || expr==="pi") return Math.PI
    if (expr==="np.e"  || expr==="e")  return Math.E
    if (expr==="np.inf"||expr==="inf") return Infinity
    if (expr==="np.nan"||expr==="nan") return NaN
    if (/^-?\d+(\.\d+)?([eE][+-]?\d+)?$/.test(expr)) return parseFloat(expr)
    if ((expr.startsWith("'")&&expr.endsWith("'"))||(expr.startsWith('"')&&expr.endsWith('"'))) return expr.slice(1,-1)
    if (expr.startsWith("f'") || expr.startsWith('f"')) {
      const inner=expr.slice(2,-1)
      return inner.replace(/\{([^}]+)\}/g,(_,e)=>{ const v=evalNpExpr(e.trim(),lenv); return v===null?"None":String(v).replace(/\n/g," ") })
    }

    // List/tuple literal
    if (expr.startsWith("[")&&expr.endsWith("]")) {
      const items=splitArgs(expr.slice(1,-1)).map(a=>evalNpExpr(a,lenv))
      // Check if it's a 2D list
      if(items.length&&isArr(items[0])) return mkArr(items.map(x=>isArr(x)?x.data:x))
      return items
    }
    if (expr.startsWith("(")&&expr.endsWith(")")) {
      const items=splitArgs(expr.slice(1,-1)).map(a=>evalNpExpr(a,lenv))
      return items.length===1?items[0]:items
    }

    // Unary minus
    if (expr.startsWith("-")) { const v=evalNpExpr(expr.slice(1),lenv); return isArr(v)?{...v,data:v.data.map(x=>-x)}:-Number(v) }

    // Comparison operators
    const cmpOps=[">=","<=","!=","==",">","<"]
    for(const op of cmpOps){
      const i=findTopLevelOp(expr,op)
      if(i>=0){
        const L=evalNpExpr(expr.slice(0,i).trim(),lenv)
        const R=evalNpExpr(expr.slice(i+op.length).trim(),lenv)
        if(op===">=")return npGe(L,R); if(op==="<=")return npLe(L,R)
        if(op==="!=")return npNe(L,R); if(op==="==")return npEq(L,R)
        if(op===">") return npGt(L,R); if(op==="<") return npLt(L,R)
      }
    }
    // & | operators
    const andI=findTopLevelOp(expr,"&"); if(andI>=0){return npAnd(evalNpExpr(expr.slice(0,andI),lenv),evalNpExpr(expr.slice(andI+1),lenv))}
    const orI =findTopLevelOp(expr,"|"); if(orI>=0) {return npOr(evalNpExpr(expr.slice(0,orI),lenv),evalNpExpr(expr.slice(orI+1),lenv))}

    // Arithmetic (lower precedence last)
    for(const op of["+","-","*","/","//","%","**","@"]){
      const i=findTopLevelOp(expr,op)
      if(i>=0){
        const L=evalNpExpr(expr.slice(0,i).trim(),lenv)
        const R=evalNpExpr(expr.slice(i+op.length).trim(),lenv)
        if(op==="+")  return npAdd(L,R); if(op==="-")  return npSub(L,R)
        if(op==="*")  return npMul(L,R); if(op==="/")  return npDiv(L,R)
        if(op==="//") return isArr(L)?npElemWise(L,R,(x,y)=>Math.floor(x/y)):Math.floor(L/R)
        if(op==="%")  return npMod(L,R); if(op==="**") return npPow(L,R)
        if(op==="@")  return npMatmul(L,R)
      }
    }

    // Function call chain: a.b(args) or np.x(args) or a[idx]
    return evalChain(expr, lenv)
  }

  function findTopLevelOp(expr, op) {
    let d=0,inS=false,sc=""
    // For multi-char ops, skip ** when looking for *
    const skip = op==="*"?"**":(op==="/"?"//":"")
    for(let i=expr.length-1;i>=0;i--){
      const c=expr[i]
      if(inS){if(c===sc)inS=false;continue}
      if(c==="'"||c==='"'){inS=true;sc=c;continue}
      if(")]}".includes(c)){d++;continue}
      if("([{".includes(c)){d--;continue}
      if(d!==0)continue
      if(skip&&expr.slice(i,i+2)===skip)continue
      if(expr.slice(i,i+op.length)===op&&i>0){
        // Make sure left side is not empty (for unary -)
        if(op==="-"&&i===0)continue
        return i
      }
    }
    return -1
  }

  function evalChain(expr, lenv) {
    const combined={...env,...lenv}
    // np.random.X(...) pattern
    const npRandM=expr.match(/^np\.random\.(\w+)\s*\(([^)]*)\)$/)
    if(npRandM){
      const fn=npRandM[1]; const args=splitArgs(npRandM[2]).map(a=>evalNpExpr(a.trim(),lenv))
      if(fn==="seed")    { npSeed(args[0]);return null }
      if(fn==="rand")    return npRand(...args)
      if(fn==="randn")   return npRandn(...args)
      if(fn==="randint") return npRandint(args[0],args[1],args[2])
      if(fn==="random")  return npRand(...args)
      if(fn==="normal")  return npNormal(args[0]||0,args[1]||1,args[2]||1)
      if(fn==="uniform") { const lo=args[0]||0,hi=args[1]||1,n=Array.isArray(args[2])?args[2]:([args[2]]||[1]); return npRand(...n).data?(()=>{const a=npRand(...n);a.data=a.data.map(v=>lo+v*(hi-lo));return a})():null }
      if(fn==="choice")  return npChoice(args[0],args[1]||1,args[2]!==false)
      if(fn==="shuffle") { const a=combined[expr.match(/\((\w+)\)/)?.[1]]; if(isArr(a)){for(let i=a.data.length-1;i>0;i--){const j=Math.floor(_rng()*(i+1));[a.data[i],a.data[j]]=[a.data[j],a.data[i]]}}; return null }
      if(fn==="permutation") return npPermutation(args[0])
      if(fn==="default_rng") return {__type:"Rng",seed:args[0]}
      return null
    }
    // np.linalg.X(...)
    const npLinM=expr.match(/^np\.linalg\.(\w+)\s*\(([^)]*)\)$/)
    if(npLinM){
      const fn=npLinM[1]; const args=splitArgs(npLinM[2]).map(a=>evalNpExpr(a.trim(),lenv))
      const a=args[0]
      if(fn==="norm")   { if(!isArr(a))return Math.abs(a); const d=a.data; return rnd(Math.sqrt(d.reduce((s,v)=>s+v*v,0)),6) }
      if(fn==="det")    { if(!isArr(a)||a.shape[0]!==2)return 0; const [a11,a12,a21,a22]=a.data; return rnd(a11*a22-a12*a21,6) }
      if(fn==="inv")    { if(!isArr(a)||a.shape[0]!==2)return a; const [a11,a12,a21,a22]=a.data; const det=a11*a22-a12*a21; return det?mkArr([[rnd(a22/det,6),rnd(-a12/det,6)],[rnd(-a21/det,6),rnd(a11/det,6)]]):a }
      if(fn==="solve")  return npMatmul(npFn("inv",[a],lenv),args[1])
      if(fn==="eig")    { const vals=isArr(a)?a.data:[]; const d=vals.length===4?(r=>([rnd((vals[0]+vals[3])/2+r,4),rnd((vals[0]+vals[3])/2-r,4)]))(Math.sqrt(Math.max(0,((vals[0]-vals[3])/2)**2+vals[1]*vals[2])))||[0,0]:[...vals]; return [mkArr(d),npEye(d.length)] }
      return null
    }
    // np.X(...) call
    const npM=expr.match(/^np\.(\w+)\s*\((.*)?\)$/)
    if(npM){
      const fn=npM[1]; const argsStr=npM[2]||""; const args=splitArgs(argsStr).map(a=>evalNpExpr(a.trim(),lenv)); return npFn(fn,args,lenv)
    }
    // Method chain: var.method(...).method2(...)
    const root_m=expr.match(/^([A-Za-z_]\w*)(.*)$/)
    if(!root_m)return null
    const root=root_m[1]; let rest=root_m[2].trim()
    let val=combined[root]??null
    if(root==="np"&&rest.startsWith(".")) {
      // handled above
    }
    while(rest.length>0){
      const dotM=rest.match(/^\.(\w+)(.*)$/)
      if(dotM){
        const attr=dotM[1]; rest=dotM[2].trim()
        if(rest.startsWith("(")){
          const close=matchParen(rest,0); const argsStr=rest.slice(1,close)
          rest=rest.slice(close+1).trim()
          const args=splitArgs(argsStr).map(a=>evalNpExpr(a.trim(),lenv))
          val=npMethod(val,attr,args,lenv)
        } else {
          val=npAttr(val,attr)
        }
        continue
      }
      if(rest.startsWith("[")){
        const close=matchParen(rest,0); const sliceStr=rest.slice(1,close).trim()
        rest=rest.slice(close+1).trim()
        // Boolean expression index? e.g. arr[arr > 5]
        const boolExpr=evalNpExpr(sliceStr,{...combined,__origArr:val})
        if(isArr(boolExpr)&&boolExpr.dtype==="bool"&&isArr(val)){
          val={__type:"ndarray",data:val.data.filter((_,i)=>boolExpr.data[i]),shape:[val.data.filter((_,i)=>boolExpr.data[i]).length],dtype:val.dtype}
        } else if(isArr(val)) {
          val=npSlice(val,sliceStr,combined)
        } else if(Array.isArray(val)) {
          const key=evalNpExpr(sliceStr,lenv); val=Array.isArray(key)?key.map(k=>val[k]):val[key]
        }
        continue
      }
      if(rest.startsWith("(")){
        const close=matchParen(rest,0); const argsStr=rest.slice(1,close)
        rest=rest.slice(close+1).trim()
        const args=splitArgs(argsStr).map(a=>evalNpExpr(a.trim(),lenv))
        if(typeof val==="function") val=val(...args)
        continue
      }
      break
    }
    if(val===null&&!rest.length&&!combined.hasOwnProperty(root)){
      if(root==="np") return "np" // Namespace ref
    }
    return val
  }

  function npAttr(val, name) {
    if(isArr(val)){
      if(name==="shape")    return val.shape
      if(name==="ndim")     return val.shape.length
      if(name==="size")     return _npSize(val.shape)
      if(name==="dtype")    return val.dtype
      if(name==="T")        return npTranspose(val)
      if(name==="flat")     return {__type:"ndarray",data:[...val.data],shape:[val.data.length],dtype:val.dtype}
      if(name==="real")     return _npCopy(val)
      if(name==="imag")     return npZeros(val.shape)
      if(name==="nbytes")   return val.data.length*(val.dtype==="float64"?8:4)
      if(name==="itemsize") return val.dtype==="float64"?8:4
      if(name==="values")   return val.data
    }
    if(val&&val.__type==="Rng") return val
    return null
  }
  function npMethod(val, name, args, lenv) {
    const a0=args[0],a1=args[1],a2=args[2]
    if(isArr(val)){
      // Named: axis / keepdims from kwargs
      const axisArg=args.find((_,i)=>i===1&&isNum(a1))?a1:undefined
      if(name==="reshape")  { const sh=Array.isArray(a0)?a0:args.map(Number); return {__type:"ndarray",data:[...val.data],shape:resolveShape(sh,val.data.length),dtype:val.dtype} }
      if(name==="flatten"||name==="ravel") return {__type:"ndarray",data:[...val.data],shape:[val.data.length],dtype:val.dtype}
      if(name==="copy")     return _npCopy(val)
      if(name==="astype")   { const dt=String(a0).replace(/'/g,"").replace(/"/g,""); const conv=dt==="int"||dt==="int64"||dt==="int32"?Math.round:(dt==="bool"?Boolean:Number); return {__type:"ndarray",data:val.data.map(v=>conv(v)),shape:[...val.shape],dtype:dt} }
      if(name==="tolist")   return val.data
      if(name==="sum")      return npReduce(val,a0,"sum")
      if(name==="mean")     return npReduce(val,a0,"mean")
      if(name==="std")      return npReduce(val,a0,"std")
      if(name==="var")      return npReduce(val,a0,"var")
      if(name==="min")      return npReduce(val,a0,"min")
      if(name==="max")      return npReduce(val,a0,"max")
      if(name==="cumsum")   return npFn("cumsum",[val],lenv)
      if(name==="sort")     { const d=[...val.data].sort((a,b)=>a-b); return {__type:"ndarray",data:d,shape:[...val.shape],dtype:val.dtype} }
      if(name==="argsort")  { const idx=val.data.map((_,i)=>i).sort((i,j)=>val.data[i]-val.data[j]); return {__type:"ndarray",data:idx,shape:[idx.length],dtype:"int64"} }
      if(name==="argmax")   return npArgReduce(val,"max",a0)
      if(name==="argmin")   return npArgReduce(val,"min",a0)
      if(name==="clip")     return {__type:"ndarray",data:val.data.map(v=>Math.max(Number(a0)||0,Math.min(Number(a1)||Infinity,v))),shape:[...val.shape],dtype:val.dtype}
      if(name==="round")    return {__type:"ndarray",data:val.data.map(v=>rnd(v,Number(a0)||0)),shape:[...val.shape],dtype:"float64"}
      if(name==="T")        return npTranspose(val)
      if(name==="all")      return val.data.every(Boolean)
      if(name==="any")      return val.data.some(Boolean)
      if(name==="fill")     { val.data.fill(Number(a0)); return null }
      if(name==="dot")      return npMatmul(val,a0)
      if(name==="transpose") return npTranspose(val)
      if(name==="squeeze")  { const sh=val.shape.filter(d=>d!==1); return {__type:"ndarray",data:[...val.data],shape:sh.length?sh:[1],dtype:val.dtype} }
      if(name==="item")     return val.data[a0||0]
    }
    if(val&&val.__type==="Rng"){
      if(name==="random")   return npRand(...args)
      if(name==="integers") return npRandint(args[0],args[1],args[2])
      if(name==="standard_normal") return npRandn(...args)
    }
    return null
  }

  // ── Statement executor ────────────────────────────────────────
  function execLine(line) {
    line=line.trim()
    if(!line||line.startsWith("#"))return
    if(/^(import|from)\s/.test(line))return

    // print(...)
    const printM=line.match(/^print\s*\((.+)\)$/)
    if(printM){
      const inner=printM[1]
      const args=splitArgs(inner)
      if(args.length>1){
        const parts=args.map(a=>{ const v=evalNpExpr(a.trim()); return fmtVal(v) })
        out.push({type:"text",text:parts.join(" ")})
        return
      }
      const val=evalNpExpr(inner.trim())
      if(isArr(val)) out.push({type:"arr",arr:val})
      else if(Array.isArray(val)) out.push({type:"list",val})
      else out.push({type:"text",text:fmtVal(val)})
      return
    }

    // Augmented assignment: arr[i] = v  or  arr[r,c] = v
    const arrAssM=line.match(/^(\w+)\s*\[([^\]]+)\]\s*=\s*(.+)$/)
    if(arrAssM){
      const a=env[arrAssM[1]]; const key=arrAssM[2]; const val=evalNpExpr(arrAssM[3])
      if(isArr(a)){
        if(key.includes(",")){ const [r,c]=key.split(",").map(s=>parseInt(s.trim())); a.data[r*a.shape[1]+c]=Number(val) }
        else if(/^-?\d+$/.test(key.trim())){const i=parseInt(key);a.data[i<0?a.data.length+i:i]=Number(val)}
        else { // slice or bool assignment
          const mask=evalNpExpr(key,env)
          if(isArr(mask)&&mask.dtype==="bool") mask.data.forEach((m,i)=>{if(m)a.data[i]=Number(val)})
        }
      }
      return
    }

    // Variable assignment
    const assM=line.match(/^([A-Za-z_]\w*(?:\s*,\s*[A-Za-z_]\w*)*)\s*=\s*(.+)$/)
    if(assM){
      const lhs=assM[1].trim(); const rhs=assM[2].trim()
      const val=evalNpExpr(rhs,env)
      const vars=lhs.split(",").map(v=>v.trim())
      if(vars.length>1){
        const vals=Array.isArray(val)?val:(isArr(val)?val.data:[val])
        vars.forEach((v,i)=>{if(v)env[v]=vals[i]??null})
      } else {
        env[lhs]=val
      }
      return
    }

    // for loop
    const forM=line.match(/^for\s+(\w+(?:\s*,\s*\w+)?)\s+in\s+(.+):$/)
    if(forM){ env.__for={vars:forM[1].split(",").map(s=>s.trim()),iter:forM[2].trim()}; return }

    // f-string or expression statement
    const val=evalNpExpr(line,env)
    if(val!==null&&val!==undefined){
      if(isArr(val)) out.push({type:"arr",arr:val})
    }
  }

  function fmtVal(v) {
    if(v===null||v===undefined) return "None"
    if(v===true) return "True"; if(v===false) return "False"
    if(isArr(v)) return fmtArr(v)
    if(Array.isArray(v)) return "["+v.map(fmtVal).join(", ")+"]"
    if(typeof v==="number"&&!Number.isInteger(v)) return parseFloat(v.toPrecision(6)).toString()
    return String(v)
  }
  function fmtArr(arr) {
    if(arr.shape.length===1) return "["+arr.data.map(v=>fmtNum(v,arr.dtype)).join(" ")+"]"
    if(arr.shape.length===2){
      const [rows,cols]=arr.shape
      const rowStrs=[]
      for(let r=0;r<rows;r++){
        const row=arr.data.slice(r*cols,(r+1)*cols)
        rowStrs.push("["+row.map(v=>fmtNum(v,arr.dtype)).join(" ")+"]")
      }
      return "["+rowStrs.join("\n ")+"]"
    }
    return "["+arr.data.map(v=>fmtNum(v,arr.dtype)).join(" ")+"]"
  }
  function fmtNum(v,dtype) {
    if(v===null||v===undefined||isNaN(v)) return "nan"
    if(v===Infinity)return "inf"; if(v===-Infinity)return "-inf"
    if(dtype==="bool") return v?"True":"False"
    if(dtype==="object") return String(v)
    if(dtype==="int64"||Number.isInteger(v)) return String(Math.round(v))
    return parseFloat(v.toPrecision(6)).toString()
  }

  // ── Process code ──────────────────────────────────────────────
  const lines=code.split("\n")
  let forBlock=null; let forBody=[]
  let ifBlock=null;  let ifBody=[]

  for(let li=0;li<lines.length;li++){
    const raw=lines[li]; const stripped=raw.trim()
    if(!stripped){if(forBlock){execForBlock(forBlock,forBody);forBlock=null;forBody=[]}continue}
    const indent=raw.match(/^(\s*)/)[1].length

    if(forBlock&&indent>0){forBody.push(stripped);continue}
    if(forBlock){execForBlock(forBlock,forBody);forBlock=null;forBody=[]}

    const forM=stripped.match(/^for\s+(\w+(?:\s*,\s*\w+)?)\s+in\s+(.+):$/)
    if(forM){forBlock={vars:forM[1].split(",").map(s=>s.trim()),iter:forM[2]};forBody=[];continue}

    execLine(stripped)
  }
  if(forBlock)execForBlock(forBlock,forBody)

  return out

  function execForBlock(fb,body){
    let iter=evalNpExpr(fb.iter,env)
    const items=isArr(iter)?iter.data:(Array.isArray(iter)?iter:(typeof iter==="number"?Array.from({length:iter},(_,i)=>i):[]))
    items.forEach(item=>{
      const vars=fb.vars
      if(vars.length>1&&Array.isArray(item)){vars.forEach((v,i)=>env[v]=item[i])}
      else env[vars[0]]=item
      body.forEach(l=>execLine(l))
    })
  }
}

function _npRenderHtml(results) {
  const brand='<div class="np-brand">🔢 NumPy Simulator</div>'
  const body=results.map(r=>{
    if(r.type==="text")  return `<pre class="np-text">${String(r.text).replace(/</g,"&lt;")}</pre>`
    if(r.type==="arr")   return _npArrHtml(r.arr)
    if(r.type==="list")  return `<pre class="np-text">${JSON.stringify(r.val)}</pre>`
    return ""
  }).join("")
  return `<!DOCTYPE html><html><head><style>
    *{box-sizing:border-box;margin:0;padding:0}
    body{background:#0b0b1e;color:#e2e0f0;font-family:'Fira Code',monospace;font-size:12.5px;padding:12px;overflow:auto}
    .np-brand{font-size:11px;color:#6b7280;margin-bottom:8px;font-style:italic;border-bottom:1px solid #1e1e3a;padding-bottom:6px}
    .np-text{color:#a3e635;padding:4px 0;margin-bottom:8px;white-space:pre-wrap;word-break:break-all}
    .np-wrap{margin-bottom:10px}
    .np-meta{font-size:10px;color:#6b7280;margin-bottom:3px}
    .np-arr{color:#93c5fd;white-space:pre;font-family:'Fira Code',monospace}
    .np-2d{display:grid;gap:2px;margin-bottom:8px}
    .np-row{display:flex;gap:6px}
    .np-cell{color:#93c5fd;text-align:right;min-width:60px;padding:2px 4px}
    .np-cell.bool-true{color:#a3e635}
    .np-cell.bool-false{color:#f87171}
    .np-cell.str-val{color:#fde68a;text-align:left}
    table{border-collapse:collapse;font-size:12px}
    th{background:#1a1a3a;color:#4dabcf;padding:4px 10px;text-align:right;border:1px solid #252545;font-size:11px}
    td{padding:3px 10px;border:1px solid #1e1e3a;color:#93c5fd;text-align:right;font-family:'Fira Code',monospace}
  </style></head><body>${brand}${body||'<div class="np-text">Write NumPy code and click Run ▶</div>'}</body></html>`
}

function _npArrHtml(arr) {
  if(!arr||!arr.data) return ""
  const sh=arr.shape; const dt=arr.dtype

  if(sh.length===1){
    const cells=arr.data.map(v=>{
      const cls=dt==="bool"?(v?"bool-true":"bool-false"):(dt==="object"?"str-val":"")
      return `<span class="np-cell${cls?" "+cls:""}">${_npFmtCell(v,dt)}</span>`
    }).join("")
    return `<div class="np-wrap"><div class="np-meta">ndarray shape=(${sh[0]},) dtype=${dt}</div><div class="np-row">${cells}</div></div>`
  }
  if(sh.length===2){
    const [rows,cols]=sh
    const maxRows=Math.min(rows,15)
    let html=`<div class="np-wrap"><div class="np-meta">ndarray shape=(${rows}, ${cols}) dtype=${dt}</div><table><tbody>`
    for(let r=0;r<maxRows;r++){
      html+=`<tr>`
      for(let c=0;c<cols;c++){
        const v=arr.data[r*cols+c]
        html+=`<td>${_npFmtCell(v,dt)}</td>`
      }
      html+=`</tr>`
    }
    if(rows>maxRows)html+=`<tr><td colspan="${cols}" style="color:#4b5563;text-align:center">... ${rows-maxRows} more rows</td></tr>`
    return html+`</tbody></table></div>`
  }
  // Fallback: flat display
  return `<div class="np-wrap"><div class="np-meta">ndarray shape=(${sh.join("×")}) dtype=${dt}</div><pre class="np-arr">${JSON.stringify(arr.data)}</pre></div>`
}
function _npFmtCell(v,dt) {
  if(v===null||v===undefined||isNaN(v)) return "nan"
  if(v===Infinity)return "∞"; if(v===-Infinity)return "-∞"
  if(dt==="bool") return v?"True":"False"
  if(dt==="object") return String(v)
  if(dt==="int64") return String(Math.round(v))
  if(typeof v==="number"&&!Number.isInteger(v)) return parseFloat(v.toPrecision(5)).toString()
  return String(v)
}

// ══════════════════════════════════════════════════════════════════
// Pandas Simulator
// ══════════════════════════════════════════════════════════════════

function _pdExecute(code) {
  const out  = []       // output items: {type:'text'|'table'|'dict'|'series', ...}
  const env  = {}       // variable store
  const dfs  = {}       // DataFrames: { name: { cols:[], rows:[{}...] } }

  // ── DataFrame helpers ───────────────────────────────────────────
  const isDf  = v => v && v.__type === "DataFrame"
  const isSer = v => v && v.__type === "Series"

  function mkDf(cols, rows) { return { __type:"DataFrame", cols, rows } }
  function mkSer(name, vals, idx) {
    idx = idx || vals.map((_,i)=>i)
    return { __type:"Series", name, vals, idx }
  }

  function dfFromDict(d) {
    const cols = Object.keys(d)
    const n    = d[cols[0]] ? d[cols[0]].length : 0
    const rows = []
    for (let i=0;i<n;i++) { const r={}; cols.forEach(c=>r[c]=d[c][i]); rows.push(r) }
    return mkDf(cols, rows)
  }
  function dfFromListOfDicts(arr) {
    const cols = arr.length ? Object.keys(arr[0]) : []
    return mkDf(cols, arr.map(r=>{const o={};cols.forEach(c=>o[c]=r[c]??null);return o}))
  }
  function dfCopy(df) { return mkDf([...df.cols], df.rows.map(r=>({...r}))) }

  // ── Expression evaluator ────────────────────────────────────────
  function evalPy(expr, localEnv={}) {
    expr = expr.trim()
    const lenv = {...env, ...localEnv}

    // None / True / False
    if (expr === "None" || expr === "null") return null
    if (expr === "True")  return true
    if (expr === "False") return false

    // Number
    if (/^-?\d+(\.\d+)?$/.test(expr)) return parseFloat(expr)

    // String 'x' or "x"
    if ((expr.startsWith("'")&&expr.endsWith("'"))||(expr.startsWith('"')&&expr.endsWith('"'))) return expr.slice(1,-1)

    // f-string  f"..." – simplified: evaluate {var} references
    if (/^f["']/.test(expr)) {
      const inner = expr.slice(2,-1)
      return inner.replace(/\{([^}]+)\}/g, (_,e) => {
        const v = evalPy(e.trim(), localEnv)
        return v === null ? "None" : String(v)
      })
    }

    // List literal [1, 2, 3]
    if (expr.startsWith("[") && expr.endsWith("]")) {
      return splitPyArgs(expr.slice(1,-1)).map(a=>evalPy(a.trim(),localEnv))
    }

    // Dict literal {...}
    if (expr.startsWith("{") && expr.endsWith("}")) {
      const d={}
      splitPyArgs(expr.slice(1,-1)).forEach(pair=>{
        const ci = findColon(pair)
        if (ci<0) return
        const k = evalPy(pair.slice(0,ci).trim(),localEnv)
        const v = evalPy(pair.slice(ci+1).trim(),localEnv)
        d[k]=v
      })
      return d
    }

    // Tuple (a, b)
    if (expr.startsWith("(") && expr.endsWith(")")) {
      const inner = expr.slice(1,-1).trim()
      if (!inner) return []
      return splitPyArgs(inner).map(a=>evalPy(a.trim(),localEnv))
    }

    // String multiplication 'x' * n
    const strMulM = expr.match(/^(['"][^'"]*['"])\s*\*\s*(\d+)$/)
    if (strMulM) return evalPy(strMulM[1],localEnv).repeat(parseInt(strMulM[2]))

    // Arithmetic: +, -, *, /, //, %, **
    const arith = evalArith(expr, lenv)
    if (arith !== undefined) return arith

    // Variable reference (possibly dotted/bracketed chains)
    return evalChain(expr, lenv)
  }

  function findColon(s) {
    let depth=0, inStr=false, strCh=""
    for(let i=0;i<s.length;i++){
      const c=s[i]
      if(inStr){if(c===strCh)inStr=false;continue}
      if(c==="'"||c==='"'){inStr=true;strCh=c;continue}
      if("([{".includes(c)){depth++;continue}
      if(")]}".includes(c)){depth--;continue}
      if(c===":"&&depth===0)return i
    }
    return -1
  }

  function splitPyArgs(str) {
    const parts=[]; let cur="", depth=0, inStr=false, strCh=""
    for(const c of str){
      if(inStr){cur+=c;if(c===strCh)inStr=false;continue}
      if(c==="'"||c==='"'){inStr=true;strCh=c;cur+=c;continue}
      if("([{".includes(c)){depth++;cur+=c;continue}
      if(")]}".includes(c)){depth--;cur+=c;continue}
      if(c===","&&depth===0){parts.push(cur.trim());cur="";continue}
      cur+=c
    }
    if(cur.trim())parts.push(cur.trim())
    return parts
  }

  function evalArith(expr, lenv) {
    // Find top-level binary operator (right-to-left for +/-)
    let depth=0, inStr=false, strCh=""
    const ops = [['+','-'],['*','/','//','%'],['**']]
    for(const opSet of ops){
      for(let i=expr.length-1;i>=0;i--){
        const c=expr[i]
        if(inStr){if(c===strCh)inStr=false;continue}
        if(c==="'"||c==='"'){inStr=true;strCh=c;continue}
        if(")]}".includes(c)){depth++;continue}
        if("([{".includes(c)){depth--;continue}
        if(depth!==0)continue
        for(const op of opSet){
          if(expr.slice(i,i+op.length)===op && i>0){
            const L=evalPy(expr.slice(0,i).trim(),lenv)
            const R=evalPy(expr.slice(i+op.length).trim(),lenv)
            if(L===undefined||R===undefined)continue
            if(op==='+'){
              if(typeof L==='string'||typeof R==='string') return String(L??'')+String(R??'')
              if(isDf(L)||isSer(L)||isDf(R)||isSer(R)) return undefined
              return (parseFloat(L)||0)+(parseFloat(R)||0)
            }
            if(op==='-') return (parseFloat(L)||0)-(parseFloat(R)||0)
            if(op==='*'){
              if(typeof L==='string') return L.repeat(parseInt(R)||0)
              if(isDf(L)||isSer(L)) return undefined
              return (parseFloat(L)||0)*(parseFloat(R)||0)
            }
            if(op==='/') return parseFloat(R)===0?null:(parseFloat(L)||0)/(parseFloat(R)||0)
            if(op==='//') return Math.floor((parseFloat(L)||0)/(parseFloat(R)||1))
            if(op==='%') return (parseFloat(L)||0)%(parseFloat(R)||1)
            if(op==='**') return Math.pow(parseFloat(L)||0,parseFloat(R)||0)
          }
        }
      }
    }
    return undefined
  }

  function evalChain(expr, lenv) {
    // Split off function calls and attribute access
    // e.g. df.groupby('dept')['salary'].mean().reset_index()
    let base = expr, chain = []

    // Tokenise the chain
    const toks = tokeniseChain(expr)
    if (!toks) return lenv[expr] ?? null
    let val = lenv[toks.root] ?? null
    if (val === undefined) val = null

    for (const tok of toks.ops) {
      if (tok.type === "attr") { val = getAttr(val, tok.name); continue }
      if (tok.type === "call") { val = callMethod(val, tok.name, tok.args, lenv); continue }
      if (tok.type === "idx")  { val = getIdx(val, tok.key, lenv); continue }
    }
    return val
  }

  function tokeniseChain(expr) {
    // Try to find the root identifier and chain of ops
    const root_m = expr.match(/^([A-Za-z_]\w*)(.*)$/)
    if (!root_m) return null
    const root = root_m[1]
    let rest = root_m[2].trim()
    const ops = []
    while (rest.length > 0) {
      // .attr or .method(args)
      const dot_m = rest.match(/^\.([A-Za-z_]\w*)(.*)$/)
      if (dot_m) {
        const name = dot_m[1]; rest = dot_m[2].trim()
        if (rest.startsWith("(")) {
          const close = matchClose(rest, 0)
          const argsStr = rest.slice(1, close)
          rest = rest.slice(close+1).trim()
          ops.push({type:"call", name, args: argsStr})
        } else {
          ops.push({type:"attr", name})
        }
        continue
      }
      // [key]
      if (rest.startsWith("[")) {
        const close = matchClose(rest, 0)
        const key = rest.slice(1, close)
        rest = rest.slice(close+1).trim()
        ops.push({type:"idx", key})
        continue
      }
      // (args) at root level — function call on root
      if (rest.startsWith("(")) {
        const close = matchClose(rest, 0)
        const argsStr = rest.slice(1, close)
        rest = rest.slice(close+1).trim()
        ops.push({type:"call", name:"__call__", args: argsStr})
        continue
      }
      break
    }
    return { root, ops }
  }

  function matchClose(s, open) {
    const pairs = {"(":")", "[":"]", "{":"}"}
    const closeChar = pairs[s[open]]
    let depth=1, inStr=false, strCh=""
    for(let i=open+1;i<s.length;i++){
      const c=s[i]
      if(inStr){if(c===strCh)inStr=false;continue}
      if(c==="'"||c==='"'){inStr=true;strCh=c;continue}
      if(c===s[open])depth++
      if(c===closeChar){depth--;if(depth===0)return i}
    }
    return s.length-1
  }

  function getAttr(obj, name) {
    if (obj === null || obj === undefined) return null
    if (isDf(obj)) {
      if (name === "shape") return [obj.rows.length, obj.cols.length]
      if (name === "columns") return mkSer("columns", obj.cols, obj.cols.map((_,i)=>i))
      if (name === "dtypes") {
        const types={}; obj.cols.forEach(c=>{ const v=obj.rows[0]?.[c]; types[c]=typeof v==="number"?"float64":"object" })
        return mkSer("dtype", Object.values(types), obj.cols)
      }
      if (name === "index") return mkSer("index", obj.rows.map((_,i)=>i))
      if (name === "values") return obj.rows.map(r=>obj.cols.map(c=>r[c]))
      if (name === "T") { // transpose
        const d={}; obj.cols.forEach(c=>{d[c]=obj.rows.map(r=>r[c])}); return dfFromDict(d)
      }
    }
    if (isSer(obj)) {
      if (name === "values") return obj.vals
      if (name === "index") return mkSer("index", obj.idx, obj.idx.map((_,i)=>i))
      if (name === "dtype") return typeof obj.vals[0]==="number"?"float64":"object"
    }
    if (Array.isArray(obj)) {
      if (name === "shape") return [obj.length]
    }
    return null
  }

  function getIdx(obj, keyExpr, lenv) {
    const key = evalPy(keyExpr, lenv)
    if (isDf(obj)) {
      // df[condition] — boolean filter  stored as special object from comparison
      if (key && key.__type === "BoolMask") {
        return mkDf(obj.cols, obj.rows.filter((_,i)=>key.mask[i]))
      }
      // df[['a','b']] — list of columns
      if (Array.isArray(key)) {
        return mkDf(key, obj.rows.map(r=>{const n={};key.forEach(c=>n[c]=r[c]??null);return n}))
      }
      // df['col'] — single column → Series
      if (typeof key === "string" && obj.cols.includes(key)) {
        return mkSer(key, obj.rows.map(r=>r[key]), obj.rows.map((_,i)=>i))
      }
      // df[n] — row by integer
      if (typeof key === "number") {
        const r = obj.rows[key]
        return r ? mkSer(key, obj.cols.map(c=>r[c]), obj.cols) : null
      }
    }
    if (isSer(obj)) {
      if (typeof key === "number") return obj.vals[key] ?? null
    }
    if (Array.isArray(obj)) return obj[key] ?? null
    if (typeof obj === "object" && obj !== null) return obj[key] ?? null
    return null
  }

  function callMethod(obj, name, argsStr, lenv) {
    // top-level function calls: pd.DataFrame, pd.merge, pd.concat, pd.to_datetime, pd.get_dummies
    if (obj === "pd" || obj === null && name === "__call__") return null
    const args = argsStr.trim() ? splitPyArgs(argsStr) : []
    const evalA = (i,def=null)=> i<args.length ? evalPy(args[i].trim(),lenv) : def
    const namedArg = (n,def=null)=>{
      const found = args.find(a=>a.trim().startsWith(n+"="))
      return found ? evalPy(found.trim().slice(n.length+1),lenv) : def
    }
    const posOrNamed = (pos, n, def=null) => {
      const na = namedArg(n)
      return na !== null ? na : evalA(pos, def)
    }

    // ── Pandas top-level ─────────────────────────────────────────
    if (name === "DataFrame") {
      const arg = evalA(0, {})
      if (arg && typeof arg === "object" && !Array.isArray(arg) && !isDf(arg)) {
        // dict of lists
        if (Object.values(arg).every(v=>Array.isArray(v))) return dfFromDict(arg)
        // list of dicts handled next
      }
      if (Array.isArray(arg)) return dfFromListOfDicts(arg)
      return mkDf([], [])
    }
    if (name === "Series") {
      const data = evalA(0, [])
      const idx  = namedArg("index") || (Array.isArray(data)?data.map((_,i)=>i):[])
      const nm   = namedArg("name") || "0"
      return mkSer(nm, Array.isArray(data)?data:[], idx)
    }
    if (name === "merge") {
      const left  = evalA(0); const right = evalA(1)
      const on    = namedArg("on"); const how = namedArg("how","inner")
      const lOn   = namedArg("left_on") || on; const rOn = namedArg("right_on") || on
      if (!isDf(left)||!isDf(right)) return mkDf([],[])
      return pdMerge(left,right,lOn,rOn,how)
    }
    if (name === "concat") {
      const frames = evalA(0, [])
      const axis   = namedArg("axis",0)
      const ignore = namedArg("ignore_index",false)
      if (!Array.isArray(frames)) return mkDf([],[])
      if (axis===1||axis==="1") {
        const allCols=[...new Set(frames.flatMap(f=>isDf(f)?f.cols:[]))]
        const maxLen = Math.max(...frames.map(f=>isDf(f)?f.rows.length:0))
        const rows=[]
        for(let i=0;i<maxLen;i++){
          const r={}; frames.forEach(f=>{ if(isDf(f)&&f.rows[i]) f.cols.forEach(c=>r[c]=f.rows[i][c]) }); rows.push(r)
        }
        return mkDf(allCols, rows)
      }
      const cols=[...new Set(frames.flatMap(f=>isDf(f)?f.cols:[]))]
      const rows=frames.flatMap(f=>isDf(f)?f.rows.map(r=>{const n={};cols.forEach(c=>n[c]=r[c]??null);return n}):[])
      return mkDf(cols, rows)
    }
    if (name === "to_datetime") {
      const arg = evalA(0)
      if (isSer(arg)) return mkSer(arg.name, arg.vals.map(v=>v), arg.idx)
      if (isDf(arg)) return arg
      return arg // just return as-is for scalar
    }
    if (name === "get_dummies") {
      const df  = evalA(0); const columns = namedArg("columns"); const prefix = namedArg("prefix")
      if (!isDf(df)) return df
      const res = dfCopy(df)
      const targetCols = columns ? (Array.isArray(columns)?columns:[columns]) : []
      targetCols.forEach(col=>{
        if (!res.cols.includes(col)) return
        const vals = [...new Set(res.rows.map(r=>r[col]))]
        const pfx  = prefix || col
        vals.sort().forEach(v=>{
          const newCol = `${pfx}_${v}`
          if (!res.cols.includes(newCol)) res.cols.push(newCol)
          res.rows.forEach(r=>{ r[newCol] = r[col]===v ? 1 : 0 })
        })
        res.cols = res.cols.filter(c=>c!==col)
        res.rows.forEach(r=>delete r[col])
      })
      return res
    }
    if (name === "Timestamp") {
      const s = evalA(0,"today")
      if (s==="today"||s==="now") return new Date().toISOString().slice(0,10)
      return s
    }
    if (name === "Timedelta") {
      const days = namedArg("days",0)
      return { __type:"Timedelta", days: parseFloat(days)||0 }
    }
    if (name === "read_csv") return mkDf([],[]) // Simulator can't read files
    if (name === "crosstab") {
      const idx = evalA(0); const col = evalA(1)
      if (!isSer(idx)||!isSer(col)) return mkDf([],[])
      const rowVals=[...new Set(idx.vals)].sort()
      const colVals=[...new Set(col.vals)].sort()
      const mat={}; rowVals.forEach(r=>{ mat[r]={}; colVals.forEach(c=>mat[r][c]=0) })
      idx.vals.forEach((r,i)=>{ if(mat[r]&&col.vals[i]!==undefined) mat[r][col.vals[i]]++ })
      const rows=rowVals.map(r=>{ const o={__idx:r}; colVals.forEach(c=>o[c]=mat[r][c]); return o })
      return mkDf([...colVals], rows, rowVals)
    }

    // ── Methods on DataFrames ────────────────────────────────────
    if (isDf(obj)) {
      if (name === "head")  return mkDf(obj.cols, obj.rows.slice(0, parseInt(evalA(0,5))))
      if (name === "tail")  return mkDf(obj.cols, obj.rows.slice(-parseInt(evalA(0,5))))
      if (name === "copy")  return dfCopy(obj)
      if (name === "reset_index") {
        const drop = namedArg("drop",false)
        const rows = obj.rows.map((r,i)=>{ const n={...r}; if(!drop) n["index"]=i; return n })
        const cols = drop ? obj.cols : ["index",...obj.cols.filter(c=>c!=="index")]
        return mkDf(cols, rows)
      }
      if (name === "set_index") {
        const col = evalA(0)
        const cols = obj.cols.filter(c=>c!==col)
        const rows = obj.rows.map(r=>{ const n={...r}; delete n[col]; return n })
        return mkDf(cols, rows)
      }
      if (name === "drop") {
        const what = evalA(0); const axis = namedArg("axis",0)
        const toRemove = Array.isArray(what)?what:[what]
        if (axis===1||axis==="1"||axis==="columns") {
          return mkDf(obj.cols.filter(c=>!toRemove.includes(c)), obj.rows.map(r=>{ const n={...r}; toRemove.forEach(c=>delete n[c]); return n }))
        }
        return mkDf(obj.cols, obj.rows.filter((_,i)=>!toRemove.includes(i)))
      }
      if (name === "drop_duplicates") {
        const subset = namedArg("subset")
        const keys = subset ? (Array.isArray(subset)?subset:[subset]) : obj.cols
        const seen=new Set()
        const rows=obj.rows.filter(r=>{ const k=keys.map(c=>r[c]).join("|"); if(seen.has(k))return false; seen.add(k); return true })
        return mkDf(obj.cols, rows)
      }
      if (name === "rename") {
        const colMap = namedArg("columns") || {}
        const newCols = obj.cols.map(c=>colMap[c]||c)
        const rows = obj.rows.map(r=>{ const n={}; obj.cols.forEach((c,i)=>n[newCols[i]]=r[c]); return n })
        return mkDf(newCols, rows)
      }
      if (name === "sort_values") {
        const by = evalA(0); const asc = namedArg("ascending",true)
        const byArr = Array.isArray(by)?by:[by]
        const ascArr = Array.isArray(asc)?asc:byArr.map(()=>asc)
        const rows = [...obj.rows].sort((a,b)=>{
          for(let i=0;i<byArr.length;i++){
            const col=byArr[i]; const d=ascArr[i]?1:-1
            const av=a[col],bv=b[col]
            if(av===null||av===undefined) return 1
            if(bv===null||bv===undefined) return -1
            if(typeof av==="number"&&typeof bv==="number") { if(av!==bv) return d*(av-bv) }
            else { const cmp=String(av).localeCompare(String(bv)); if(cmp!==0) return d*cmp }
          }
          return 0
        })
        return mkDf(obj.cols, rows)
      }
      if (name === "nlargest")  { const n=parseInt(evalA(0,5)); const c=evalA(1); return mkDf(obj.cols,[...obj.rows].sort((a,b)=>(b[c]||0)-(a[c]||0)).slice(0,n)) }
      if (name === "nsmallest") { const n=parseInt(evalA(0,5)); const c=evalA(1); return mkDf(obj.cols,[...obj.rows].sort((a,b)=>(a[c]||0)-(b[c]||0)).slice(0,n)) }
      if (name === "dropna") {
        const subset = namedArg("subset")
        const cols = subset ? (Array.isArray(subset)?subset:[subset]) : obj.cols
        return mkDf(obj.cols, obj.rows.filter(r=>cols.every(c=>r[c]!==null&&r[c]!==undefined&&r[c]!=="None")))
      }
      if (name === "fillna") {
        const val  = evalA(0)
        const valMap = (val && typeof val === "object" && !isDf(val)) ? val : null
        return mkDf(obj.cols, obj.rows.map(r=>{
          const n={...r}
          obj.cols.forEach(c=>{
            if(n[c]===null||n[c]===undefined||n[c]==="None"){
              n[c] = valMap ? (valMap[c]!==undefined?valMap[c]:null) : val
            }
          })
          return n
        }))
      }
      if (name === "replace") {
        const what = evalA(0); const to_ = evalA(1)
        const rows = obj.rows.map(r=>{
          const n={...r}
          if(typeof what==="object"&&!Array.isArray(what)){
            Object.entries(what).forEach(([col,vmap])=>{
              if(n[col]!==undefined&&vmap[n[col]]!==undefined) n[col]=vmap[n[col]]
            })
          } else {
            obj.cols.forEach(c=>{ if(n[c]===what) n[c]=to_ })
          }
          return n
        })
        return mkDf(obj.cols, rows)
      }
      if (name === "isnull"||name==="isna") {
        return mkDf(obj.cols, obj.rows.map(r=>{ const n={}; obj.cols.forEach(c=>n[c]=r[c]===null||r[c]===undefined||r[c]==="None"); return n }))
      }
      if (name === "notnull"||name==="notna") {
        return mkDf(obj.cols, obj.rows.map(r=>{ const n={}; obj.cols.forEach(c=>n[c]=r[c]!==null&&r[c]!==undefined&&r[c]!=="None"); return n }))
      }
      if (name === "describe") {
        const numCols = obj.cols.filter(c=>obj.rows.some(r=>typeof r[c]==="number"))
        const stats=["count","mean","std","min","25%","50%","75%","max"]
        const rows=stats.map(s=>{
          const r={__stat:s}
          numCols.forEach(c=>{
            const vals=obj.rows.map(x=>x[c]).filter(v=>typeof v==="number").sort((a,b)=>a-b)
            const n=vals.length; const sum=vals.reduce((a,b)=>a+b,0); const mean=sum/n
            if(s==="count") r[c]=n
            else if(s==="mean") r[c]=Math.round(mean*100)/100
            else if(s==="std") { const v=vals.reduce((a,b)=>a+(b-mean)**2,0)/(n-1||1); r[c]=Math.round(Math.sqrt(v)*100)/100 }
            else if(s==="min") r[c]=vals[0]??null
            else if(s==="25%") r[c]=vals[Math.floor(n*0.25)]??null
            else if(s==="50%") r[c]=vals[Math.floor(n*0.5)]??null
            else if(s==="75%") r[c]=vals[Math.floor(n*0.75)]??null
            else if(s==="max") r[c]=vals[n-1]??null
          })
          return r
        })
        return { __type:"DataFrame", cols:numCols, rows, __index:stats, __statCol:"__stat" }
      }
      if (name === "info") {
        const lines=[`<class 'pandas.core.frame.DataFrame'>`,`RangeIndex: ${obj.rows.length} entries, 0 to ${obj.rows.length-1}`,`Data columns (total ${obj.cols.length} columns):`]
        obj.cols.forEach((c,i)=>{
          const vals=obj.rows.map(r=>r[c]); const nn=vals.filter(v=>v!==null&&v!==undefined).length
          const dt=typeof vals.find(v=>v!==null)==="number"?"float64":"object"
          lines.push(` ${i}  ${c}  ${nn} non-null  ${dt}`)
        })
        lines.push(`dtypes: ${[...new Set(obj.cols.map(c=>typeof obj.rows[0]?.[c]==="number"?"float64":"object"))].join(", ")}`)
        out.push({type:"text", text: lines.join("\n")})
        return null
      }
      if (name === "groupby") {
        const by = evalA(0)
        const byArr = Array.isArray(by)?by:[by]
        return { __type:"GroupBy", df:obj, by:byArr }
      }
      if (name === "assign") {
        const res = dfCopy(obj)
        splitPyArgs(argsStr).forEach(pair=>{
          const eq=pair.indexOf("=")
          if(eq<0)return
          const colName=pair.slice(0,eq).trim()
          const valExpr=pair.slice(eq+1).trim()
          if(!res.cols.includes(colName)) res.cols.push(colName)
          const valObj = evalPy(valExpr, {...lenv, ...{df:obj}})
          if(isSer(valObj)) { res.rows.forEach((r,i)=>r[colName]=valObj.vals[i]??null) }
          else res.rows.forEach(r=>r[colName]=valObj)
        })
        return res
      }
      if (name === "apply") {
        const fn = evalA(0); const axis = namedArg("axis",0)
        // Basic lambda parsing
        const vals = obj.rows.map(r=> applyLambda(fn, axis===1||axis==="1"?r:null, lenv))
        if (axis===1||axis==="1") return mkSer("apply", vals, obj.rows.map((_,i)=>i))
        return mkSer("apply", vals, obj.rows.map((_,i)=>i))
      }
      if (name === "merge") {
        const right = evalA(0); const on=namedArg("on"); const how=namedArg("how","inner")
        return pdMerge(obj, right, on, on, how)
      }
      if (name === "melt") {
        const idVars  = namedArg("id_vars") || []; const valVars = namedArg("value_vars") || []
        const varName = namedArg("var_name","variable"); const valName = namedArg("value_name","value")
        const idArr   = Array.isArray(idVars)?idVars:[idVars]
        const vvArr   = Array.isArray(valVars)?valVars:(valVars.length?[valVars]:obj.cols.filter(c=>!idArr.includes(c)))
        const rows=obj.rows.flatMap(r=>vvArr.map(v=>{ const n={}; idArr.forEach(id=>n[id]=r[id]); n[varName]=v; n[valName]=r[v]??null; return n }))
        return mkDf([...idArr, varName, valName], rows)
      }
      if (name === "pivot") {
        const idx=namedArg("index"); const col=namedArg("columns"); const val=namedArg("values")
        const rowVals=[...new Set(obj.rows.map(r=>r[idx]))].sort()
        const colVals=[...new Set(obj.rows.map(r=>r[col]))].sort()
        const rows=rowVals.map(rv=>{
          const r={__idx:rv}
          colVals.forEach(cv=>{ const found=obj.rows.find(x=>x[idx]===rv&&x[col]===cv); r[cv]=found?found[val]:null })
          return r
        })
        return mkDf(colVals, rows)
      }
      if (name === "pivot_table") {
        const val=namedArg("values"); const idx=namedArg("index"); const col=namedArg("columns")
        const fn=namedArg("aggfunc","mean"); const fill=namedArg("fill_value",null)
        const rowVals=[...new Set(obj.rows.map(r=>r[idx]))].sort()
        const colVals=[...new Set(obj.rows.map(r=>r[col]))].sort()
        const rows=rowVals.map(rv=>{
          const r={__idx:rv}
          colVals.forEach(cv=>{
            const vals=obj.rows.filter(x=>x[idx]===rv&&x[col]===cv).map(x=>x[val]).filter(v=>v!==null)
            let agg=fill
            if(vals.length){
              if(fn==="mean") agg=Math.round(vals.reduce((a,b)=>a+b,0)/vals.length*100)/100
              else if(fn==="sum") agg=vals.reduce((a,b)=>a+b,0)
              else if(fn==="count") agg=vals.length
              else if(fn==="min") agg=Math.min(...vals)
              else if(fn==="max") agg=Math.max(...vals)
            }
            r[cv]=agg
          })
          return r
        })
        return mkDf(colVals, rows)
      }
      if (name === "where") { // df['col'].where(cond) — fill NaN where False
        const cond=evalA(0); const other=evalA(1,null)
        if(isSer(cond)) return mkDf(obj.cols, obj.rows.map((r,i)=>cond.vals[i]?r:Object.fromEntries(obj.cols.map(c=>[c,other]))))
        return obj
      }
      if (name === "sample") {
        const frac=namedArg("frac"); const n=namedArg("n"); const seed=namedArg("random_state",0)
        const count = frac ? Math.round(obj.rows.length*parseFloat(frac)) : parseInt(n)||1
        const shuffled=[...obj.rows].sort(()=>0.5-Math.sin(seed+Math.random()))
        return mkDf(obj.cols, shuffled.slice(0,count))
      }
      if (name === "query") {
        // Simplified: handle simple comparisons
        const q = evalA(0,"")
        const filtered = obj.rows.filter(r=>evalQueryStr(q,r))
        return mkDf(obj.cols, filtered)
      }
      if (name === "corr") {
        const numCols=obj.cols.filter(c=>obj.rows.some(r=>typeof r[c]==="number"))
        const rows=numCols.map(c1=>{
          const r={__idx:c1}
          numCols.forEach(c2=>{
            const v1=obj.rows.map(r=>r[c1]).filter(v=>typeof v==="number")
            const v2=obj.rows.map(r=>r[c2]).filter(v=>typeof v==="number")
            const n=Math.min(v1.length,v2.length)
            const m1=v1.slice(0,n).reduce((a,b)=>a+b,0)/n
            const m2=v2.slice(0,n).reduce((a,b)=>a+b,0)/n
            const num=v1.slice(0,n).reduce((s,v,i)=>s+(v-m1)*(v2[i]-m2),0)
            const d1=Math.sqrt(v1.slice(0,n).reduce((s,v)=>s+(v-m1)**2,0))
            const d2=Math.sqrt(v2.slice(0,n).reduce((s,v)=>s+(v-m2)**2,0))
            r[c2]=d1&&d2?Math.round(num/d1/d2*1000)/1000:(c1===c2?1:0)
          })
          return r
        })
        return mkDf(numCols, rows)
      }
      if (name === "concat") { return callMethod("pd","concat",argsStr,lenv) }
      if (name === "sum")    return mkSer("sum", obj.cols.map(c=>obj.rows.reduce((a,r)=>a+(typeof r[c]==="number"?r[c]:0),0)), obj.cols)
      if (name === "mean")   return mkSer("mean", obj.cols.map(c=>{ const v=obj.rows.map(r=>r[c]).filter(x=>typeof x==="number"); return v.length?Math.round(v.reduce((a,b)=>a+b,0)/v.length*100)/100:null }), obj.cols)
      if (name === "min")    return mkSer("min", obj.cols.map(c=>Math.min(...obj.rows.map(r=>r[c]).filter(v=>typeof v==="number"))), obj.cols)
      if (name === "max")    return mkSer("max", obj.cols.map(c=>Math.max(...obj.rows.map(r=>r[c]).filter(v=>typeof v==="number"))), obj.cols)
      if (name === "isnull"||name==="isna") { return callMethod(obj,"isnull","",lenv) }
      if (name === "to_dict") return obj.rows
      if (name === "to_list") return obj.cols
    }

    // ── GroupBy ─────────────────────────────────────────────────
    if (obj && obj.__type === "GroupBy") {
      if (name === "__idx__" || name === "mean" || name === "sum" || name === "count" ||
          name === "min" || name === "max" || name === "size" || name === "first" || name === "last") {
        return execGroupAgg(obj.df, obj.by, name, null, evalA(0,null))
      }
      if (name === "agg" || name === "aggregate") {
        const spec = evalA(0, {})
        return execGroupAggSpec(obj.df, obj.by, spec)
      }
      return { __type:"GroupBy", df:obj.df, by:obj.by, col:name }
    }
    // GroupBy column selected: df.groupby('dept')['salary'].mean()
    if (obj && obj.__type === "GroupBy" && !name) return obj
    if (obj && typeof obj === "object" && obj.__type === "GroupBy") {
      return execGroupAgg(obj.df, obj.by, name, obj.col, evalA(0,null))
    }

    // ── Series methods ───────────────────────────────────────────
    if (isSer(obj)) {
      const numVals = obj.vals.filter(v=>typeof v==="number")
      if (name === "sum")    return numVals.reduce((a,b)=>a+b,0)
      if (name === "mean")   return numVals.length?Math.round(numVals.reduce((a,b)=>a+b,0)/numVals.length*100)/100:null
      if (name === "std")    { const m=numVals.reduce((a,b)=>a+b,0)/(numVals.length||1); return Math.round(Math.sqrt(numVals.reduce((a,b)=>a+(b-m)**2,0)/(numVals.length-1||1))*100)/100 }
      if (name === "median") { const s=[...numVals].sort((a,b)=>a-b); return s[Math.floor(s.length/2)]??null }
      if (name === "min")    return numVals.length?Math.min(...numVals):null
      if (name === "max")    return numVals.length?Math.max(...numVals):null
      if (name === "count")  return obj.vals.filter(v=>v!==null&&v!==undefined).length
      if (name === "nunique") return new Set(obj.vals.filter(v=>v!==null)).size
      if (name === "unique")  return mkSer("unique",[...new Set(obj.vals)])
      if (name === "sort_values") { const asc=namedArg("ascending",true); const s=[...obj.vals].sort((a,b)=>asc?(a>b?1:-1):(a<b?1:-1)); return mkSer(obj.name,s,s.map((_,i)=>i)) }
      if (name === "value_counts") { const cnt={}; obj.vals.forEach(v=>{ if(v!==null)cnt[v]=(cnt[v]||0)+1 }); const sorted=Object.entries(cnt).sort((a,b)=>b[1]-a[1]); return mkSer("count",sorted.map(e=>e[1]),sorted.map(e=>e[0])) }
      if (name === "fillna") { const v=evalA(0); return mkSer(obj.name, obj.vals.map(x=>x===null||x===undefined?v:x), obj.idx) }
      if (name === "dropna") { const pairs=obj.vals.map((v,i)=>({v,i:obj.idx[i]})).filter(p=>p.v!==null&&p.v!==undefined); return mkSer(obj.name,pairs.map(p=>p.v),pairs.map(p=>p.i)) }
      if (name === "apply")  { const fn=evalA(0); return mkSer(obj.name, obj.vals.map(v=>applyLambda(fn,v,lenv)), obj.idx) }
      if (name === "map")    { const mp=evalA(0); if(typeof mp==="object"&&!isDf(mp)) return mkSer(obj.name, obj.vals.map(v=>mp[v]!==undefined?mp[v]:null), obj.idx); return mkSer(obj.name, obj.vals.map(v=>applyLambda(mp,v,lenv)), obj.idx) }
      if (name === "astype") { const t=evalA(0,"object"); return mkSer(obj.name, obj.vals.map(v=> t==="int"||t==="float"||t==="float64"?parseFloat(v)||0:String(v)), obj.idx) }
      if (name === "isin")   { const lst=evalA(0,[]); return { __type:"BoolMask", mask: obj.vals.map(v=>lst.includes(v)) } }
      if (name === "between") { const lo=evalA(0),hi=evalA(1); return { __type:"BoolMask", mask: obj.vals.map(v=>v>=lo&&v<=hi) } }
      if (name === "contains") { const pat=evalA(0,""); const ci=namedArg("case",true); return { __type:"BoolMask", mask: obj.vals.map(v=>{ if(v===null)return false; return ci?String(v).includes(pat):String(v).toLowerCase().includes(pat.toLowerCase()) }) } }
      if (name === "startswith") { const p=evalA(0,""); return { __type:"BoolMask", mask: obj.vals.map(v=>v!==null&&String(v).startsWith(p)) } }
      if (name === "endswith")   { const p=evalA(0,""); return { __type:"BoolMask", mask: obj.vals.map(v=>v!==null&&String(v).endsWith(p)) } }
      if (name === "split") { const sep=evalA(0," "); return mkSer(obj.name, obj.vals.map(v=>v!==null?String(v).split(sep):null), obj.idx) }
      if (name === "replace")  { const fr=evalA(0),to=evalA(1,""); return mkSer(obj.name, obj.vals.map(v=>v!==null?String(v).split(fr).join(to):null), obj.idx) }
      if (name === "upper")    return mkSer(obj.name, obj.vals.map(v=>v!==null?String(v).toUpperCase():null), obj.idx)
      if (name === "lower")    return mkSer(obj.name, obj.vals.map(v=>v!==null?String(v).toLowerCase():null), obj.idx)
      if (name === "title")    return mkSer(obj.name, obj.vals.map(v=>v!==null?String(v).replace(/\b\w/g,c=>c.toUpperCase()):null), obj.idx)
      if (name === "strip")    return mkSer(obj.name, obj.vals.map(v=>v!==null?String(v).trim():null), obj.idx)
      if (name === "len")      return mkSer(obj.name, obj.vals.map(v=>v!==null?String(v).length:null), obj.idx)
      if (name === "str")      return { __type:"StrAccessor", ser:obj }
      if (name === "dt")       return { __type:"DtAccessor",  ser:obj }
      if (name === "cumsum")   { let s=0; return mkSer(obj.name, obj.vals.map(v=>{ s+=(typeof v==="number"?v:0); return Math.round(s*100)/100 }), obj.idx) }
      if (name === "cummax")   { let m=-Infinity; return mkSer(obj.name, obj.vals.map(v=>{ if(typeof v==="number"&&v>m)m=v; return m===Infinity?null:m }), obj.idx) }
      if (name === "cummin")   { let m=Infinity;  return mkSer(obj.name, obj.vals.map(v=>{ if(typeof v==="number"&&v<m)m=v; return m===Infinity?null:m }), obj.idx) }
      if (name === "shift")    { const n=parseInt(evalA(0,1)); const v=mkSer(obj.name,[...obj.vals],obj.idx); if(n>0){v.vals.unshift(...Array(n).fill(null));v.vals.splice(-n)}else if(n<0){v.vals.push(...Array(-n).fill(null));v.vals.splice(0,-n)}; return v }
      if (name === "rolling")  { const w=parseInt(evalA(0,3)); return { __type:"Rolling", ser:obj, win:w } }
      if (name === "expanding") { return { __type:"Expanding", ser:obj } }
      if (name === "isnull"||name==="isna") return { __type:"BoolMask", mask: obj.vals.map(v=>v===null||v===undefined) }
      if (name === "notnull"||name==="notna") return { __type:"BoolMask", mask: obj.vals.map(v=>v!==null&&v!==undefined) }
      if (name === "tolist"||name==="to_list") return obj.vals
      if (name === "to_dict") { const d={}; obj.idx.forEach((k,i)=>d[k]=obj.vals[i]); return d }
      if (name === "idxmax")   { let mi=0; obj.vals.forEach((v,i)=>{if(typeof v==="number"&&v>obj.vals[mi])mi=i}); return obj.idx[mi]??0 }
      if (name === "idxmin")   { let mi=0; obj.vals.forEach((v,i)=>{if(typeof v==="number"&&v<obj.vals[mi])mi=i}); return obj.idx[mi]??0 }
      if (name === "quantile") { const q=evalA(0,0.5); const s=[...numVals].sort((a,b)=>a-b); return s[Math.floor(s.length*q)]??null }
      if (name === "rank")     { const asc=namedArg("ascending",true); const sorted=[...numVals].sort((a,b)=>asc?a-b:b-a); return mkSer(obj.name, obj.vals.map(v=>sorted.indexOf(v)+1), obj.idx) }
      if (name === "reset_index") { return mkSer(obj.name, obj.vals, obj.vals.map((_,i)=>i)) }
      if (name === "agg")      {
        const spec=evalA(0,[]); const fns=Array.isArray(spec)?spec:[spec]
        const aggs=fns.map(f=>callMethod(obj,f,"",lenv))
        return mkSer(obj.name, aggs, fns)
      }
    }

    // ── .str accessor ─────────────────────────────────────────────
    if (obj && obj.__type === "StrAccessor") {
      const ser = obj.ser
      const strOp = (fn) => mkSer(ser.name, ser.vals.map(v=>v!==null?fn(String(v)):null), ser.idx)
      if (name==="upper")     return strOp(s=>s.toUpperCase())
      if (name==="lower")     return strOp(s=>s.toLowerCase())
      if (name==="title")     return strOp(s=>s.replace(/\b\w/g,c=>c.toUpperCase()))
      if (name==="strip")     return strOp(s=>s.trim())
      if (name==="len")       return mkSer(ser.name, ser.vals.map(v=>v!==null?String(v).length:null), ser.idx)
      if (name==="split")     { const sep=evalA(0," "); return mkSer(ser.name, ser.vals.map(v=>v!==null?String(v).split(sep):null), ser.idx) }
      if (name==="replace")   { const fr=evalA(0),to=evalA(1,""); return strOp(s=>s.split(fr).join(to)) }
      if (name==="contains")  { const pat=evalA(0,""); return { __type:"BoolMask", mask: ser.vals.map(v=>v!==null&&String(v).toLowerCase().includes(pat.toLowerCase())) } }
      if (name==="startswith"){ const p=evalA(0,""); return { __type:"BoolMask", mask: ser.vals.map(v=>v!==null&&String(v).startsWith(p)) } }
      if (name==="endswith")  { const p=evalA(0,""); return { __type:"BoolMask", mask: ser.vals.map(v=>v!==null&&String(v).endsWith(p)) } }
      if (name==="isin")      { const l=evalA(0,[]); return { __type:"BoolMask", mask: ser.vals.map(v=>l.includes(v)) } }
      return { __type:"StrIdx", ser }  // chained index like .str.split('').str[0]
    }
    if (obj && obj.__type === "StrIdx") {
      return { __type:"StrIdxN", ser:obj.ser, idx_name:name }
    }

    // ── .dt accessor ─────────────────────────────────────────────
    if (obj && obj.__type === "DtAccessor") {
      const ser = obj.ser
      const dtOp = (fn) => mkSer(ser.name, ser.vals.map(v=>{ try{ return fn(new Date(v)) }catch{return null} }), ser.idx)
      if (name==="year")    return dtOp(d=>d.getFullYear())
      if (name==="month")   return dtOp(d=>d.getMonth()+1)
      if (name==="day")     return dtOp(d=>d.getDate())
      if (name==="hour")    return dtOp(d=>d.getHours())
      if (name==="dayofweek") return dtOp(d=>d.getDay())
      if (name==="quarter")   return dtOp(d=>Math.ceil((d.getMonth()+1)/3))
      if (name==="days")      return mkSer(ser.name, ser.vals.map(v=>{ const d=v&&v.__type==="Timedelta"?v.days:NaN; return isNaN(d)?null:d }), ser.idx)
      if (name==="strftime") { const fmt=evalA(0,"%Y-%m-%d"); return mkSer(ser.name, ser.vals.map(v=>{ try{ const d=new Date(v); return fmt.replace("%Y",d.getFullYear()).replace("%m",String(d.getMonth()+1).padStart(2,"0")).replace("%d",String(d.getDate()).padStart(2,"0")).replace("%B",["January","February","March","April","May","June","July","August","September","October","November","December"][d.getMonth()]).replace("%A",["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"][d.getDay()]) }catch{return null} }), ser.idx) }
    }

    // ── Rolling ───────────────────────────────────────────────────
    if (obj && obj.__type === "Rolling") {
      const { ser, win } = obj
      if (name==="mean"||name==="avg") return mkSer(ser.name, ser.vals.map((v,i)=>{ if(i<win-1)return null; const sl=ser.vals.slice(i-win+1,i+1).filter(x=>typeof x==="number"); return sl.length?Math.round(sl.reduce((a,b)=>a+b,0)/sl.length*100)/100:null }), ser.idx)
      if (name==="sum")  return mkSer(ser.name, ser.vals.map((v,i)=>{ if(i<win-1)return null; return ser.vals.slice(i-win+1,i+1).filter(x=>typeof x==="number").reduce((a,b)=>a+b,0) }), ser.idx)
      if (name==="std")  return mkSer(ser.name, ser.vals.map((v,i)=>{ if(i<win-1)return null; const sl=ser.vals.slice(i-win+1,i+1).filter(x=>typeof x==="number"); if(!sl.length)return null; const m=sl.reduce((a,b)=>a+b,0)/sl.length; return Math.round(Math.sqrt(sl.reduce((a,b)=>a+(b-m)**2,0)/(sl.length-1||1))*100)/100 }), ser.idx)
      if (name==="max")  return mkSer(ser.name, ser.vals.map((v,i)=>{ if(i<win-1)return null; return Math.max(...ser.vals.slice(i-win+1,i+1).filter(x=>typeof x==="number")) }), ser.idx)
      if (name==="min")  return mkSer(ser.name, ser.vals.map((v,i)=>{ if(i<win-1)return null; return Math.min(...ser.vals.slice(i-win+1,i+1).filter(x=>typeof x==="number")) }), ser.idx)
    }
    if (obj && obj.__type === "Expanding") {
      const { ser } = obj
      if (name==="mean") return mkSer(ser.name, ser.vals.map((_,i)=>{ const sl=ser.vals.slice(0,i+1).filter(x=>typeof x==="number"); return sl.length?Math.round(sl.reduce((a,b)=>a+b,0)/sl.length*100)/100:null }), ser.idx)
      if (name==="sum")  return mkSer(ser.name, ser.vals.map((_,i)=>ser.vals.slice(0,i+1).filter(x=>typeof x==="number").reduce((a,b)=>a+b,0)), ser.idx)
    }

    // ── BoolMask ─────────────────────────────────────────────────
    if (obj && obj.__type === "BoolMask") {
      if (name==="sum") return obj.mask.filter(Boolean).length
    }

    return null
  }

  function execGroupAgg(df, by, fn, col, arg) {
    const groups = {}
    df.rows.forEach((r,i)=>{
      const key = by.map(b=>r[b]??'').join('||')
      if(!groups[key]) groups[key]={keys:{},rows:[]}
      by.forEach(b=>groups[key].keys[b]=r[b])
      groups[key].rows.push(r)
    })
    const targetCols = col ? [col] : df.cols.filter(c=>!by.includes(c))
    const allCols = [...by, ...targetCols]
    const rows = Object.values(groups).map(g=>{
      const r={...g.keys}
      targetCols.forEach(c=>{
        const vals=g.rows.map(x=>x[c]).filter(v=>typeof v==="number")
        if(fn==="size"||fn==="count") r[c]=g.rows.length
        else if(fn==="sum")   r[c]=vals.reduce((a,b)=>a+b,0)
        else if(fn==="mean")  r[c]=vals.length?Math.round(vals.reduce((a,b)=>a+b,0)/vals.length*100)/100:null
        else if(fn==="min")   r[c]=vals.length?Math.min(...vals):null
        else if(fn==="max")   r[c]=vals.length?Math.max(...vals):null
        else if(fn==="first") r[c]=g.rows[0]?.[c]??null
        else if(fn==="last")  r[c]=g.rows[g.rows.length-1]?.[c]??null
        else r[c]=g.rows.length
      })
      return r
    })
    return mkDf(fn==="size"?[...by,"count"]:allCols, fn==="size"?rows.map(r=>({...Object.fromEntries(by.map(b=>[b,r[b]])),...{count:r[targetCols[0]]}})):rows)
  }

  function execGroupAggSpec(df, by, spec) {
    // spec can be: {'salary':['mean','sum'], 'years':'mean'}
    // or named: headcount=('name','count'), avg_salary=('salary','mean')
    const groups={}
    df.rows.forEach(r=>{
      const key=by.map(b=>r[b]??'').join('||')
      if(!groups[key]) groups[key]={keys:{},rows:[]}
      by.forEach(b=>groups[key].keys[b]=r[b])
      groups[key].rows.push(r)
    })

    // Check if spec is named tuple style: {'headcount':('name','count'), ...}
    const isNamedTuple = typeof spec==="object"&&!Array.isArray(spec)&&Object.values(spec).some(v=>Array.isArray(v))

    const newCols=[...by]
    const colDefs=[] // {outName, srcCol, fn}

    if(isNamedTuple){
      Object.entries(spec).forEach(([outName,tup])=>{
        if(Array.isArray(tup)&&tup.length===2){
          colDefs.push({outName,srcCol:tup[0],fn:tup[1]})
          newCols.push(outName)
        } else if(typeof tup==="string"){
          colDefs.push({outName,srcCol:outName,fn:tup})
          newCols.push(outName)
        }
      })
    } else {
      Object.entries(spec).forEach(([col,fns])=>{
        const fnArr=Array.isArray(fns)?fns:[fns]
        fnArr.forEach(f=>{ const n=fnArr.length>1?`${col}_${f}`:col; colDefs.push({outName:n,srcCol:col,fn:f}); newCols.push(n) })
      })
    }

    const rows=Object.values(groups).map(g=>{
      const r={...g.keys}
      colDefs.forEach(({outName,srcCol,fn})=>{
        const vals=g.rows.map(x=>x[srcCol]).filter(v=>v!==null&&v!==undefined)
        const numVals=vals.filter(v=>typeof v==="number")
        if(fn==="count") r[outName]=g.rows.length
        else if(fn==="sum")   r[outName]=numVals.reduce((a,b)=>a+b,0)
        else if(fn==="mean")  r[outName]=numVals.length?Math.round(numVals.reduce((a,b)=>a+b,0)/numVals.length*100)/100:null
        else if(fn==="min")   r[outName]=numVals.length?Math.min(...numVals):null
        else if(fn==="max")   r[outName]=numVals.length?Math.max(...numVals):null
        else if(fn==="std")   { const m=numVals.reduce((a,b)=>a+b,0)/(numVals.length||1); r[outName]=Math.round(Math.sqrt(numVals.reduce((a,b)=>a+(b-m)**2,0)/(numVals.length-1||1))*100)/100 }
        else if(fn==="first") r[outName]=g.rows[0]?.[srcCol]??null
        else if(fn==="last")  r[outName]=g.rows[g.rows.length-1]?.[srcCol]??null
        else r[outName]=g.rows.length
      })
      return r
    })
    return mkDf(newCols, rows)
  }

  function pdMerge(left, right, lOn, rOn, how) {
    if (!isDf(left)||!isDf(right)) return mkDf([],[])
    const lOnArr = Array.isArray(lOn)?lOn:(lOn?[lOn]:[])
    const rOnArr = Array.isArray(rOn)?rOn:(rOn?[rOn]:[])
    const rExtraCols = right.cols.filter(c=>!rOnArr.includes(c))
    const allCols = [...new Set([...left.cols, ...rExtraCols])]
    const rows=[]
    const matched = new Set()
    left.rows.forEach((lr,li)=>{
      let found=false
      right.rows.forEach((rr,ri)=>{
        const match = lOnArr.every((lc,i)=>lr[lc]===rr[rOnArr[i]])
        if(match){
          const r={...lr}
          rExtraCols.forEach(c=>r[c]=rr[c])
          rows.push(r); found=true; matched.add(ri)
        }
      })
      if(!found&&(how==="left"||how==="outer")){
        const r={...lr}; rExtraCols.forEach(c=>r[c]=null); rows.push(r)
      }
    })
    if(how==="right"||how==="outer"){
      right.rows.forEach((rr,ri)=>{
        if(!matched.has(ri)){
          const r={}
          left.cols.forEach(c=>r[c]=lOnArr.includes(c)?rr[rOnArr[lOnArr.indexOf(c)]]:null)
          rExtraCols.forEach(c=>r[c]=rr[c]); rows.push(r)
        }
      })
    }
    return mkDf(allCols, rows)
  }

  function applyLambda(fnExpr, val, lenv) {
    if (typeof fnExpr !== "string") return val
    const lam = fnExpr.trim()
    // lambda x: expr
    const lamM = lam.match(/^lambda\s+(\w+)\s*:\s*(.+)$/)
    if (lamM) {
      const param=lamM[1]; const body=lamM[2]
      const localEnv={...lenv, [param]:val}
      // Handle ternary: expr if cond else expr2
      const ternM = body.match(/^(.+?)\s+if\s+(.+?)\s+else\s+(.+)$/)
      if (ternM) {
        const cond = evalCondStr(ternM[2].trim(), {...localEnv})
        return cond ? evalPy(ternM[1].trim(),localEnv) : evalPy(ternM[3].trim(),localEnv)
      }
      return evalPy(body, localEnv)
    }
    // Named function reference
    if (/^\w+$/.test(lam) && lenv[lam] !== undefined) {
      // Try calling it
      return lenv[lam]
    }
    return val
  }

  function evalCondStr(cond, lenv) {
    cond = cond.trim()
    // Handle 'and', 'or', 'not'
    if (/\band\b/.test(cond)) { const parts=cond.split(/\band\b/); return parts.every(p=>evalCondStr(p.trim(),lenv)) }
    if (/\bor\b/.test(cond))  { const parts=cond.split(/\bor\b/);  return parts.some(p=>evalCondStr(p.trim(),lenv)) }
    if (/^not\b/.test(cond))  return !evalCondStr(cond.slice(3).trim(),lenv)
    const ops=[">=","<=","!=","==",">","<"]
    for(const op of ops){
      const i=cond.indexOf(op)
      if(i>0){ const l=evalPy(cond.slice(0,i).trim(),lenv),r=evalPy(cond.slice(i+op.length).trim(),lenv); if(op===">=")return l>=r;if(op==="<=")return l<=r;if(op==="!=")return l!=r;if(op==="==")return l==r;if(op===">")return l>r;if(op==="<")return l<r }
    }
    const v=evalPy(cond,lenv)
    return Boolean(v)
  }

  function evalQueryStr(q, row) {
    // Simple query evaluation for df.query()
    const localEnv = {...row}
    return evalCondStr(q.replace(/@(\w+)/g, (_,n)=>JSON.stringify(env[n])), localEnv)
  }

  // ── Output helpers ───────────────────────────────────────────────
  function printVal(val, label) {
    if (val === null || val === undefined) { out.push({type:"text",text:"None"}); return }
    if (isDf(val)) { out.push({type:"df",df:val,label}); return }
    if (isSer(val)) { out.push({type:"series",ser:val,label}); return }
    if (val && val.__type==="BoolMask") { out.push({type:"text",text:String(val.mask)}); return }
    if (Array.isArray(val)) { out.push({type:"text",text:"["+val.join(", ")+"]"}); return }
    if (typeof val === "object") { out.push({type:"text",text:JSON.stringify(val,null,2)}); return }
    out.push({type:"text",text:String(val)})
  }

  // ── Statement execution ──────────────────────────────────────────
  function execLines(lines) {
    const blocks = groupLines(lines)
    for (const block of blocks) {
      execBlock(block)
    }
  }

  function groupLines(lines) {
    // Group lines into blocks (handling for loops, if blocks, etc.)
    const blocks=[]; let i=0
    while(i<lines.length){
      const line=lines[i]
      const m=line.match(/^(\s*)/)
      const indent=m?m[1].length:0
      if(indent>0&&blocks.length){ blocks[blocks.length-1].body=(blocks[blocks.length-1].body||[]).concat([line]); i++; continue }
      if(/^(for|if|with|def|class)\s/.test(line.trim())||/^\s+(for|if)\s/.test(line)){
        const bl={head:line,body:[]}; i++
        while(i<lines.length&&(lines[i].match(/^\s+/)||!lines[i].trim())){
          if(lines[i].trim()) bl.body.push(lines[i])
          i++
        }
        blocks.push(bl)
      } else { blocks.push({line:line.trim()}); i++ }
    }
    return blocks
  }

  function execBlock(block) {
    if (block.line !== undefined) { execSingle(block.line); return }
    if (block.head) {
      const h=block.head.trim()
      // for loop
      const forM = h.match(/^for\s+(\w+)\s+in\s+(.+)\s*:$/)
      if(forM){
        const varName=forM[1]; const iterExpr=evalPy(forM[2].trim())
        const items = Array.isArray(iterExpr)?iterExpr:(isDf(iterExpr)?iterExpr.cols:(isSer(iterExpr)?iterExpr.vals:[]))
        items.forEach(item=>{ env[varName]=item; (block.body||[]).forEach(l=>execSingle(l.trim())) })
        return
      }
      // if statement
      const ifM = h.match(/^if\s+(.+)\s*:$/)
      if(ifM){
        if(evalCondStr(ifM[1].trim(),env)) { (block.body||[]).forEach(l=>execSingle(l.trim())) }
        return
      }
      // def function (simplified — just store body)
      const defM = h.match(/^def\s+(\w+)\s*\(([^)]*)\)\s*:$/)
      if(defM){ env[defM[1]]={__type:"Fn",params:defM[2].split(",").map(p=>p.trim()),body:block.body||[]}; return }
    }
  }

  function execSingle(line) {
    if (!line || line.startsWith("#")) return

    // import pandas as pd / import numpy as np / from ...
    if (/^(import|from)\s/.test(line)) return

    // print(...)
    const printM = line.match(/^print\s*\((.+)\)$/)
    if (printM) {
      const inner = printM[1].trim()
      // print(a, b, c) — multiple args
      const args = splitPyArgs(inner)
      if (args.length > 1) {
        const parts = args.map(a=>{ const v=evalPy(a.trim()); return fmtPrint(v) })
        const combined = parts.join(" ")
        // If any arg is a df or series, output separately
        args.forEach(a=>{ const v=evalPy(a.trim()); if(isDf(v))out.push({type:"df",df:v}); else if(isSer(v))out.push({type:"series",ser:v}) })
        if(!args.some(a=>{ const v=evalPy(a.trim()); return isDf(v)||isSer(v) })) out.push({type:"text",text:combined})
        return
      }
      const val = evalPy(inner)
      printVal(val)
      return
    }

    // augmented assignment: df['col'] = expr  or  var['key'] = expr
    const colAssignM = line.match(/^(\w+)\s*\[\s*(['"][^'"]+['"])\s*\]\s*=\s*(.+)$/)
    if (colAssignM) {
      const dfVar=colAssignM[1]; const col=colAssignM[2].slice(1,-1); const expr=colAssignM[3]
      const df=env[dfVar]
      if(isDf(df)){
        if(!df.cols.includes(col)) df.cols.push(col)
        const rhs = evalPy(expr)
        if(isSer(rhs)) df.rows.forEach((r,i)=>r[col]=rhs.vals[i]??null)
        else if(rhs && rhs.__type==="BoolMask") df.rows.forEach((r,i)=>r[col]=rhs.mask[i])
        else df.rows.forEach(r=>r[col]=rhs)
      }
      return
    }

    // Variable assignment: var = expr  or  a, b = expr
    const assignM = line.match(/^([A-Za-z_]\w*(?:\s*,\s*[A-Za-z_]\w*)*)\s*=\s*(.+)$/)
    if (assignM) {
      const lhs=assignM[1]; const expr=assignM[2].trim()
      const val = evalPy(expr)
      const vars = lhs.split(",").map(v=>v.trim())
      if (vars.length > 1) {
        const vals = Array.isArray(val)?val:(isSer(val)?val.vals:[val])
        vars.forEach((v,i)=>{ if(v) env[v]=vals[i]??null })
      } else {
        env[lhs.trim()] = val
      }
      return
    }

    // Bare expression (bare variable name or method chain — display it)
    const val = evalPy(line)
    if (val !== null && val !== undefined) {
      if (isDf(val)||isSer(val)) out.push({type:"display",val})
    }
  }

  function fmtPrint(v) {
    if (v === null || v === undefined) return "None"
    if (isDf(v)||isSer(v)) return ""
    if (Array.isArray(v)) return "["+v.map(fmtPrint).join(", ")+"]"
    if (typeof v === "number" && !Number.isInteger(v)) return v.toFixed(2).replace(/\.?0+$/,"") + (Number.isInteger(v)?"":" ")
    return String(v)
  }

  // ── Run code ─────────────────────────────────────────────────────
  const rawLines = code.split("\n")
  execLines(rawLines)
  return out
}

function _pdRenderHtml(results) {
  const brand = '<div class="pd-brand">🐼 Pandas Simulator</div>'
  const body  = results.map(r => {
    if (r.type === "text") {
      if (!r.text && r.text !== "0") return ""
      return `<pre class="pd-text">${String(r.text).replace(/</g,"&lt;")}</pre>`
    }
    if (r.type === "df" || r.type === "display" || r.type === "series") {
      const val = r.df || r.val || r.ser
      if (!val) return ""
      if (val.__type === "DataFrame") return _pdDfHtml(val)
      if (val.__type === "Series")    return _pdSerHtml(val)
    }
    return ""
  }).join("")

  return `<!DOCTYPE html><html><head><style>
    *{box-sizing:border-box;margin:0;padding:0}
    body{background:#0b0b1e;color:#e2e0f0;font-family:'Fira Code',monospace;font-size:12.5px;padding:12px;overflow:auto}
    .pd-brand{font-size:11px;color:#6b7280;margin-bottom:8px;font-style:italic;border-bottom:1px solid #1e1e3a;padding-bottom:6px}
    .pd-text{color:#a3e635;padding:4px 0;margin-bottom:8px;white-space:pre-wrap;word-break:break-word}
    .pd-wrap{margin-bottom:12px;overflow-x:auto}
    .pd-label{font-size:10px;color:#6b7280;margin-bottom:3px}
    .pd-row-count{font-size:10px;color:#6b7280;margin:3px 0 4px}
    table{border-collapse:collapse;font-size:12px;min-width:max-content}
    th{background:#1a1a3a;color:#e879f9;padding:5px 12px;text-align:left;border:1px solid #252545;white-space:nowrap;font-size:11px;letter-spacing:.03em}
    th.idx{color:#6b7280;background:#111130}
    td{padding:4px 12px;border:1px solid #1e1e3a;white-space:nowrap}
    td.idx{color:#4b5563;font-style:italic;background:#0d0d28}
    td.num{text-align:right;color:#93c5fd}
    td.null{color:#374151;font-style:italic}
    tr:nth-child(even) td{background:rgba(232,121,249,.04)}
    tr:hover td{background:rgba(232,121,249,.1)}
  </style></head><body>${brand}${body||'<div class="pd-text">Write Python/Pandas code and click Run ▶</div>'}</body></html>`
}

function _pdDfHtml(df) {
  const hasStatIdx = df.__statCol === "__stat"
  const hasIdx     = df.__index && df.__index.length
  const cols       = df.cols
  const rows       = df.rows

  const th_idx  = hasStatIdx ? `<th class="idx"></th>` : (hasIdx ? `<th class="idx"></th>` : "")
  const headers  = cols.map(c=>`<th>${String(c).replace(/</g,"&lt;")}</th>`).join("")

  const trs = rows.map((row,i)=>{
    const idxCell = hasStatIdx ? `<td class="idx">${row.__stat}</td>` : (hasIdx ? `<td class="idx">${df.__index[i]}</td>` : "")
    const cells = cols.map(c=>{
      const v = row[c]
      if (v === null || v === undefined || v === "None") return `<td class="null">NaN</td>`
      if (typeof v === "number") return `<td class="num">${Number.isInteger(v)?v:Math.round(v*1000)/1000}</td>`
      if (typeof v === "boolean") return `<td class="num">${v?1:0}</td>`
      return `<td>${String(v).replace(/</g,"&lt;")}</td>`
    }).join("")
    return `<tr>${idxCell}${cells}</tr>`
  }).join("")

  const rowCount = rows.length > 5 ? `<div class="pd-row-count">${rows.length} rows × ${cols.length} columns</div>` : ""
  return `<div class="pd-wrap">${rowCount}<table><thead><tr>${th_idx}${headers}</tr></thead><tbody>${trs}</tbody></table></div>`
}

function _pdSerHtml(ser) {
  const rows = ser.vals.map((v,i)=>{
    const idx = ser.idx[i] ?? i
    const cell = v === null ? `<td class="null">NaN</td>` : (typeof v==="number" ? `<td class="num">${Number.isInteger(v)?v:Math.round(v*1000)/1000}</td>` : `<td>${String(v).replace(/</g,"&lt;")}</td>`)
    return `<tr><td class="idx">${idx}</td>${cell}</tr>`
  }).join("")
  return `<div class="pd-wrap"><table><thead><tr><th class="idx"></th><th>${ser.name ?? "0"}</th></tr></thead><tbody>${rows}</tbody></table></div>`
}

// ══════════════════════════════════════════════════════════════════
// PostgreSQL Simulator
// ══════════════════════════════════════════════════════════════════

function _pgSplitStatements(sql) {
  const stmts = []; let cur = "", depth = 0, inStr = false, strCh = ""
  for (const ch of sql) {
    if (inStr) { cur += ch; if (ch === strCh) inStr = false }
    else if (ch === "'" || ch === '"') { inStr = true; strCh = ch; cur += ch }
    else if (ch === "(") { depth++; cur += ch }
    else if (ch === ")") { depth--; cur += ch }
    else if (ch === ";" && depth === 0) { if (cur.trim()) stmts.push(cur.trim()); cur = "" }
    else cur += ch
  }
  if (cur.trim()) stmts.push(cur.trim())
  return stmts
}

function _pgSplitCols(str) {
  const parts = []; let cur = "", depth = 0, inStr = false, strCh = ""
  for (const ch of str) {
    if (inStr) { cur += ch; if (ch === strCh) inStr = false }
    else if (ch === "'" || ch === '"') { inStr = true; strCh = ch; cur += ch }
    else if ("([".includes(ch)) { depth++; cur += ch }
    else if (")]".includes(ch)) { depth--; cur += ch }
    else if (ch === "," && depth === 0) { parts.push(cur.trim()); cur = "" }
    else cur += ch
  }
  if (cur.trim()) parts.push(cur.trim())
  return parts
}

function _pgTranslate(stmt) {
  // :: type casting → strip
  stmt = stmt.replace(/::(BIGINT|SMALLINT|INTEGER|INT|FLOAT8?|REAL|DOUBLE\s+PRECISION|NUMERIC(\(\d+,\d+\))?|DECIMAL|BOOLEAN|BOOL|TEXT|VARCHAR(\(\d+\))?|CHAR(\(\d+\))?|DATE|TIMESTAMPTZ|TIMESTAMP|TIME|INTERVAL|UUID)\b/gi, "")
  // ILIKE → LIKE (engine already does case-insensitive)
  stmt = stmt.replace(/\bILIKE\b/gi, "LIKE")
  // NULLS FIRST / NULLS LAST → strip
  stmt = stmt.replace(/\bNULLS\s+(FIRST|LAST)\b/gi, "")
  // BIGSERIAL → SERIAL, BIGINT/SMALLINT → INTEGER, DOUBLE PRECISION → REAL
  stmt = stmt.replace(/\bBIGSERIAL\b/gi, "SERIAL")
  stmt = stmt.replace(/\bBIGINT\b/gi, "INTEGER")
  stmt = stmt.replace(/\bSMALLINT\b/gi, "INTEGER")
  stmt = stmt.replace(/\bDOUBLE\s+PRECISION\b/gi, "REAL")
  // TIMESTAMPTZ → TIMESTAMP
  stmt = stmt.replace(/\bTIMESTAMPTZ\b|\bTIMESTAMP\s+WITH\s+TIME\s+ZONE\b/gi, "TIMESTAMP")
  // GENERATED ALWAYS AS IDENTITY → strip
  stmt = stmt.replace(/\bGENERATED\s+ALWAYS\s+AS\s+IDENTITY\b/gi, "")
  stmt = stmt.replace(/\bGENERATED\s+BY\s+DEFAULT\s+AS\s+IDENTITY\b/gi, "")
  // SERIAL → INTEGER (tracked separately for auto-id)
  stmt = stmt.replace(/\bSERIAL\b/gi, "INTEGER")
  // REFERENCES table(col) → strip FK (not enforced in simulator)
  stmt = stmt.replace(/\s+REFERENCES\s+\w+\s*\([^)]+\)/gi, "")
  // string_agg(col, 'sep' [ORDER BY ...]) → GROUP_CONCAT(col [ORDER BY ...] SEPARATOR 'sep')
  stmt = stmt.replace(/\bstring_agg\s*\(\s*([^,)]+?)\s*,\s*'([^']*)'\s*(?:ORDER\s+BY\s+([^)]+?))?\s*\)/gi, (m, col, sep, ord) => {
    const oc = ord ? ` ORDER BY ${ord.trim()}` : ""
    return `GROUP_CONCAT(${col.trim()}${oc} SEPARATOR '${sep}')`
  })
  // array_agg(col [ORDER BY ...]) → ARRAY_AGG(col) — handled as aggregate
  stmt = stmt.replace(/\barray_agg\s*\(\s*([^)]+?)\s*\)/gi, "ARRAY_AGG($1)")
  // INTERVAL arithmetic: date + INTERVAL '30 days' → simple date string
  stmt = stmt.replace(/\+\s*INTERVAL\s+'(\d+)\s+(\w+)'/gi, "+ 0 /* +$1 $2 */")
  stmt = stmt.replace(/-\s*INTERVAL\s+'(\d+)\s+(\w+)'/gi, "- 0 /* -$1 $2 */")
  // CURRENT_DATE (as keyword not function) → quoted today
  const today = new Date().toISOString().slice(0, 10)
  stmt = stmt.replace(/\bCURRENT_DATE\b(?!\s*\()/g, `'${today}'`)
  stmt = stmt.replace(/\bCURRENT_TIMESTAMP\b(?!\s*\()/g, `'${new Date().toISOString().slice(0,19).replace("T"," ")}'`)
  // LOCALTIMESTAMP → same
  stmt = stmt.replace(/\bLOCALTIMESTAMP\b/g, `'${new Date().toISOString().slice(0,19).replace("T"," ")}'`)
  // DISTINCT ON → handled separately, just strip the DISTINCT ON(...) part for basic engine
  return stmt
}

function _pgInjectSerials(stmt, serialDefs, serialCounters) {
  const m = stmt.match(/^INSERT\s+INTO\s+(\w+)\s*(?:\(([^)]+)\))?\s*VALUES\s*(.+)$/is)
  if (!m) return stmt
  const tname = m[1].toLowerCase()
  if (!serialDefs[tname] || serialDefs[tname].size === 0) return stmt
  const colStr = m[2], valStr = m[3]
  const colList = colStr ? colStr.split(",").map(c => c.trim().toLowerCase()) : []
  const missing = [...serialDefs[tname]].filter(sc => !colList.includes(sc))
  if (missing.length === 0) return stmt
  // Parse value tuples
  const tuples = []
  let depth = 0, cur = "", i = 0
  while (i < valStr.length) {
    const ch = valStr[i]
    if (ch === "(") { if (depth === 0) cur = ""; else cur += ch; depth++ }
    else if (ch === ")") { depth--; if (depth === 0) { tuples.push(cur.trim()); cur = "" } else cur += ch }
    else { if (depth > 0) cur += ch }
    i++
  }
  const newCols = [...missing, ...colList]
  const newTuples = tuples.map(t => {
    const ids = missing.map(sc => { serialCounters[tname][sc] = (serialCounters[tname][sc] || 0) + 1; return serialCounters[tname][sc] })
    return `(${[...ids, t].join(", ")})`
  })
  return `INSERT INTO ${m[1]} (${newCols.join(", ")}) VALUES ${newTuples.join(", ")}`
}

function _pgExecCte(stmt, engine) {
  const results = []
  let rest = stmt.replace(/^WITH\s+/i, "").trim()
  const ctes = []
  while (rest) {
    const nameM = rest.match(/^(\w+)\s+AS\s*\(/i)
    if (!nameM) break
    const name = nameM[1]; rest = rest.slice(nameM[0].length)
    let depth = 1, i = 0, q = ""
    while (i < rest.length && depth > 0) {
      const ch = rest[i]
      if (ch === "(") depth++
      else if (ch === ")") depth--
      if (depth > 0) q += ch
      i++
    }
    rest = rest.slice(i).trim()
    ctes.push({ name, query: q.trim() })
    if (rest.startsWith(",")) rest = rest.slice(1).trim()
    else break
  }
  const mainQuery = rest.trim()
  const tempMap = []
  for (const cte of ctes) {
    let cteQuery = cte.query
    for (const { orig, temp } of tempMap) {
      cteQuery = cteQuery.replace(new RegExp(`\\b${orig}\\b`, "gi"), temp)
    }
    const tempName = `_pg_cte_${cte.name.toLowerCase()}`
    tempMap.push({ orig: cte.name, temp: tempName })
    const cteRes = engine.execute(cteQuery)
    const cteTable = cteRes.find(r => r.type === "table")
    if (cteTable && cteTable.rows && cteTable.rows.length > 0) {
      const cols = cteTable.cols || Object.keys(cteTable.rows[0])
      engine.execute(`CREATE TABLE ${tempName} (${cols.join(", ")})`)
      const batches = cteTable.rows.map(row => {
        const vals = cols.map(c => {
          const v = row[c]
          if (v === null || v === undefined) return "NULL"
          if (typeof v === "string") return `'${v.replace(/'/g, "''")}'`
          return String(v)
        })
        return `(${vals.join(", ")})`
      })
      engine.execute(`INSERT INTO ${tempName} (${cols.join(", ")}) VALUES ${batches.join(", ")}`)
    } else if (cteTable) {
      const cols = cteTable.cols || []
      if (cols.length > 0) engine.execute(`CREATE TABLE ${tempName} (${cols.join(", ")})`)
    }
  }
  let finalQuery = mainQuery
  for (const { orig, temp } of tempMap) {
    finalQuery = finalQuery.replace(new RegExp(`\\b${orig}\\b`, "gi"), temp)
  }
  // Run main query (may have window functions)
  let mainResults
  if (/\bOVER\s*\(/i.test(finalQuery) && /^SELECT\b/i.test(finalQuery.trim())) {
    const wr = _pgExecWindow(finalQuery, engine)
    mainResults = wr ? [wr] : engine.execute(finalQuery)
  } else if (/^SELECT\s+DISTINCT\s+ON\s*\(/i.test(finalQuery.trim())) {
    const dr = _pgExecDistinctOn(finalQuery, engine)
    mainResults = dr ? [dr] : engine.execute(finalQuery)
  } else {
    mainResults = engine.execute(finalQuery)
  }
  results.push(...mainResults)
  for (const { temp } of tempMap) engine.execute(`DROP TABLE IF EXISTS ${temp}`)
  return results
}

function _pgExecWindow(stmt, engine) {
  const mainM = stmt.match(/^SELECT\s+(.+?)\s+FROM\s+(.+?)(?:\s+WHERE\s+(.+?))?(?:\s+GROUP\s+BY\s+(.+?))?(?:\s+ORDER\s+BY\s+(.+?))?(?:\s+LIMIT\s+(\d+))?$/is)
  if (!mainM) return null
  const [, colsStr, fromPart, wherePart, , outerOrderBy, limitStr] = mainM
  const colParts = _pgSplitCols(colsStr)
  const regularParts = [], windowParts = []
  for (const part of colParts) {
    const overM = part.match(/^(.+?)\s+OVER\s*\(([^)]*)\)\s*(?:AS\s+(\w+))?$/i)
    if (overM) {
      const fnExpr = overM[1].trim(), overBody = overM[2].trim()
      const alias  = overM[3] || fnExpr.replace(/[^a-z0-9]/gi, "_").toLowerCase()
      const fnM    = fnExpr.match(/^(\w+)\s*\(([^)]*)\)$/i)
      const fn     = fnM ? fnM[1].toUpperCase() : "ROW_NUMBER"
      const fnArg  = fnM ? fnM[2].trim() : ""
      const partM  = overBody.match(/PARTITION\s+BY\s+(.+?)(?:\s+ORDER\s+BY|$)/i)
      const ordM   = overBody.match(/ORDER\s+BY\s+(.+?)$/i)
      windowParts.push({ fn, fnArg, partBy: partM ? partM[1].trim() : null, ordBy: ordM ? ordM[1].trim() : null, alias })
    } else {
      const aM = part.match(/^(.+?)\s+AS\s+(\w+)$/i)
      regularParts.push(aM ? { expr: aM[1].trim(), alias: aM[2].toLowerCase() } : { expr: part.trim(), alias: part.trim().toLowerCase().replace(/^.*\./, "") })
    }
  }
  if (windowParts.length === 0) return null
  const whereSql = wherePart ? ` WHERE ${wherePart}` : ""
  const baseResults = engine.execute(`SELECT * FROM ${fromPart}${whereSql}`)
  const baseResult  = baseResults.find(r => r.type === "table")
  if (!baseResult || !baseResult.rows) return null
  const rows    = baseResult.rows.map(r => ({ ...r }))
  const baseCols = baseResult.cols || Object.keys(rows[0] || {})
  for (const wp of windowParts) {
    const partCols = wp.partBy ? wp.partBy.split(",").map(c => c.trim().toLowerCase()) : []
    const ordParts = wp.ordBy ? wp.ordBy.split(",").map(s => {
      const t = s.trim(), desc = /\bDESC\b/i.test(t)
      return { col: t.replace(/\s+(ASC|DESC)\b/i, "").trim().toLowerCase(), desc }
    }) : []
    const partitions = {}
    for (const row of rows) {
      const key = partCols.map(c => String(row[c] ?? "")).join("|")
      if (!partitions[key]) partitions[key] = []
      partitions[key].push(row)
    }
    for (const pRows of Object.values(partitions)) {
      if (ordParts.length > 0) {
        pRows.sort((a, b) => {
          for (const { col, desc } of ordParts) {
            const av = a[col], bv = b[col]
            let cmp = (av !== null && bv !== null && !isNaN(av) && !isNaN(bv)) ? parseFloat(av) - parseFloat(bv) : String(av ?? "").localeCompare(String(bv ?? ""))
            if (cmp !== 0) return desc ? -cmp : cmp
          }
          return 0
        })
      }
      let prevKey = null, rank = 0, denseRank = 0
      for (let i = 0; i < pRows.length; i++) {
        const row = pRows[i], rowNum = i + 1
        const curKey = ordParts.map(o => String(row[o.col] ?? "")).join("|")
        const isNew  = i === 0 || curKey !== prevKey
        if (isNew) { denseRank++; rank = rowNum }
        prevKey = curKey
        if (wp.fn === "ROW_NUMBER")  row[wp.alias] = rowNum
        else if (wp.fn === "RANK")        row[wp.alias] = rank
        else if (wp.fn === "DENSE_RANK")  row[wp.alias] = denseRank
        else if (wp.fn === "NTILE")       row[wp.alias] = Math.ceil(rowNum * (parseInt(wp.fnArg) || 1) / pRows.length)
        else if (wp.fn === "PERCENT_RANK") row[wp.alias] = pRows.length <= 1 ? 0 : (rank - 1) / (pRows.length - 1)
        else if (["SUM","AVG","COUNT","MIN","MAX"].includes(wp.fn)) {
          const target = ordParts.length > 0 ? pRows.slice(0, i + 1) : pRows
          const vals   = target.map(r => parseFloat(r[wp.fnArg] ?? 0)).filter(v => !isNaN(v))
          if      (wp.fn === "SUM")   row[wp.alias] = vals.reduce((a, b) => a + b, 0)
          else if (wp.fn === "AVG")   row[wp.alias] = vals.length ? vals.reduce((a, b) => a + b, 0) / vals.length : null
          else if (wp.fn === "COUNT") row[wp.alias] = target.length
          else if (wp.fn === "MIN")   row[wp.alias] = Math.min(...vals)
          else if (wp.fn === "MAX")   row[wp.alias] = Math.max(...vals)
        }
        else if (wp.fn === "LAG") {
          const [lacol, lacOff = "1"] = wp.fnArg.split(",").map(s => s.trim())
          const off = parseInt(lacOff) || 1
          row[wp.alias] = i >= off ? pRows[i - off][lacol.toLowerCase()] ?? null : null
        }
        else if (wp.fn === "LEAD") {
          const [ldcol, ldOff = "1"] = wp.fnArg.split(",").map(s => s.trim())
          const off = parseInt(ldOff) || 1
          row[wp.alias] = i + off < pRows.length ? pRows[i + off][ldcol.toLowerCase()] ?? null : null
        }
        else if (wp.fn === "FIRST_VALUE") { row[wp.alias] = pRows[0][wp.fnArg.toLowerCase()] ?? null }
        else if (wp.fn === "LAST_VALUE")  { row[wp.alias] = pRows[pRows.length-1][wp.fnArg.toLowerCase()] ?? null }
      }
    }
  }
  const outCols = [...regularParts.map(r => r.alias), ...windowParts.map(w => w.alias)]
  const outRows = rows.map(row => {
    const out = {}
    for (const rp of regularParts) {
      const key = rp.expr.toLowerCase().replace(/^.*\./, "")
      out[rp.alias] = row[key] !== undefined ? row[key] : (row[rp.alias] ?? null)
    }
    for (const wp of windowParts) out[wp.alias] = row[wp.alias] ?? null
    return out
  })
  if (outerOrderBy) {
    const ords = outerOrderBy.split(",").map(s => {
      const t = s.trim(), desc = /\bDESC\b/i.test(t)
      return { col: t.replace(/\s+(ASC|DESC)\b/i, "").trim().toLowerCase(), desc }
    })
    outRows.sort((a, b) => {
      for (const { col, desc } of ords) {
        const av = a[col], bv = b[col]
        let cmp = (av !== null && bv !== null && !isNaN(av) && !isNaN(bv)) ? parseFloat(av) - parseFloat(bv) : String(av ?? "").localeCompare(String(bv ?? ""))
        if (cmp !== 0) return desc ? -cmp : cmp
      }
      return 0
    })
  }
  return { type: "table", rows: limitStr ? outRows.slice(0, parseInt(limitStr)) : outRows, cols: outCols }
}

function _pgExecDistinctOn(stmt, engine) {
  const m = stmt.match(/^SELECT\s+DISTINCT\s+ON\s*\(([^)]+)\)\s+(.+?)\s+FROM\s+(.+?)(?:\s+ORDER\s+BY\s+(.+?))?(?:\s+LIMIT\s+(\d+))?$/is)
  if (!m) return null
  const [, distinctCols, colsStr, fromStr, orderBy, limit] = m
  const baseQuery = `SELECT ${colsStr} FROM ${fromStr}${orderBy ? " ORDER BY " + orderBy : ""}${limit ? " LIMIT " + limit : ""}`
  const base = engine.execute(baseQuery)
  const tbl  = base.find(r => r.type === "table")
  if (!tbl || !tbl.rows) return null
  const dCols = distinctCols.split(",").map(c => c.trim().toLowerCase())
  const seen = new Set()
  const distRows = tbl.rows.filter(row => {
    const key = dCols.map(c => String(row[c] ?? "")).join("|")
    if (seen.has(key)) return false
    seen.add(key); return true
  })
  return { type: "table", rows: distRows, cols: tbl.cols }
}

function _pgExecFullOuterJoin(stmt, engine) {
  const m = stmt.match(/^SELECT\s+(.+?)\s+FROM\s+(\w+)(?:\s+(?:AS\s+)?(\w+))?\s+FULL\s+(?:OUTER\s+)?JOIN\s+(\w+)(?:\s+(?:AS\s+)?(\w+))?\s+ON\s+(.+?)(?=\s+ORDER\s+BY|\s+LIMIT|\s+WHERE|$)/is)
  if (!m) return null
  const [, colsStr, t1name, t1alias, t2name, t2alias, onCond] = m
  const t1a = (t1alias || t1name).toLowerCase()
  const t2a = (t2alias || t2name).toLowerCase()
  const suffixM = stmt.match(/(?:ORDER\s+BY.+|LIMIT\s+\d+)$/i)
  const suffix  = suffixM ? suffixM[0] : ""
  // Left join: all t1 rows + matching t2
  const leftQ   = `SELECT ${colsStr} FROM ${t1name} ${t1a} LEFT JOIN ${t2name} ${t2a} ON ${onCond}${suffix ? " " + suffix : ""}`
  const leftRes = engine.execute(leftQ)
  const leftTbl = leftRes.find(r => r.type === "table") || { rows: [], cols: [] }
  // Right-only: t2 rows with no match in t1
  const onM = onCond.trim().match(/(\w+)\.(\w+)\s*=\s*(\w+)\.(\w+)/i)
  let rightOnlyRows = []
  if (onM) {
    const [, a1, c1, , ] = onM
    const t1NullCheck = a1.toLowerCase() === t1a || a1.toLowerCase() === t1name.toLowerCase() ? `${a1}.${c1}` : `${onM[3]}.${onM[4]}`
    const rightQ   = `SELECT ${colsStr} FROM ${t2name} ${t2a} LEFT JOIN ${t1name} ${t1a} ON ${onCond} WHERE ${t1NullCheck} IS NULL`
    const rightRes = engine.execute(rightQ)
    const rightTbl = rightRes.find(r => r.type === "table")
    if (rightTbl && rightTbl.rows) rightOnlyRows = rightTbl.rows
  }
  const allRows = [...(leftTbl.rows || []), ...rightOnlyRows]
  // Sort if needed
  if (suffix) {
    const ordM2 = suffix.match(/ORDER\s+BY\s+(.+?)(?:\s+LIMIT|$)/i)
    if (ordM2) {
      const ords = ordM2[1].split(",").map(s => {
        const t = s.trim(), desc = /\bDESC\b/i.test(t)
        return { col: t.replace(/\s+(ASC|DESC)\b/i, "").trim().toLowerCase(), desc }
      })
      allRows.sort((a, b) => {
        for (const { col, desc } of ords) {
          const av = a[col], bv = b[col]
          const aNull = av === null || av === undefined
          const bNull = bv === null || bv === undefined
          if (aNull && bNull) continue
          if (aNull) return 1
          if (bNull) return -1
          let cmp = (!isNaN(av) && !isNaN(bv)) ? parseFloat(av) - parseFloat(bv) : String(av).localeCompare(String(bv))
          if (cmp !== 0) return desc ? -cmp : cmp
        }
        return 0
      })
    }
  }
  return { type: "table", rows: allRows, cols: leftTbl.cols || [] }
}

function _pgExecute(code) {
  const engine = _sqlEngine()
  const results = []
  const serialDefs    = {}  // { tableName: Set<colName> }
  const serialCounters = {}  // { tableName: { colName: counter } }
  const rawStmts = _pgSplitStatements(code)
  for (const rawStmt of rawStmts) {
    if (!rawStmt.trim() || /^\s*--/.test(rawStmt)) continue
    // Track SERIAL columns from raw (pre-translation) CREATE TABLE
    const createM = rawStmt.match(/^CREATE\s+TABLE\s+(?:IF\s+NOT\s+EXISTS\s+)?(\w+)\s*\(/i)
    if (createM) {
      const tname = createM[1].toLowerCase()
      serialDefs[tname]    = new Set()
      serialCounters[tname] = {}
      const bodyM = rawStmt.match(/CREATE\s+TABLE[^(]+\((.+)\)$/is)
      if (bodyM) {
        const lines = bodyM[1].split(/\n/)
        for (const ln of lines) {
          if (/\b(SERIAL|BIGSERIAL)\b/i.test(ln) && !/^\s*(PRIMARY|FOREIGN|UNIQUE|CHECK|CONSTRAINT)/i.test(ln)) {
            const colName = ln.trim().split(/\s+/)[0].replace(/["`]/g, "").toLowerCase()
            if (colName) { serialDefs[tname].add(colName); serialCounters[tname][colName] = 0 }
          }
        }
      }
    }
    // Translate PostgreSQL syntax
    let stmt = _pgTranslate(rawStmt.trim())
    // Inject SERIAL IDs into INSERT
    if (/^INSERT\s+INTO/i.test(stmt)) {
      stmt = _pgInjectSerials(stmt, serialDefs, serialCounters)
    }
    // Handle RETURNING clause
    let returningCols = null, returningTable = null, returningWhere = null, dmlType = null
    const retInsM = stmt.match(/^(INSERT\s+INTO\s+(\w+).+?VALUES\s*(?:\([^)]+\)[,\s]*)+)\s+RETURNING\s+(.+)$/is)
    if (retInsM) { returningCols = retInsM[3].trim(); returningTable = retInsM[2].toLowerCase(); dmlType = "INSERT"; stmt = retInsM[1].trim() }
    if (!returningCols) {
      const retUpdM = stmt.match(/^(UPDATE\s+(\w+)\s+SET\s+.+?WHERE\s+(.+?))\s+RETURNING\s+(.+)$/is)
      if (retUpdM) { returningCols = retUpdM[4].trim(); returningTable = retUpdM[2].toLowerCase(); returningWhere = retUpdM[3].trim(); dmlType = "UPDATE"; stmt = retUpdM[1].trim() }
    }
    // Handle CTE (WITH ...)
    if (/^WITH\s+/i.test(stmt)) {
      results.push(..._pgExecCte(stmt, engine))
      continue
    }
    // Handle window functions
    if (/\bOVER\s*\(/i.test(stmt) && /^SELECT\b/i.test(stmt)) {
      const wr = _pgExecWindow(stmt, engine)
      if (wr) { results.push(wr); continue }
    }
    // Handle DISTINCT ON
    if (/^SELECT\s+DISTINCT\s+ON\s*\(/i.test(stmt)) {
      const dr = _pgExecDistinctOn(stmt, engine)
      if (dr) { results.push(dr); continue }
    }
    // Handle FULL OUTER JOIN
    if (/\bFULL\s+(?:OUTER\s+)?JOIN\b/i.test(stmt)) {
      const fr = _pgExecFullOuterJoin(stmt, engine)
      if (fr) { results.push(fr); continue }
    }
    // Execute normally
    const res = engine.execute(stmt)
    results.push(...res)
    // Handle RETURNING output
    if (returningCols && returningTable) {
      if (dmlType === "INSERT") {
        const ret = engine.execute(`SELECT ${returningCols} FROM ${returningTable}`)
        const tbl = ret.find(r => r.type === "table")
        if (tbl && tbl.rows.length > 0) {
          results.push({ type: "table", rows: [tbl.rows[tbl.rows.length - 1]], cols: tbl.cols })
        }
      } else if (dmlType === "UPDATE" && returningWhere) {
        const ret = engine.execute(`SELECT ${returningCols} FROM ${returningTable} WHERE ${returningWhere}`)
        const tbl = ret.find(r => r.type === "table")
        if (tbl) results.push(tbl)
      }
    }
  }
  return results
}

function _pgRenderHtml(results) {
  const brand = '<div class="sql-brand">🐘 PostgreSQL Simulator</div>'
  const rows_html = results.map(r => {
    if (r.type === "message") {
      if (!r.message || r.message.startsWith("--")) return `<div class="sql-comment">${r.message || ""}</div>`
      const cls = r.message.startsWith("Error") ? "sql-error" : "sql-msg"
      return `<div class="${cls}">${r.message.replace(/</g,"&lt;").replace(/>/g,"&gt;")}</div>`
    }
    if (r.type === "table") {
      if (!r.rows || r.rows.length === 0) return `<div class="sql-msg">Query OK — 0 rows returned.</div>`
      const cols = r.cols || Object.keys(r.rows[0])
      const th   = cols.map(c => `<th>${c}</th>`).join("")
      const trs  = r.rows.map(row => {
        const tds = cols.map(c => {
          const v = row[c]
          const display = v === null || v === undefined ? '<span class="sql-null">NULL</span>' : String(v).replace(/</g,"&lt;")
          return `<td>${display}</td>`
        }).join("")
        return `<tr>${tds}</tr>`
      }).join("")
      return `<div class="sql-result-wrap">
        <div class="sql-row-count">${r.rows.length} row(s) in set</div>
        <div class="sql-table-wrap"><table class="sql-table">
          <thead><tr>${th}</tr></thead>
          <tbody>${trs}</tbody>
        </table></div></div>`
    }
    return ""
  }).join("")
  return `<!DOCTYPE html><html><head><style>
    *{box-sizing:border-box;margin:0;padding:0}
    body{background:#0b0b1e;color:#e2e0f0;font-family:'Fira Code',monospace;font-size:12.5px;padding:12px;overflow:auto}
    .sql-brand{font-size:11px;color:#6b7280;margin-bottom:8px;font-style:italic;border-bottom:1px solid #1e1e3a;padding-bottom:6px}
    .sql-msg{color:#a3e635;padding:6px 8px;margin-bottom:8px;border-left:3px solid #22c55e;background:rgba(34,197,94,.08)}
    .sql-comment{color:#4b5563;padding:3px 8px;margin-bottom:4px;font-style:italic;font-size:11px}
    .sql-error{color:#f87171;padding:6px 8px;margin-bottom:8px;border-left:3px solid #ef4444;background:rgba(239,68,68,.08)}
    .sql-result-wrap{margin-bottom:12px}
    .sql-row-count{font-size:11px;color:#6b7280;margin-bottom:4px}
    .sql-table-wrap{overflow-x:auto}
    .sql-table{border-collapse:collapse;min-width:100%;font-size:12px}
    .sql-table th{background:#1a1a40;color:#336791;padding:6px 12px;text-align:left;border:1px solid #252545;white-space:nowrap;font-size:11px;text-transform:uppercase;letter-spacing:.04em}
    .sql-table td{padding:5px 12px;border:1px solid #1e1e3a;color:#e2e0f0;white-space:nowrap}
    .sql-table tr:nth-child(even) td{background:rgba(51,103,145,.06)}
    .sql-table tr:hover td{background:rgba(51,103,145,.15)}
    .sql-null{color:#4b5563;font-style:italic}
  </style></head><body>${brand}${rows_html || '<div class="sql-msg">Write SQL and click Run ▶</div>'}</body></html>`
}
