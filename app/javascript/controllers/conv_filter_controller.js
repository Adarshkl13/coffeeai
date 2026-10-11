import { Controller } from "@hotwired/stimulus"

// A convolution explorer: pick or edit a 3×3 kernel and see the filtered image. Hover (or tap)
// an output pixel to see its multiply-and-add. Borders use zero padding, so the size stays the same.
//   <div class="lcw" data-controller="conv-filter"></div>
const SIZE = 12
const IMAGE = Array.from({ length: SIZE }, (_, r) => Array.from({ length: SIZE }, (_, c) => {
  if (r >= 2 && r <= 6 && c >= 1 && c <= 5) return 220             // a bright square
  if (r + c === 13 && r >= 2 && r <= 9) return 160                  // a diagonal line
  if (r >= 8 && r <= 10 && c >= 7 && c <= 10) return 90             // a grey block
  return 0                                                          // black background
}))
const KERNELS = {
  Identity: [0, 0, 0, 0, 1, 0, 0, 0, 0],
  Blur: [1 / 9, 1 / 9, 1 / 9, 1 / 9, 1 / 9, 1 / 9, 1 / 9, 1 / 9, 1 / 9],
  Sharpen: [0, -1, 0, -1, 5, -1, 0, -1, 0],
  Edge: [-1, -1, -1, -1, 8, -1, -1, -1, -1],
  "Sobel X": [-1, 0, 1, -2, 0, 2, -1, 0, 1],
  "Sobel Y": [-1, -2, -1, 0, 0, 0, 1, 2, 1]
}
const fmt = v => (Math.abs(v - Math.round(v)) < 1e-9 ? String(Math.round(v)) : v.toFixed(2))

export default class extends Controller {
  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.element.innerHTML = `
      <p class="lcw-prompt">Pick a kernel, or type your own 9 numbers. Hover over or tap a pixel in the output image to see how it was made.</p>
      <div class="lcw-toolbar cf-presets">${Object.keys(KERNELS).map((k, i) => `<button type="button" class="lcw-chip ${i ? "" : "is-on"}" data-k="${k}">${k}</button>`).join("")}</div>
      <div class="cf-row">
        <figure class="cf-fig"><figcaption>Input image</figcaption><div class="cf-grid" data-role="in"></div></figure>
        <figure class="cf-fig"><figcaption>Kernel (3×3)</figcaption><div class="cf-kernel">${Array.from({ length: 9 }, (_, i) => `<input type="number" step="any" aria-label="Kernel value ${i + 1}" data-i="${i}">`).join("")}</div></figure>
        <figure class="cf-fig"><figcaption>Output image</figcaption><div class="cf-grid" data-role="out"></div></figure>
      </div>
      <div class="cf-math" aria-live="polite"></div>
      <p class="lcw-lab-hint">Output values are made positive (absolute value) and kept between 0 and 255 so they can be shown as greys. Pixels outside the image count as 0.</p>`
    this.inputs = [...this.element.querySelectorAll(".cf-kernel input")]
    this.inputs.forEach(i => i.addEventListener("input", () => { this.mark(null); this.render() }))
    this.element.querySelectorAll("[data-k]").forEach(b => b.addEventListener("click", () => this.preset(b.dataset.k)))
    this.element.querySelector('[data-role="in"]').innerHTML = this.cells(IMAGE, "in")
    this.preset("Identity")
  }

  preset(name) {
    KERNELS[name].forEach((v, i) => { this.inputs[i].value = fmt(v) })
    this.mark(name)
    this.render()
  }

  mark(name) { this.element.querySelectorAll("[data-k]").forEach(b => b.classList.toggle("is-on", b.dataset.k === name)) }

  kernel() {
    const k = this.inputs.map(i => Number(i.value) || 0)
    if (this.element.querySelector('[data-k="Blur"].is-on')) return KERNELS.Blur   // exact 1/9, not the rounded text
    return k
  }

  raw(r, c, k) {
    let sum = 0
    for (let dr = -1; dr <= 1; dr++) for (let dc = -1; dc <= 1; dc++) {
      const v = IMAGE[r + dr]?.[c + dc] ?? 0
      sum += v * k[(dr + 1) * 3 + dc + 1]
    }
    return sum
  }

  cells(img, role) {
    return img.map((row, r) => row.map((v, c) =>
      `<span class="cf-px" data-r="${r}" data-c="${c}" style="--g:${v}" title="${role === "in" ? "Input" : "Output"} (${r}, ${c}) = ${v}"${role === "out" ? ' tabindex="0"' : ""}></span>`).join("")).join("")
  }

  render() {
    const k = this.kernel()
    const out = IMAGE.map((row, r) => row.map((_, c) => Math.min(255, Math.round(Math.abs(this.raw(r, c, k))))))
    const grid = this.element.querySelector('[data-role="out"]')
    grid.innerHTML = this.cells(out, "out")
    grid.querySelectorAll(".cf-px").forEach(px => {
      const show = () => this.explain(Number(px.dataset.r), Number(px.dataset.c))
      px.addEventListener("mouseenter", show); px.addEventListener("focus", show); px.addEventListener("click", show)
    })
    this.explain(this.sel?.[0] ?? 4, this.sel?.[1] ?? 2)
  }

  explain(r, c) {
    this.sel = [r, c]
    const k = this.kernel()
    this.element.querySelectorAll(".cf-px").forEach(p => p.classList.remove("is-hot", "is-win"))
    this.element.querySelector(`[data-role="out"] [data-r="${r}"][data-c="${c}"]`)?.classList.add("is-hot")
    const terms = []
    for (let dr = -1; dr <= 1; dr++) for (let dc = -1; dc <= 1; dc++) {
      const v = IMAGE[r + dr]?.[c + dc] ?? 0
      this.element.querySelector(`[data-role="in"] [data-r="${r + dr}"][data-c="${c + dc}"]`)?.classList.add("is-win")
      const w = k[(dr + 1) * 3 + dc + 1]
      if (w !== 0) terms.push(`${v}×${fmt(w)}`)
    }
    const sum = this.raw(r, c, k)
    this.element.querySelector(".cf-math").innerHTML =
      `<strong>Output pixel (row ${r}, column ${c})</strong><br><code>${terms.join(" + ") || "0"} = ${fmt(sum)}</code>` +
      ` → shown as <strong>${Math.min(255, Math.round(Math.abs(sum)))}</strong>`
  }
}
