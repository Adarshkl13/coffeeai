import { Controller } from "@hotwired/stimulus"

// Languages that run on a real interpreter in the browser (app/javascript/runners/*.js)
const REAL_RUNNERS = {
  python: "runners/python",
  pandas: "runners/python",
  numpy:  "runners/python",
  ruby:   "runners/ruby",
  php:    "runners/php",
  java:   "runners/java",
  sql:        "runners/sql",
  mysql:      "runners/mysql",
  postgresql: "runners/postgresql"
}

// Code editor: live HTML/React previews, browser JS/TS, and real interpreters for other languages (REAL_RUNNERS)
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
    if (!this.hasPreviewTarget) return
    // Without a base URL, "#section" links in a srcdoc iframe resolve against the lesson page
    // and load it inside the preview; about:srcdoc keeps them as in-page jumps.
    const base = '<base href="about:srcdoc">'
    this.previewTarget.srcdoc = /<head[^>]*>/i.test(code)
      ? code.replace(/<head[^>]*>/i, (tag) => tag + base)
      : base + code
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
  // Syntax errors and uncaught errors in the learner's script (which runs separately below)
  window.onerror = (msg) => { line(String(msg).replace(/^Uncaught /, ''), 'error'); return true; };
  window.addEventListener('unhandledrejection', (e) => {
    const r = e.reason;
    line('Uncaught (in promise) ' + (r && r.message ? r.name + ': ' + r.message : fmt(r)), 'error');
  });
})();
<\/script>
<script>
${code.replace(/<\/script/gi, '<\\/script')}
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
    <script src="https://cdn.jsdelivr.net/npm/@babel/standalone@7.29.9/babel.min.js"></script>
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
