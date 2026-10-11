// Small helpers for drawing vectors in lesson widgets.

const esc = (s) => String(s).replace(/[&<>"']/g, c => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]))
export { esc }

// A 384-cell (or any length) strip: blue for negative values, orange for positive.
export function heatStrip(vec, { height = 18, label = "" } = {}) {
  const max = Math.max(...vec.map(Math.abs)) || 1
  const w = vec.length
  const cells = vec.map((v, i) => {
    const t = Math.min(1, Math.abs(v) / max)
    const color = v >= 0 ? `rgba(245,158,11,${0.1 + 0.9 * t})` : `rgba(59,130,246,${0.1 + 0.9 * t})`
    return `<rect x="${i}" y="0" width="1.05" height="${height}" fill="${color}"/>`
  }).join("")
  return `<svg class="lcw-heat" viewBox="0 0 ${w} ${height}" preserveAspectRatio="none" role="img" aria-label="${esc(label || `${w} numbers`)}">${cells}</svg>`
}

export const fmt = (x, d = 3) => (Math.round(x * 10 ** d) / 10 ** d).toFixed(d)

export function head(vec, n = 6) {
  return "[" + vec.slice(0, n).map(x => fmt(x, 3)).join(", ") + `, … ${vec.length - n} more]`
}

// Status line bound to the embedder's loading events.
export function statusLine(el, s) {
  el.textContent = s.status === "loading" && s.progress ? `${s.message} ${s.progress}%` : s.message
  el.className = `lcw-model-status lcw-model-${s.status}`
}
