// Real Python (Pyodide: CPython compiled to WebAssembly).
// Runner contract: run(code, { onStatus }) resolves to output items:
//   { text, cls? }                   one console line ("err" / "info" classes)
//   { table: { columns, rows } }     a result table
const PYODIDE_URL = "https://cdn.jsdelivr.net/pyodide/v0.29.5/full/"

// Pure-Python packages that aren't bundled with Pyodide come from PyPI via micropip.
// `fresh`: global state (e.g. Django's settings) can't be reset, so each run gets its own interpreter.
const PYPI_PACKAGES = [
  {
    name: "django", spec: "django==6.1.*", pattern: /^\s*(import|from)\s+django\b/m,
    pyodidePackages: ["sqlite3", "tzdata"], fresh: true,
    // Pyodide runs code inside an event loop, which Django's ORM would otherwise refuse
    setup: 'import os\nos.environ["DJANGO_ALLOW_ASYNC_UNSAFE"] = "true"'
  }
]

let scriptPromise = null
let sharedPromise = null
const installedIn = new WeakMap()

function loadScriptOnce() {
  if (scriptPromise) return scriptPromise
  scriptPromise = new Promise((resolve, reject) => {
    const script = document.createElement("script")
    script.src = PYODIDE_URL + "pyodide.js"
    script.onload = resolve
    script.onerror = () => reject(new Error("network error"))
    document.head.appendChild(script)
  })
  scriptPromise.catch(() => { scriptPromise = null })
  return scriptPromise
}

async function newInterpreter() {
  await loadScriptOnce()
  const py = await window.loadPyodide({ indexURL: PYODIDE_URL })
  // Pyodide's own deprecation notice from inside scikit-learn's helper (threadpoolctl) is not the learner's error
  py.runPython('import warnings\nwarnings.filterwarnings("ignore", message=r"JsProxy\\.as_object_map")')
  return py
}

function sharedInterpreter() {
  if (!sharedPromise) {
    sharedPromise = newInterpreter()
    sharedPromise.catch(() => { sharedPromise = null })
  }
  return sharedPromise
}

// Keeps only the student's own frames (<exec>) so tracebacks aren't cluttered by Pyodide internals
function cleanTraceback(message) {
  const lines = message.trimEnd().split("\n")
  const first = lines.findIndex(l => l.includes('File "<exec>"'))
  if (first === -1) return lines.slice(-1).join("\n")
  return ["Traceback (most recent call last):", ...lines.slice(first)].join("\n")
}

async function installPypiPackages(py, packages, onStatus) {
  const installed = installedIn.get(py) || new Set()
  installedIn.set(py, installed)
  const missing = packages.filter(p => !installed.has(p.name))
  if (!missing.length) return
  onStatus(`Installing ${missing.map(p => p.name).join(", ")}…`)
  await py.loadPackage(["micropip", ...missing.flatMap(p => p.pyodidePackages || [])], { messageCallback: () => {} })
  const micropip = py.pyimport("micropip")
  for (const p of missing) {
    await micropip.install(p.spec)
    installed.add(p.name)
  }
  micropip.destroy()
}

export async function run(code, { onStatus = () => {} } = {}) {
  const pypi = PYPI_PACKAGES.filter(p => p.pattern.test(code))
  const fresh = pypi.some(p => p.fresh)
  if (!scriptPromise) onStatus("Loading Python… (first run downloads about 10 MB)")
  else if (fresh) onStatus("Starting a fresh Python…")
  const py = fresh ? await newInterpreter() : await sharedInterpreter()

  const out = []
  py.setStdout({ batched: (text) => out.push({ text }) })
  py.setStderr({ batched: (text) => out.push({ text, cls: "err" }) })
  await py.loadPackagesFromImports(code, {
    messageCallback: (msg) => { if (/^Loading /.test(msg)) onStatus(`${msg} (first time only)`) }
  })
  await installPypiPackages(py, pypi, onStatus)
  for (const p of pypi) if (p.setup) py.runPython(p.setup)

  // Run as a real __main__ module so `__name__`-based lookups (e.g. ROOT_URLCONF = __name__) work
  const globals = py.runPython(
    'import sys, types\n_m = types.ModuleType("__main__")\nsys.modules["__main__"] = _m\ndel _m\nsys.modules["__main__"].__dict__'
  )
  try {
    await py.runPythonAsync(code, { globals })
  } catch (e) {
    out.push({ text: cleanTraceback(e.message), cls: "err" })
  } finally {
    globals.destroy()
  }
  return out
}
