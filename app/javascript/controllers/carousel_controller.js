import { Controller } from "@hotwired/stimulus"

// Image carousel with a full-size viewer (app/views/home/_infographics.html.erb).
// Moves on by itself every `interval` ms; it pauses while hovered or focused, while the viewer is open,
// when the tab is hidden, and never auto-plays for people who prefer reduced motion.
export default class extends Controller {
  static targets = ["track", "slide", "dot", "caption", "viewer", "viewerImage", "viewerTitle", "viewerCount"]
  static values = { interval: { type: Number, default: 5000 } }

  connect() {
    this.index = 0
    this.held = false
    this.reduced = window.matchMedia("(prefers-reduced-motion: reduce)").matches
    this.onVisibility = () => (document.hidden ? this.stop() : this.start())
    document.addEventListener("visibilitychange", this.onVisibility)
    this.show(0)
    this.start()
  }

  disconnect() {
    this.stop()
    document.removeEventListener("visibilitychange", this.onVisibility)
  }

  // ── Auto-advance ──────────────────────────────────────────
  start() {
    this.stop()
    if (this.reduced || this.held || this.viewerTarget.open || this.slideTargets.length < 2) return
    this.timer = setInterval(() => this.show(this.index + 1), this.intervalValue)
  }

  stop() { clearInterval(this.timer) }
  pause() { this.held = true; this.stop() }
  resume() { this.held = false; this.start() }

  // ── Moving ────────────────────────────────────────────────
  show(i) {
    const n = this.slideTargets.length
    this.index = (i + n) % n
    this.trackTarget.style.transform = `translateX(-${this.index * 100}%)`
    this.slideTargets.forEach((s, k) => s.setAttribute("aria-hidden", String(k !== this.index)))
    this.slideTargets.forEach((s, k) => s.querySelector("button").tabIndex = k === this.index ? 0 : -1)
    this.dotTargets.forEach((d, k) => d.setAttribute("aria-current", String(k === this.index)))
    this.captionTarget.textContent = this.slideTargets[this.index].dataset.title
    if (this.viewerTarget.open) this.fillViewer()
  }

  prev() { this.show(this.index - 1); this.start() }
  next() { this.show(this.index + 1); this.start() }
  goTo(e) { this.show(Number(e.currentTarget.dataset.index)); this.start() }

  // Swipe on touch screens.
  swipeStart(e) { this.swipeX = e.clientX }
  swipeCancel() { this.swipeX = null }
  swipeEnd(e) {
    if (this.swipeX == null) return
    const dx = e.clientX - this.swipeX
    this.swipeX = null
    if (Math.abs(dx) < 40) return
    this.suppressClick = true
    setTimeout(() => { this.suppressClick = false }, 0)
    dx < 0 ? this.next() : this.prev()
  }

  // ── Full-size viewer ──────────────────────────────────────
  open() {
    if (this.suppressClick) return
    this.fillViewer()
    this.viewerTarget.showModal()
    this.stop()
  }

  fillViewer() {
    const slide = this.slideTargets[this.index]
    this.viewerImageTarget.src = slide.dataset.full
    this.viewerImageTarget.alt = `${slide.dataset.title} infographic`
    this.viewerTitleTarget.textContent = slide.dataset.title
    this.viewerCountTarget.textContent = `${this.index + 1} of ${this.slideTargets.length}`
  }

  close() {
    this.viewerTarget.close()
    this.start()
  }

  backdropClose(e) { if (e.target === this.viewerTarget) this.close() }

  viewerKey(e) {
    if (e.key === "ArrowLeft") this.prev()
    if (e.key === "ArrowRight") this.next()
    if (e.key === "Escape") setTimeout(() => this.start(), 0)
  }
}
