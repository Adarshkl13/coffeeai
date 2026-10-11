import { Controller } from "@hotwired/stimulus"

// Drag two 2-D vectors and watch cosine similarity, dot product and Euclidean distance change.
//   <div class="lcw" data-controller="vector-plot"></div>
// No model download: pure maths, so learners can see what each metric responds to.
const SIZE = 300, RANGE = 5, SCALE = SIZE / 2 / RANGE

export default class extends Controller {
  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.a = [3, 1]; this.b = [1, 2]; this.normalize = false
    this.element.insertAdjacentHTML("beforeend", `
      <p class="lcw-prompt">Drag the tips of <span style="color:#fbbf24">A</span> and <span style="color:#60a5fa">B</span>.</p>
      <div class="lcw-vp">
        <svg class="lcw-vp-plot" viewBox="0 0 ${SIZE} ${SIZE}" data-role="svg" role="img" aria-label="Two vectors on a grid"></svg>
        <table class="lc-table lcw-vp-table" data-role="table"></table>
      </div>
      <div class="lcw-toolbar">
        <label class="lcw-check"><input type="checkbox" data-role="norm"> Normalise both (unit length)</label>
        <button type="button" class="lcw-btn lcw-btn-ghost" data-preset="[[2,1],[4,2]]">Same direction, different length</button>
        <button type="button" class="lcw-btn lcw-btn-ghost" data-preset="[[3,0],[0,3]]">Perpendicular</button>
        <button type="button" class="lcw-btn lcw-btn-ghost" data-preset="[[3,1],[-3,-1]]">Opposite</button>
        <button type="button" class="lcw-btn lcw-btn-ghost" data-preset="[[1,1],[4,4.5]]">Short vs long</button>
      </div>`)
    this.svg = this.element.querySelector('[data-role="svg"]')
    this.table = this.element.querySelector('[data-role="table"]')
    this.element.querySelector('[data-role="norm"]').addEventListener("change", e => { this.normalize = e.target.checked; this.render() })
    this.element.querySelectorAll("[data-preset]").forEach(btn => btn.addEventListener("click", () => {
      [this.a, this.b] = JSON.parse(btn.dataset.preset); this.render()
    }))
    this.svg.addEventListener("pointerdown", e => this.startDrag(e))
    this.render()
  }

  toScreen([x, y]) { return [SIZE / 2 + x * SCALE, SIZE / 2 - y * SCALE] }
  fromEvent(e) {
    const r = this.svg.getBoundingClientRect()
    const px = (e.clientX - r.left) * SIZE / r.width, py = (e.clientY - r.top) * SIZE / r.height
    const clamp = v => Math.max(-RANGE, Math.min(RANGE, Math.round(v * 2) / 2))
    return [clamp((px - SIZE / 2) / SCALE), clamp((SIZE / 2 - py) / SCALE)]
  }

  startDrag(e) {
    const p = this.fromEvent(e)
    const d = v => Math.hypot(v[0] - p[0], v[1] - p[1])
    const which = d(this.shown(this.a)) <= d(this.shown(this.b)) ? "a" : "b"
    if (Math.min(d(this.shown(this.a)), d(this.shown(this.b))) > 1.2) return
    e.preventDefault()
    this.svg.setPointerCapture(e.pointerId)
    if (this.normalize) { this.normalize = false; this.element.querySelector('[data-role="norm"]').checked = false }
    const move = ev => {
      const q = this.fromEvent(ev)
      if (q[0] === 0 && q[1] === 0) return
      this[which] = q; this.render()
    }
    const up = () => { this.svg.removeEventListener("pointermove", move); this.svg.removeEventListener("pointerup", up) }
    this.svg.addEventListener("pointermove", move)
    this.svg.addEventListener("pointerup", up)
  }

  shown(v) {
    if (!this.normalize) return v
    const n = Math.hypot(...v)
    return [v[0] / n, v[1] / n]
  }

  render() {
    const a = this.shown(this.a), b = this.shown(this.b)
    const dot = a[0] * b[0] + a[1] * b[1]
    const na = Math.hypot(...a), nb = Math.hypot(...b)
    const cos = dot / (na * nb)
    const dist = Math.hypot(a[0] - b[0], a[1] - b[1])
    const deg = Math.round(Math.acos(Math.max(-1, Math.min(1, cos))) * 180 / Math.PI)

    const grid = []
    for (let i = -RANGE; i <= RANGE; i++) {
      const [x] = this.toScreen([i, 0]), [, y] = this.toScreen([0, i])
      grid.push(`<line x1="${x}" y1="0" x2="${x}" y2="${SIZE}" stroke="${i ? "#1f1f44" : "#4b4a78"}"/>`,
                `<line x1="0" y1="${y}" x2="${SIZE}" y2="${y}" stroke="${i ? "#1f1f44" : "#4b4a78"}"/>`)
    }
    const [ox, oy] = this.toScreen([0, 0]), [ax, ay] = this.toScreen(a), [bx, by] = this.toScreen(b)
    const unit = this.normalize ? `<circle cx="${ox}" cy="${oy}" r="${SCALE}" fill="none" stroke="#6b6988" stroke-dasharray="3 3"/>` : ""
    this.svg.innerHTML = `${grid.join("")}${unit}
      <line x1="${ax}" y1="${ay}" x2="${bx}" y2="${by}" stroke="#ef4444" stroke-dasharray="4 3"/>
      <line x1="${ox}" y1="${oy}" x2="${ax}" y2="${ay}" stroke="#fbbf24" stroke-width="3"/>
      <line x1="${ox}" y1="${oy}" x2="${bx}" y2="${by}" stroke="#60a5fa" stroke-width="3"/>
      <circle cx="${ax}" cy="${ay}" r="8" fill="#fbbf24" class="lcw-vp-handle"/>
      <circle cx="${bx}" cy="${by}" r="8" fill="#60a5fa" class="lcw-vp-handle"/>
      <text x="${ax + 10}" y="${ay - 8}" fill="#fcd34d" font-size="13">A</text>
      <text x="${bx + 10}" y="${by - 8}" fill="#93c5fd" font-size="13">B</text>`
    const f = x => (Math.round(x * 100) / 100).toFixed(2)
    this.table.innerHTML = `
      <tr><td>A</td><td>[${f(a[0])}, ${f(a[1])}] · length ${f(na)}</td></tr>
      <tr><td>B</td><td>[${f(b[0])}, ${f(b[1])}] · length ${f(nb)}</td></tr>
      <tr><td><strong>Cosine</strong></td><td>${f(cos)} <small>(angle ${deg}°) · ignores length</small></td></tr>
      <tr><td><strong>Dot product</strong></td><td>${f(dot)} <small>· angle and length</small></td></tr>
      <tr><td><strong>Euclidean</strong></td><td>${f(dist)} <small>· straight-line gap (red); lower = closer</small></td></tr>`
  }
}
