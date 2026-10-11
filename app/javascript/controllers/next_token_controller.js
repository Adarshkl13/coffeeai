import { Controller } from "@hotwired/stimulus"
import { esc } from "lib/vecviz"

// Next-token probabilities with temperature and top-k. The scores (logits) are example numbers,
// chosen to look like a real model's, so learners can see how sampling settings change the choice.
//   <div class="lcw" data-controller="next-token"></div>
const PROMPTS = {
  "The capital of France is": [["Paris", 9.0], ["a", 5.2], ["the", 4.9], ["located", 4.1], ["Lyon", 2.8], ["known", 2.6], ["not", 1.9], ["beautiful", 1.5]],
  "My favourite programming language is": [["Python", 6.1], ["JavaScript", 5.4], ["C", 4.6], ["Rust", 4.5], ["Java", 4.3], ["Go", 3.9], ["Ruby", 3.4], ["TypeScript", 3.3]],
  "Once upon a": [["time", 11.0], ["midnight", 5.0], ["hill", 3.6], ["day", 3.5], ["dream", 3.1], ["star", 2.9], ["river", 2.4], ["summer", 2.2]]
}

export default class extends Controller {
  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.element.innerHTML = `
      <p class="lcw-prompt">Pick a prompt, then change the settings and watch the probabilities.</p>
      <div class="lcw-toolbar nt-prompts">${Object.keys(PROMPTS).map((p, i) => `<button type="button" class="lcw-chip ${i ? "" : "is-on"}" data-p="${esc(p)}">${esc(p)} …</button>`).join("")}</div>
      <div class="nt-controls">
        <label>Temperature <input type="range" min="0" max="2" step="0.1" value="1" data-role="temp"> <output data-role="temp-out">1.0</output></label>
        <label>Top-k <input type="range" min="1" max="8" step="1" value="8" data-role="topk"> <output data-role="topk-out">8</output></label>
      </div>
      <ol class="nt-bars" aria-live="polite"></ol>
      <div class="lcw-toolbar"><button type="button" class="lcw-btn lcw-btn-primary" data-role="sample">Pick the next word ▶</button><span class="nt-result" aria-live="polite"></span></div>
      <p class="lcw-lab-hint">Example scores, not from a real model. Temperature 0 always picks the top word (greedy decoding).</p>`
    this.prompt = Object.keys(PROMPTS)[0]
    this.$ = r => this.element.querySelector(`[data-role="${r}"]`)
    this.element.querySelectorAll("[data-p]").forEach(b => b.addEventListener("click", () => {
      this.prompt = b.dataset.p
      this.element.querySelectorAll("[data-p]").forEach(x => x.classList.toggle("is-on", x === b))
      this.element.querySelector(".nt-result").textContent = ""
      this.render()
    }))
    ;["temp", "topk"].forEach(r => this.$(r).addEventListener("input", () => this.render()))
    this.$("sample").addEventListener("click", () => this.sample())
    this.render()
  }

  // softmax(logits / T), keep the top k, renormalise. T = 0 means greedy.
  probs() {
    const T = Number(this.$("temp").value), k = Number(this.$("topk").value)
    const rows = PROMPTS[this.prompt].map(([w, l]) => ({ w, l })).sort((a, b) => b.l - a.l)
    if (T === 0) return rows.map((r, i) => ({ ...r, p: i === 0 ? 1 : 0 }))
    const max = rows[0].l
    rows.forEach((r, i) => { r.e = i < k ? Math.exp((r.l - max) / T) : 0 })
    const sum = rows.reduce((s, r) => s + r.e, 0)
    return rows.map(r => ({ ...r, p: r.e / sum }))
  }

  render() {
    this.$("temp-out").textContent = Number(this.$("temp").value).toFixed(1)
    this.$("topk-out").textContent = this.$("topk").value
    this.element.querySelector(".nt-bars").innerHTML = this.probs().map(r => `
      <li class="${r.p === 0 ? "nt-off" : ""}"><span class="nt-word">${esc(r.w)}</span>
        <span class="nt-bar"><span style="width:${(r.p * 100).toFixed(1)}%"></span></span>
        <span class="nt-p">${(r.p * 100).toFixed(1)}%</span></li>`).join("")
  }

  sample() {
    let x = Math.random(), pick = null
    for (const r of this.probs()) { x -= r.p; if (x <= 0 && r.p > 0) { pick = r; break } }
    pick ||= this.probs().find(r => r.p > 0)
    this.element.querySelector(".nt-result").innerHTML = `${esc(this.prompt)} <strong>${esc(pick.w)}</strong>`
  }
}
