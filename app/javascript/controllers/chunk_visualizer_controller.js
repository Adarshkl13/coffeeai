import { Controller } from "@hotwired/stimulus"
import { chunkText, STRATEGIES } from "lib/chunker"
import { esc } from "lib/vecviz"

// Chunking visualiser: paste text, move the size / overlap sliders, see how it splits.
//   <div class="lcw" data-controller="chunk-visualizer" data-chunk-visualizer-size-value="300">
//     <template>Default text to chunk…</template>
//   </div>
const COLORS = ["rgba(59,130,246,.22)", "rgba(16,185,129,.22)", "rgba(245,158,11,.22)", "rgba(236,72,153,.22)", "rgba(157,92,246,.25)"]

export default class extends Controller {
  static values = { size: { type: Number, default: 300 }, overlap: { type: Number, default: 50 }, strategy: { type: String, default: "fixed" } }

  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    const tpl = this.element.querySelector("template")
    const sample = tpl ? tpl.innerHTML.trim().replace(/&amp;/g, "&").replace(/&lt;/g, "<").replace(/&gt;/g, ">") : ""
    tpl?.remove()
    this.element.insertAdjacentHTML("beforeend", `
      <textarea class="lcw-input lcw-cv-text" data-role="text" rows="6" aria-label="Text to chunk">${esc(sample)}</textarea>
      <div class="lcw-cv-controls">
        <label>Strategy <select class="lcw-input" data-role="strategy">${Object.entries(STRATEGIES).map(([k, v]) =>
          `<option value="${k}" ${k === this.strategyValue ? "selected" : ""}>${v}</option>`).join("")}</select></label>
        <label>Chunk size <input type="range" data-role="size" min="50" max="1200" step="10" value="${this.sizeValue}"> <output data-role="size-out"></output></label>
        <label>Overlap <input type="range" data-role="overlap" min="0" max="400" step="10" value="${this.overlapValue}"> <output data-role="overlap-out"></output></label>
      </div>
      <div class="lcw-cv-stats" data-role="stats" aria-live="polite"></div>
      <div class="lcw-cv-view" data-role="view"></div>
      <ol class="lcw-cv-list" data-role="list"></ol>`)
    this.$ = (r) => this.element.querySelector(`[data-role="${r}"]`)
    ;["text", "strategy", "size", "overlap"].forEach(r => this.$(r).addEventListener("input", () => this.render()))
    this.render()
  }

  render() {
    const text = this.$("text").value
    const size = Number(this.$("size").value)
    let overlap = Number(this.$("overlap").value)
    if (overlap >= size) { overlap = size - 10; this.$("overlap").value = overlap }
    const strategy = this.$("strategy").value
    this.$("size-out").textContent = `${size} chars (~${Math.round(size / 4)} tokens)`
    this.$("overlap-out").textContent = `${overlap} chars`

    const chunks = chunkText(text, { size, overlap, strategy })
    const avg = chunks.length ? Math.round(chunks.reduce((s, c) => s + c.text.length, 0) / chunks.length) : 0
    const stored = chunks.reduce((s, c) => s + (c.end - c.start), 0)
    const dup = text.length ? Math.max(0, Math.round((stored / text.length - 1) * 100)) : 0
    this.$("stats").innerHTML = `<strong>${chunks.length}</strong> chunks · average ${avg} chars · ${dup}% of the text is stored twice because of overlap` +
      (strategy === "fixed" ? "" : ` · <em>${strategy} mode keeps whole ${strategy === "sentence" ? "sentences" : "paragraphs"}; overlap repeats only whole ones that fit</em>`)

    // Colour each character by the chunk(s) covering it; overlapping regions get a striped highlight.
    const owners = new Array(text.length).fill(null).map(() => [])
    chunks.forEach((c, i) => { for (let k = c.start; k < c.end; k++) owners[k].push(i) })
    let html = "", i = 0
    while (i < text.length) {
      const key = owners[i].join(",")
      let j = i
      while (j < text.length && owners[j].join(",") === key) j++
      const seg = esc(text.slice(i, j))
      const o = owners[i]
      if (o.length === 0) html += `<span class="lcw-cv-gap">${seg}</span>`
      else if (o.length === 1) html += `<span style="background:${COLORS[o[0] % COLORS.length]}">${seg}</span>`
      else html += `<span class="lcw-cv-overlap" title="In chunks ${o.map(x => x + 1).join(" and ")}">${seg}</span>`
      i = j
    }
    this.$("view").innerHTML = html || "<em>Paste some text above.</em>"
    this.$("list").innerHTML = chunks.slice(0, 50).map((c, n) =>
      `<li><span class="lcw-cv-swatch" style="background:${COLORS[n % COLORS.length]}"></span><strong>Chunk ${n + 1}</strong> · ${c.text.length} chars<div>${esc(c.text)}</div></li>`).join("") +
      (chunks.length > 50 ? `<li>…and ${chunks.length - 50} more</li>` : "")
  }
}
