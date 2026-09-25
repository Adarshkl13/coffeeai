// Real Java 17 in the browser: CheerpJ (a JVM compiled to WebAssembly) runs the Eclipse Compiler for Java
// (ECJ) and then the compiled program. Both are driven by public/javac/JavaRunner.java.
// Runner contract: run(code, { onStatus }) resolves to output items { text, cls? } (see python.js).
const CHEERPJ_LOADER = "https://cjrtnc.leaningtech.com/4.3/loader.js"
const CLASSPATH = "/app/javac/java-runner.jar:/app/javac/ecj-3.46.100.jar"
// Required by the CheerpJ Community License ("give appropriate credits")
const CREDIT = { text: "Powered by CheerpJ, a Leaning Technologies Java tool", cls: "info" }

let cheerpjPromise = null
let sink = null        // chunks [{ text, err }] of the job in progress
let queue = Promise.resolve()
let runCount = 0

// JavaRunner runs as a long-lived "server" inside CheerpJ, pulling jobs through the nextJob() native,
// so ECJ stays loaded and warm between runs.
let serverAlive = false
let jobWaiter = null   // resolves the Java side's pending nextJob() call
let pendingJob = null  // job line waiting for the Java side to ask
let currentJob = null  // { resolve } of the job in progress

function loadCheerpjOnce() {
  if (cheerpjPromise) return cheerpjPromise
  cheerpjPromise = new Promise((resolve, reject) => {
    const script = document.createElement("script")
    script.src = CHEERPJ_LOADER
    script.onload = resolve
    script.onerror = () => reject(new Error("network error"))
    document.head.appendChild(script)
  }).then(() => window.cheerpjInit({
    version: 17,
    status: "none",
    natives: {
      async Java_JavaRunner_nextJob() {
        return new Promise(resolve => {
          if (pendingJob !== null) { resolve(pendingJob); pendingJob = null } else jobWaiter = resolve
        })
      },
      async Java_JavaRunner_jobDone(lib, code) { finishJob(code) },
      async Java_JavaRunner_emit(lib, text, err) { sink?.push({ text, err: !!err }) }
    }
  }))
  cheerpjPromise.catch(() => { cheerpjPromise = null })
  return cheerpjPromise
}

function finishJob(code) {
  const job = currentJob
  currentJob = null
  job?.resolve(code)
}

function startServer() {
  serverAlive = true
  jobWaiter = null
  // Resolves only if the JVM exits (e.g. the program called System.exit); the next job restarts it
  window.cheerpjRunMain("JavaRunner", CLASSPATH, "serve").finally(() => {
    serverAlive = false
    finishJob(null)
  })
}

// Resolves to the job's exit code, or null if the program ended the JVM
function javaJob(...args) {
  if (!serverAlive) startServer()
  return new Promise(resolve => {
    currentJob = { resolve }
    const line = args.join("\n")
    if (jobWaiter) { const w = jobWaiter; jobWaiter = null; w(line) } else pendingJob = line
  })
}

// The class `java` would launch: the public top-level type, else the first one declaring main()
function mainClassName(code) {
  const src = code.replace(/\/\*[\s\S]*?\*\/|\/\/[^\n]*|'(?:\\.|[^'\\\n])+'|"(?:\\.|[^"\\\n])*"/g, " ")
  const pkg = src.match(/^\s*package\s+([\w.]+)\s*;/m)?.[1]
  const types = [...src.matchAll(/\b(public\s+)?(?:(?:abstract|final|sealed|non-sealed|static|strictfp)\s+)*(?:class|record|enum|interface)\s+([A-Za-z_$][\w$]*)/g)]
  const pub = types.find(m => m[1])
  let name = pub?.[2]
  if (!name) {
    const mainAt = src.search(/\bstatic\s+void\s+main\s*\(/)
    name = (types.filter(m => m.index < mainAt).pop() || types[0])?.[2] || "Main"
  }
  return { file: `${name}.java`, className: pkg ? `${pkg}.${name}` : name }
}

// Chunks → one item per line, keeping stdout/stderr order
function toLines(chunks) {
  const merged = []
  for (const c of chunks) {
    const last = merged[merged.length - 1]
    if (last && last.err === c.err) last.text += c.text
    else merged.push({ ...c })
  }
  return merged.flatMap(({ text, err }) =>
    text.replace(/\r\n/g, "\n").replace(/\n$/, "").split("\n").map(line => err ? { text: line, cls: "err" } : { text: line }))
}

// ECJ's "----------\n1. ERROR in /files/run-1-src/Main.java (at line 3)\n<src>\n<^^^>\n<message>" → javac-style items
function formatCompileErrors(text, file) {
  const blocks = text.split(/^-{10}\s*$/m).map(b => b.replace(/^\n+|\n+$/g, "")).filter(Boolean)
  const items = []
  let summary = null
  for (const block of blocks) {
    const head = block.match(/^\d+\. (ERROR|WARNING|INFO) in \S+ \(at line (\d+)\)\n([\s\S]*)$/)
    if (head) {
      const lines = head[3].split("\n")
      const caretAt = lines.findIndex(l => /^\s*\^+\s*$/.test(l))
      const snippet = caretAt >= 0 ? lines.slice(0, caretAt + 1) : []
      const message = (caretAt >= 0 ? lines.slice(caretAt + 1) : lines).join("\n").trim()
      items.push({ text: [`${file}:${head[2]}: ${head[1].toLowerCase()}: ${message}`, ...snippet].join("\n"), cls: "err" })
    } else if (/^\d+ problems? \(/.test(block)) {
      const errors = block.match(/(\d+) errors?/)?.[1]
      summary = errors ? `${errors} error${errors === "1" ? "" : "s"}` : block
    } else {
      items.push({ text: block.replaceAll(/\/files\/run-\d+-src\//g, ""), cls: "err" })
    }
  }
  if (summary) items.push({ text: summary, cls: "err" })
  return items
}

async function compileAndRun(code, onStatus) {
  if (!cheerpjPromise) onStatus("Loading Java… (first run downloads about 14 MB)")
  await loadCheerpjOnce()
  const n = ++runCount
  const { file, className } = mainClassName(code)
  const srcPath = `/str/java-run-${n}.java`
  const outDir = `/files/run-${n}`
  window.cheerpOSAddStringFile(srcPath, new TextEncoder().encode(code))

  onStatus(n === 1 ? "Compiling… (the first run also warms up the compiler and can take 10–30 s)" : "Compiling…")
  sink = []
  const compiled = await javaJob("compile", outDir, srcPath, file)
  const compileOut = sink.map(c => c.text).join("")
  if (compiled !== 0) {
    const errors = formatCompileErrors(compileOut, file)
    return [...(errors.length ? errors : [{ text: "The Java compiler stopped unexpectedly. Please run again.", cls: "err" }]), CREDIT]
  }

  onStatus("Running…")
  sink = []
  await javaJob("run", outDir, className)
  return [...toLines(sink), CREDIT]
}

export function run(code, { onStatus = () => {} } = {}) {
  // CheerpJ runs one program at a time and the output sink is shared, so runs are serialized
  const result = queue.then(() => compileAndRun(code, onStatus)).finally(() => { sink = null })
  queue = result.catch(() => {})
  return result
}
