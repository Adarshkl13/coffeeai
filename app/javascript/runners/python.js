// Real Python (Pyodide: CPython compiled to WebAssembly), loaded once per page.
// Runner contract: run(code, { onStatus }) resolves to output items:
//   { text, cls? }                   one console line ("err" / "info" classes)
//   { table: { columns, rows } }     a result table
const PYODIDE_URL = "https://cdn.jsdelivr.net/pyodide/v0.29.5/full/"
let pyodidePromise = null
const installed = new Set()
const PYPI_PACKAGES = [
  { name: "django", spec: "django==6.1.*", pattern: /^\s*(import|from)\s+django\b/m }
]

function loadPyodideOnce() {
  if (pyodidePromise) return pyodidePromise
  pyodidePromise = new Promise((resolve, reject) => {
    const script = document.createElement("script")
    script.src = PYODIDE_URL + "pyodide.js"
    script.onload = () => window.loadPyodide({ indexURL: PYODIDE_URL }).then(resolve, reject)
    script.onerror = () => reject(new Error("network error"))
    document.head.appendChild(script)
  })
  pyodidePromise.catch(() => { pyodidePromise = null })
  return pyodidePromise
}

// Keeps only the student's own frames (<exec>) so tracebacks aren't cluttered by Pyodide internals
function cleanTraceback(message) {
  const lines = message.trimEnd().split("\n")
  const first = lines.findIndex(l => l.includes('File "<exec>"'))
  if (first === -1) return lines.slice(-1).join("\n")
  return ["Traceback (most recent call last):", ...lines.slice(first)].join("\n")
}

export async function run(code, { onStatus = () => {} } = {}) {
  if (!pyodidePromise) onStatus("Loading Python… (first run downloads about 10 MB)")
  const py = await loadPyodideOnce()
  const out = []
  py.setStdout({ batched: (text) => out.push({ text }) })
  py.setStderr({ batched: (text) => out.push({ text, cls: "err" }) })
  await py.loadPackagesFromImports(code, {
    messageCallback: (msg) => { if (/^Loading /.test(msg)) onStatus(`${msg} (first time only)`) }
  })
  // Pure-Python packages that aren't bundled with Pyodide come from PyPI via micropip
  const missing = PYPI_PACKAGES.filter(p => p.pattern.test(code) && !installed.has(p.name))
  if (missing.length) {
    onStatus(`Installing ${missing.map(p => p.name).join(", ")}… (first time only)`)
    await py.loadPackage("micropip")
    const micropip = py.pyimport("micropip")
    for (const p of missing) {
      await micropip.install(p.spec)
      installed.add(p.name)
    }
    micropip.destroy()
  }

  const globals = py.globals.get("dict")()
  globals.set("__name__", "__main__")
  try {
    await py.runPythonAsync(code, { globals })
  } catch (e) {
    out.push({ text: cleanTraceback(e.message), cls: "err" })
  } finally {
    globals.destroy()
  }
  return out
}
