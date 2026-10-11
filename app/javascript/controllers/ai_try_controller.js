import { Controller } from "@hotwired/stimulus"
import { esc } from "lib/vecviz"

// "Try it with AI" for non-coding lessons: a ready-made prompt the learner can edit, copy, or send
// to the site's AI model (POST /labs/prompt/try, limited per learner per day). Lesson markup:
//   <div class="lcw lcw-lab" data-controller="ai-try">
//     <pre class="ai-try-prompt">Prompt text, with [placeholders] to change</pre>
//     <ul class="ai-try-checks"><li>What to check in the answer</li></ul>   (optional)
//   </div>
// Small, safe Markdown for AI answers: everything is escaped first, then headings, bold, lists and
// pipe tables are turned into HTML. Anything else stays plain text.
function renderAnswer(text) {
  const inline = t => esc(t).replace(/\*\*(.+?)\*\*/g, "<strong>$1</strong>").replace(/`([^`]+)`/g, "<code>$1</code>")
  const lines = String(text).replace(/\r/g, "").split("\n")
  const out = []
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i]
    if (/^\s*\|.*\|\s*$/.test(line) && /^\s*\|?\s*:?-{2,}/.test(lines[i + 1] || "")) {
      const cells = l => l.trim().replace(/^\||\|$/g, "").split("|").map(c => c.trim())
      const head = cells(line); i += 2
      const rows = []
      while (i < lines.length && /^\s*\|.*\|\s*$/.test(lines[i])) rows.push(cells(lines[i++]))
      i--
      out.push(`<div class="ait-table-wrap"><table class="lc-table"><thead><tr>${head.map(c => `<th>${inline(c)}</th>`).join("")}</tr></thead>` +
               `<tbody>${rows.map(r => `<tr>${r.map(c => `<td>${inline(c)}</td>`).join("")}</tr>`).join("")}</tbody></table></div>`)
    } else if (/^#{1,4}\s+/.test(line)) {
      out.push(`<p class="ait-h">${inline(line.replace(/^#{1,4}\s+/, ""))}</p>`)
    } else if (/^\s*([-*•]|\d+[.)])\s+/.test(line)) {
      const ordered = /^\s*\d+[.)]/.test(line), items = []
      while (i < lines.length && /^\s*([-*•]|\d+[.)])\s+/.test(lines[i])) items.push(lines[i++].replace(/^\s*([-*•]|\d+[.)])\s+/, ""))
      i--
      const tag = ordered ? "ol" : "ul"
      out.push(`<${tag}>${items.map(it => `<li>${inline(it)}</li>`).join("")}</${tag}>`)
    } else if (line.trim()) {
      out.push(`<p>${inline(line)}</p>`)
    }
  }
  return out.join("")
}

export default class extends Controller {
  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.original = (this.element.querySelector(".ai-try-prompt")?.textContent || "").trim()
    const checks = [...this.element.querySelectorAll(".ai-try-checks li")].map(li => li.innerHTML)
    this.element.innerHTML = `
      <div class="lcw-lab-head"><strong>🤖 Try it with AI</strong><span class="lcw-lab-usage" data-role="usage"></span></div>
      <p class="lcw-lab-hint">Change the words in [square brackets] to fit your own work, then ask the AI or copy the prompt.</p>
      <textarea class="lcw-input ait-prompt" data-role="prompt" rows="8" maxlength="4000" spellcheck="true" aria-label="Prompt"></textarea>
      <div class="lcw-toolbar">
        <button type="button" class="lcw-btn lcw-btn-primary" data-role="ask">Ask AI ▶</button>
        <button type="button" class="lcw-btn" data-role="copy">Copy prompt</button>
        <button type="button" class="lcw-btn lcw-btn-ghost" data-role="reset">Reset</button>
      </div>
      <div class="lcw-feedback" data-role="error" aria-live="assertive"></div>
      <div class="ait-answer" data-role="answer" aria-live="polite" hidden></div>
      ${checks.length ? `<div class="ait-checks"><strong>What to check in the answer</strong><ul>${checks.map(c => `<li>${c}</li>`).join("")}</ul></div>` : ""}`
    this.$ = r => this.element.querySelector(`[data-role="${r}"]`)
    this.$("prompt").value = this.original
    this.$("ask").addEventListener("click", () => this.ask())
    this.$("copy").addEventListener("click", () => this.copy())
    this.$("reset").addEventListener("click", () => { this.$("prompt").value = this.original; this.$("error").textContent = "" })
  }

  async ask() {
    const prompt = this.$("prompt").value.trim()
    const button = this.$("ask"), answer = this.$("answer")
    this.$("error").textContent = ""
    if (!prompt) { this.$("error").textContent = "Write a prompt first."; return }
    button.disabled = true; button.textContent = "Thinking…"
    try {
      const res = await fetch("/labs/prompt/try", {
        method: "POST",
        headers: { "Content-Type": "application/json", Accept: "application/json",
                   "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]')?.content || "" },
        body: JSON.stringify({ prompt })
      })
      const data = await res.json().catch(() => ({}))
      if (data.usage?.limit) this.$("usage").textContent = `${data.usage.used}/${data.usage.limit} AI tries today`
      if (!res.ok) { this.$("error").textContent = data.error || "Something went wrong. Please try again."; return }
      answer.hidden = false
      answer.innerHTML = data.dry_run
        ? `<p class="ait-note">${esc(data.notice)}</p>`
        : `<div class="ait-label">AI answer</div><div class="ait-text">${renderAnswer(data.output)}</div>
           <p class="ait-note">AI can be wrong. Check facts, numbers and names before you use this.</p>`
    } catch {
      this.$("error").textContent = "Could not reach the server. Check your connection and try again."
    } finally {
      button.disabled = false; button.textContent = "Ask AI ▶"
    }
  }

  async copy() {
    const text = this.$("prompt").value, button = this.$("copy")
    try { await navigator.clipboard.writeText(text) } catch {
      this.$("prompt").select(); document.execCommand("copy")
    }
    button.textContent = "Copied ✓"
    setTimeout(() => { button.textContent = "Copy prompt" }, 1500)
  }
}
