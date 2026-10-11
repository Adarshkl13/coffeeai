import { Controller } from "@hotwired/stimulus"

// Click a word to see how much it "attends" to every other word. The weights are illustrative
// (hand-made to show the idea), not taken from a real model. Each row adds up to 100%.
//   <div class="lcw" data-controller="attention"></div>
const WORDS = "The animal did not cross the street because it was too tired".split(" ")
const SPECIAL = {   // word index -> { other index: extra weight }
  8: { 1: 5.5, 11: 1.4, 6: 0.8 },       // it -> animal, tired, street
  11: { 1: 2.2, 8: 2.0, 10: 0.8 },      // tired -> animal, it, too
  4: { 6: 2.4, 1: 1.6, 3: 0.8 },        // cross -> street, animal, not
  6: { 4: 1.8, 5: 0.9 },                // street -> cross, the
  3: { 2: 1.5, 4: 1.2 },                // not -> did, cross
  1: { 0: 1.2, 4: 0.9 }                 // animal -> The, cross
}

function row(i) {
  const raw = WORDS.map((_, j) => (i === j ? 1.2 : Math.exp(-Math.abs(i - j) * 0.9) * 0.6) + ((SPECIAL[i] || {})[j] || 0))
  const sum = raw.reduce((a, b) => a + b, 0)
  return raw.map(v => v / sum)
}

export default class extends Controller {
  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.element.innerHTML = `
      <p class="lcw-prompt">Click a word. Brighter words get more of its attention.</p>
      <div class="at-sentence">${WORDS.map((w, i) => `<button type="button" class="at-word" data-i="${i}">${w}</button>`).join(" ")}</div>
      <ol class="at-list" aria-live="polite"></ol>
      <p class="lcw-lab-hint">Illustrative weights made to show the idea, not from a real model. Real models have many attention heads, and each head learns its own pattern.</p>`
    this.element.querySelectorAll(".at-word").forEach(b => b.addEventListener("click", () => this.pick(Number(b.dataset.i))))
    this.pick(8)
  }

  pick(i) {
    const w = row(i)
    this.element.querySelectorAll(".at-word").forEach((b, j) => {
      b.style.setProperty("--a", (w[j] / Math.max(...w)).toFixed(2))
      b.classList.toggle("is-query", j === i)
      b.setAttribute("aria-pressed", String(j === i))
    })
    const top = w.map((v, j) => [WORDS[j], v, j]).filter(([, , j]) => j !== i).sort((a, b) => b[1] - a[1]).slice(0, 4)
    this.element.querySelector(".at-list").innerHTML =
      `<li class="at-head">"${WORDS[i]}" looks most at:</li>` +
      top.map(([word, v]) => `<li><span class="at-w">${word}</span><span class="nt-bar"><span style="width:${(v * 100 / top[0][1]).toFixed(0)}%"></span></span><span class="nt-p">${(v * 100).toFixed(0)}%</span></li>`).join("")
  }
}
