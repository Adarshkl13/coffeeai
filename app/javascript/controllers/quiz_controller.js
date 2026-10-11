import { Controller } from "@hotwired/stimulus"

// Scored multi-question quiz for unit reviews.
//   <div class="lcw" data-controller="quiz" data-quiz-key-value="aad-unit-1">
//     <div class="lcw-q" data-answer="2" data-explain="Why option 2 is right">
//       <p>Question text</p>
//       <ul><li>Option 1</li><li>Option 2</li><li>Option 3</li></ul>
//     </div>
//     ...
//   </div>
// data-answer is 1-based. The best score is remembered in this browser only.
export default class extends Controller {
  static values = { key: String, pass: { type: Number, default: 70 } }

  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.questions = Array.from(this.element.querySelectorAll(".lcw-q"))
    this.questions.forEach((q, qi) => this._decorate(q, qi))
    this._buildFooter()
    this._showBest()
  }

  submit() {
    const unanswered = this.questions.filter(q => !q.querySelector("input:checked"))
    if (unanswered.length) {
      this._status(`Answer all questions first (${unanswered.length} left).`, "bad")
      unanswered[0].scrollIntoView({ behavior: "smooth", block: "center" })
      return
    }
    let score = 0
    this.questions.forEach(q => {
      const picked = Number(q.querySelector("input:checked").value)
      const answer = Number(q.dataset.answer)
      const ok = picked === answer
      if (ok) score++
      q.classList.toggle("lcw-q-ok", ok)
      q.classList.toggle("lcw-q-bad", !ok)
      q.querySelectorAll("label").forEach((l, i) => {
        l.classList.toggle("lcw-opt-right", i + 1 === answer)
        l.classList.toggle("lcw-opt-wrong", i + 1 === picked && !ok)
      })
      q.querySelectorAll("input").forEach(i => { i.disabled = true })
      const exp = q.querySelector(".lcw-explain")
      if (exp) exp.hidden = false
    })
    const total = this.questions.length
    const pct = Math.round((score / total) * 100)
    const passed = pct >= this.passValue
    this._status(
      `You scored ${score} / ${total} (${pct}%). ` +
      (passed ? "Unit passed. Use the flashcards to keep it fresh." : `Aim for ${this.passValue}% or more. Read the explanations and retry.`),
      passed ? "ok" : "bad"
    )
    this.submitBtn.hidden = true
    this.retryBtn.hidden = false
    this._saveBest(pct)
  }

  retry() {
    this.questions.forEach(q => {
      q.classList.remove("lcw-q-ok", "lcw-q-bad")
      q.querySelectorAll("label").forEach(l => l.classList.remove("lcw-opt-right", "lcw-opt-wrong"))
      q.querySelectorAll("input").forEach(i => { i.disabled = false; i.checked = false })
      const exp = q.querySelector(".lcw-explain")
      if (exp) exp.hidden = true
    })
    this._status("", null)
    this.submitBtn.hidden = false
    this.retryBtn.hidden = true
    this._updateProgress()
    this.questions[0]?.scrollIntoView({ behavior: "smooth", block: "center" })
  }

  // ── Building the UI ─────────────────────────────────────────────
  _decorate(q, qi) {
    const num = document.createElement("span")
    num.className = "lcw-q-num"
    num.textContent = `Q${qi + 1}`
    q.querySelector("p")?.prepend(num)

    const list = q.querySelector("ul, ol")
    if (!list) return
    const opts = document.createElement("div")
    opts.className = "lcw-opts"
    Array.from(list.children).forEach((li, i) => {
      const label = document.createElement("label")
      label.className = "lcw-opt"
      const input = document.createElement("input")
      input.type = "radio"
      input.name = `${this.keyValue || "quiz"}-q${qi}`
      input.value = String(i + 1)
      input.addEventListener("change", () => this._updateProgress())
      const text = document.createElement("span")
      while (li.firstChild) text.appendChild(li.firstChild)
      label.append(input, text)
      opts.appendChild(label)
    })
    list.replaceWith(opts)

    if (q.dataset.explain) {
      const exp = document.createElement("p")
      exp.className = "lcw-explain"
      exp.hidden = true
      exp.textContent = q.dataset.explain
      q.appendChild(exp)
    }
  }

  _buildFooter() {
    const bar = document.createElement("div")
    bar.className = "lcw-toolbar lcw-quiz-bar"
    this.progressEl = document.createElement("span")
    this.progressEl.className = "lcw-quiz-progress"
    this.submitBtn = this._button("Submit answers", "lcw-btn lcw-btn-primary", () => this.submit())
    this.retryBtn = this._button("Retry quiz", "lcw-btn", () => this.retry())
    this.retryBtn.hidden = true
    this.bestEl = document.createElement("span")
    this.bestEl.className = "lcw-quiz-best"
    bar.append(this.submitBtn, this.retryBtn, this.progressEl, this.bestEl)
    this.statusEl = document.createElement("div")
    this.statusEl.className = "lcw-feedback"
    this.statusEl.setAttribute("aria-live", "polite")
    this.element.append(bar, this.statusEl)
    this._updateProgress()
  }

  _button(text, cls, fn) {
    const b = document.createElement("button")
    b.type = "button"; b.className = cls; b.textContent = text
    b.addEventListener("click", fn)
    return b
  }

  _updateProgress() {
    const done = this.questions.filter(q => q.querySelector("input:checked")).length
    this.progressEl.textContent = `${done} / ${this.questions.length} answered`
  }

  _status(msg, kind) {
    this.statusEl.textContent = msg
    this.statusEl.className = "lcw-feedback" + (kind ? ` lcw-feedback-${kind}` : "")
  }

  // ── Best score (per browser; missing storage just hides it) ─────
  get _storageKey() { return `lcw-quiz-best:${this.keyValue || location.pathname}` }

  _saveBest(pct) {
    try {
      const prev = Number(localStorage.getItem(this._storageKey) || -1)
      if (pct > prev) localStorage.setItem(this._storageKey, String(pct))
    } catch (_) { /* storage unavailable */ }
    this._showBest()
  }

  _showBest() {
    let best = null
    try { best = localStorage.getItem(this._storageKey) } catch (_) { best = null }
    this.bestEl.textContent = best === null ? "" : `Best: ${best}%`
  }
}
