import { Controller } from "@hotwired/stimulus"
import { embed, onStatus, cosine } from "lib/embedder"
import { heatStrip, head, fmt, statusLine, esc } from "lib/vecviz"

// Similarity playground: two sentences → real embeddings → cosine score + angle plot.
//   <div class="lcw" data-controller="similarity">
//     <ul data-similarity-target="presets">
//       <li data-a="A cat sits on the mat" data-b="A kitten rests on a rug">Paraphrase</li>
//     </ul>
//   </div>
export default class extends Controller {
  static targets = ["presets"]

  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    const presets = this.hasPresetsTarget ? Array.from(this.presetsTarget.children) : []
    const first = presets[0]?.dataset || { a: "A cat sits on the mat", b: "A kitten is resting on a rug" }

    this.element.insertAdjacentHTML("beforeend", `
      <div class="lcw-sim-inputs">
        <label>Sentence A <input class="lcw-input" data-role="a" maxlength="200" value="${esc(first.a)}"></label>
        <label>Sentence B <input class="lcw-input" data-role="b" maxlength="200" value="${esc(first.b)}"></label>
      </div>
      <div class="lcw-toolbar">
        <button type="button" class="lcw-btn lcw-btn-primary" data-role="go">Compare</button>
        <span class="lcw-presets" data-role="presets"></span>
      </div>
      <div class="lcw-model-status" data-role="status" aria-live="polite"></div>
      <div class="lcw-sim-result" data-role="result" hidden>
        <div class="lcw-sim-top">
          <div class="lcw-sim-score"><span data-role="score">0.00</span><small>cosine similarity</small></div>
          <svg class="lcw-sim-angle" viewBox="-10 -110 220 130" data-role="plot" aria-label="Angle between the two vectors"></svg>
          <p class="lcw-sim-verdict" data-role="verdict"></p>
        </div>
        <div class="lcw-sim-vecs" data-role="vecs"></div>
      </div>`)
    this.$ = (r) => this.element.querySelector(`[data-role="${r}"]`)
    presets.forEach(li => {
      const b = document.createElement("button")
      b.type = "button"; b.className = "lcw-btn lcw-btn-ghost"; b.textContent = li.textContent
      b.addEventListener("click", () => { this.$("a").value = li.dataset.a; this.$("b").value = li.dataset.b; this.compare() })
      this.$("presets").appendChild(b)
    })
    if (this.hasPresetsTarget) this.presetsTarget.hidden = true
    this.$("go").addEventListener("click", () => this.compare())
    this.element.querySelectorAll(".lcw-input").forEach(i => i.addEventListener("keydown", e => { if (e.key === "Enter") this.compare() }))
    this.off = onStatus(s => statusLine(this.$("status"), s))
    this.$("status").textContent = "Press Compare. The first time, your browser downloads a small embedding model (about 23 MB)."
  }

  disconnect() { this.off?.() }

  async compare() {
    const a = this.$("a").value.trim(), b = this.$("b").value.trim()
    if (!a || !b) return
    this.$("go").disabled = true
    try {
      const [va, vb] = await embed([a, b])
      const c = cosine(va, vb)
      this.$("result").hidden = false
      this.$("score").textContent = fmt(c, 3)
      // Rough bands for this model only; every embedding model has its own score range
      this.$("verdict").textContent =
        (c >= 0.6 ? "Very similar meaning." :
         c >= 0.4 ? "Related topics." :
         c >= 0.2 ? "Loosely related." : "Unrelated.") + " (rough bands for this model)"
      this._plot(c)
      this.$("vecs").innerHTML = [["A", a, va], ["B", b, vb]].map(([k, t, v]) => `
        <div class="lcw-sim-vec"><strong>${k}</strong> “${esc(t)}”
          <code>${head(v)}</code>${heatStrip(v, { label: `Embedding of sentence ${k}` })}</div>`).join("")
    } catch (_) { /* status line shows the error */ }
    this.$("go").disabled = false
  }

  // Both vectors are unit length; drawing them at their true angle keeps the cosine honest in 2-D.
  _plot(c) {
    const angle = Math.acos(Math.max(-1, Math.min(1, c)))
    const r = 90
    const bx = r * Math.cos(angle), by = -r * Math.sin(angle)
    const arc = 35, ax = arc * Math.cos(angle), ay = -arc * Math.sin(angle)
    const deg = Math.round(angle * 180 / Math.PI)
    this.$("plot").innerHTML = `
      <defs><marker id="simA" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#f59e0b"/></marker>
      <marker id="simB" markerWidth="8" markerHeight="8" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#3b82f6"/></marker></defs>
      <line x1="0" y1="0" x2="${r}" y2="0" stroke="#f59e0b" stroke-width="3" marker-end="url(#simA)"/>
      <line x1="0" y1="0" x2="${fmt(bx, 1)}" y2="${fmt(by, 1)}" stroke="#3b82f6" stroke-width="3" marker-end="url(#simB)"/>
      <path d="M${arc},0 A${arc},${arc} 0 0,0 ${fmt(ax, 1)},${fmt(ay, 1)}" fill="none" stroke="#c4b5fd" stroke-dasharray="3 3"/>
      <text x="${r + 6}" y="4" fill="#fcd34d" font-size="11">A</text>
      <text x="${fmt(bx + 4, 1)}" y="${fmt(by - 4, 1)}" fill="#93c5fd" font-size="11">B</text>
      <text x="${fmt(arc * 1.25 * Math.cos(angle / 2), 1)}" y="${fmt(-arc * 1.25 * Math.sin(angle / 2), 1)}" fill="#c4b5fd" font-size="11">${deg}°</text>`
  }
}
