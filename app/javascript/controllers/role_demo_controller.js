import { Controller } from "@hotwired/stimulus"

// Home page "See AI at work in your job" (home/_role_demo): role tabs, and the AI draft types itself
// out the first time a panel is shown on screen. With reduced motion the draft just appears.
export default class extends Controller {
  static targets = ["tab", "panel", "draft"]

  connect() {
    this.reduced = window.matchMedia("(prefers-reduced-motion: reduce)").matches
    if (this.reduced || !("IntersectionObserver" in window)) return
    this.draftTargets.forEach(d => { d.textContent = "" })
    this.observer = new IntersectionObserver(entries => {
      if (!entries.some(e => e.isIntersecting)) return
      this.observer.disconnect()
      this.seen = true
      this.typeVisible()
    }, { threshold: 0.3 })
    this.observer.observe(this.element)
  }

  disconnect() { this.observer?.disconnect(); clearInterval(this.typer) }

  pick(event) {
    const key = event.currentTarget.dataset.key
    this.tabTargets.forEach(t => { const on = t.dataset.key === key; t.classList.toggle("is-on", on); t.setAttribute("aria-selected", String(on)) })
    this.panelTargets.forEach(p => { p.hidden = p.dataset.key !== key })
    if (this.seen) this.typeVisible()
  }

  typeVisible() {
    const draft = this.draftTargets.find(d => !d.closest("[hidden]"))
    if (!draft || draft.dataset.done) return
    clearInterval(this.typer)
    this.draftTargets.forEach(d => { if (!d.dataset.done) d.textContent = "" })
    const text = draft.dataset.text
    let i = 0
    draft.classList.add("is-typing")
    this.typer = setInterval(() => {
      i += 2
      draft.textContent = text.slice(0, i)
      if (i < text.length) return
      clearInterval(this.typer)
      draft.classList.remove("is-typing")
      draft.dataset.done = "1"
    }, 18)
  }
}
