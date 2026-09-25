// Real Ruby (ruby.wasm: CRuby 3.4 compiled to WebAssembly/WASI), loaded once per page.
// Runner contract: run(code, { onStatus }) resolves to output items { text, cls? }.
// The compiled module is cached; every run gets a brand-new Ruby VM instance, so no
// classes, methods or variables leak from one run to the next.
const CDN         = "https://cdn.jsdelivr.net/npm/"
const WASI_SHIM   = CDN + "@bjorn3/browser_wasi_shim@0.4.2/+esm"
const RUBY_VM     = CDN + "@ruby/wasm-wasi@2.10.1/+esm"
const RUBY_WASM   = CDN + "@ruby/3.4-wasm-wasi@2.10.1/dist/ruby+stdlib.wasm"

let runtimePromise = null

async function compileWasm(url) {
  const response = await fetch(url)
  if (!response.ok) throw new Error(`HTTP ${response.status}`)
  if (WebAssembly.compileStreaming && (response.headers.get("content-type") || "").includes("application/wasm")) {
    return WebAssembly.compileStreaming(response)
  }
  return WebAssembly.compile(await response.arrayBuffer())
}

function loadRuntimeOnce() {
  if (runtimePromise) return runtimePromise
  runtimePromise = Promise.all([import(WASI_SHIM), import(RUBY_VM), compileWasm(RUBY_WASM)])
    .then(([shim, vm, module]) => ({ shim, RubyVM: vm.RubyVM, module }))
  runtimePromise.catch(() => { runtimePromise = null })
  return runtimePromise
}

// Collects bytes written to a WASI fd and splits them into console lines
function lineSink(shim, out, cls) {
  const decoder = new TextDecoder()
  let buffer = ""
  const push = (line) => {
    const text = line.replace(/\x1b\[[0-9;]*m/g, "") // drop terminal colours (syntax errors)
    out.push(cls ? { text, cls } : { text })
  }
  const fd = new shim.ConsoleStdout((bytes) => {
    buffer += decoder.decode(bytes, { stream: true })
    const lines = buffer.split("\n")
    buffer = lines.pop()
    lines.forEach(push)
  })
  fd.flush = () => { if (buffer) push(buffer); buffer = "" }
  return fd
}

// Runs the student's file at top level and prints errors the way `ruby main.rb` does,
// keeping only backtrace frames from the student's own code.
const WRAPPER = `
begin
  eval(File.read("/main.rb"), TOPLEVEL_BINDING, "main.rb", 1)
rescue SystemExit
rescue Exception => e
  $stdout.flush
  own = (e.backtrace || []).select { |l| l.start_with?("main.rb") }
  if own.empty? # e.g. SyntaxError: the message already says where
    $stderr.puts e.detailed_message(highlight: false)
  else
    e.set_backtrace(own) rescue nil
    $stderr.puts e.full_message(highlight: false)
  end
ensure
  $stdout.flush
  $stderr.flush
end
`

export async function run(code, { onStatus = () => {} } = {}) {
  if (!runtimePromise) onStatus("Loading Ruby… (first run downloads about 8 MB)")
  const { shim, RubyVM, module } = await loadRuntimeOnce()

  const out = []
  const stdout = lineSink(shim, out)
  const stderr = lineSink(shim, out, "err")
  const source = new shim.File(new TextEncoder().encode(code))
  const fds = [
    new shim.OpenFile(new shim.File([])),
    stdout,
    stderr,
    new shim.PreopenDirectory("/", new Map([["main.rb", source]]))
  ]
  const wasi = new shim.WASI([], [], fds, { debug: false })

  try {
    // syntax_suggest needs threads (unavailable on WASI), so keep plain syntax errors
    const args = ["ruby.wasm", "-EUTF-8", "--disable=syntax_suggest", "-e_=0"]
    const { vm } = await RubyVM.instantiateModule({ module, wasip1: wasi, args })
    vm.eval(WRAPPER)
  } catch (e) {
    out.push({ text: String(e && e.message || e).split("\n")[0], cls: "err" })
  } finally {
    stdout.flush()
    stderr.flush()
  }
  return out
}
