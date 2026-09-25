// Real PHP (php-wasm: the PHP 8.5 interpreter compiled to WebAssembly), loaded once per page.
// Runner contract: run(code, { onStatus }) resolves to output items { text, cls? }.
// One interpreter is kept per page and fully reset (refresh) before every run, so no
// variables, functions or classes leak from one run to the next.
const CDN         = "https://cdn.jsdelivr.net/npm/"
const PHP_WEB     = CDN + "php-wasm@0.1.0/PhpWeb.mjs"
const MBSTRING    = CDN + "php-wasm-mbstring@0.1.0/index.mjs"
const PHP_VERSION = "8.5"
const PHP_INI = [
  "date.timezone=UTC",
  "display_errors=1",
  "html_errors=0",
  "error_reporting=E_ALL"
].join("\n")

// The embedded interpreter lacks the CLI's STDIN/STDOUT/STDERR constants. Defined on the
// same line as the student's first line, so reported line numbers stay correct.
// Only added when the code uses them: `declare(strict_types=1)` must be a file's first statement.
const STD_DEFINES = "foreach (['STDIN' => 'r', 'STDOUT' => 'w', 'STDERR' => 'w'] as $__n => $__m) " +
  "{ if (!defined($__n)) define($__n, fopen('php://' . strtolower($__n), $__m)); } unset($__n, $__m);"

function withStdStreams(code) {
  if (!/\bSTD(IN|OUT|ERR)\b/.test(code)) return code
  const declare = code.match(/^\s*<\?php\s+declare\s*\([^)]*\)\s*;/)
  if (declare) return declare[0] + " " + STD_DEFINES + code.slice(declare[0].length)
  return "<?php " + STD_DEFINES + " ?>" + code
}

let phpPromise = null
let sink = null // where the current run's output goes

function loadPhpOnce() {
  if (phpPromise) return phpPromise
  phpPromise = Promise.all([import(PHP_WEB), import(MBSTRING)]).then(async ([{ PhpWeb }, mbstring]) => {
    const php = new PhpWeb({ version: PHP_VERSION, sharedLibs: [mbstring.default], ini: PHP_INI })
    php.addEventListener("output", (e) => sink && sink.write(e.detail.join(""), false))
    php.addEventListener("error",  (e) => sink && sink.write(e.detail.join(""), true))
    await php.binary
    return php
  })
  phpPromise.catch(() => { phpPromise = null })
  return phpPromise
}

// PHP prints errors into its normal output ("\nFatal error: … in <script> on line N").
// Mark them (and their stack trace) as errors and give the script a friendly name.
const ERROR_LINE = /^(PHP )?(Fatal error|Parse error|Warning|Notice|Deprecated|Recoverable fatal error)\b/

function outputCollector() {
  const out = []
  const buffers = { false: "", true: "" }
  let inTrace = false
  const push = (raw, isErr) => {
    const text = raw.replace(/php-wasm run script/g, "main.php")
    if (ERROR_LINE.test(text)) {
      // drop the blank line PHP puts in front of every error message
      const last = out[out.length - 1]
      if (last && last.text === "" && !last.cls) out.pop()
      inTrace = /error/i.test(text.split(":")[0])
      out.push({ text, cls: "err" })
    } else if (inTrace && (/^Stack trace:$/.test(text) || /^#\d+ /.test(text) || /^\s+thrown in /.test(text))) {
      out.push({ text, cls: "err" })
    } else {
      inTrace = false
      out.push(isErr ? { text, cls: "err" } : { text })
    }
  }
  return {
    out,
    write(chunk, isErr) {
      const lines = (buffers[isErr] + chunk).split("\n")
      buffers[isErr] = lines.pop()
      lines.forEach(l => push(l, isErr))
    },
    flush() {
      for (const isErr of [false, true]) {
        if (buffers[isErr]) push(buffers[isErr], isErr)
        buffers[isErr] = ""
      }
    }
  }
}

export async function run(code, { onStatus = () => {} } = {}) {
  if (!phpPromise) onStatus("Loading PHP… (first run downloads about 5 MB)")
  const php = await loadPhpOnce()
  const collector = outputCollector()
  try {
    await php.refresh()
    sink = collector
    await php.run(withStdStreams(code))
  } catch (e) {
    collector.flush()
    collector.out.push({ text: String(e && e.message || e).split("\n")[0], cls: "err" })
  } finally {
    php.flush()
    sink = null
    collector.flush()
  }
  return collector.out
}
