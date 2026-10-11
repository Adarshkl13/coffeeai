import { Controller } from "@hotwired/stimulus"

// Home page "learning path" and "bento" sections: things come alive when they scroll into view.
//   data-controller="showcase" on a section. Targets:
//   step   - path stops, lit one after another (adds .is-on); the line fills as they light up
//   code   - <code> whose data-text is typed out, then output is shown
//   output - hidden until the typing finishes
// With reduced motion, everything is shown at once.
export default class extends Controller {
  static targets = ["step", "code", "output"]

  connect() {
    this.reduced = window.matchMedia("(prefers-reduced-motion: reduce)").matches
    if (this.reduced || !("IntersectionObserver" in window)) return this.showAll()
    this.observer = new IntersectionObserver(entries => {
      if (!entries.some(e => e.isIntersecting)) return
      this.observer.disconnect()
      this.play()
    }, { threshold: 0.15 })
    this.observer.observe(this.element)
  }

  disconnect() {
    this.observer?.disconnect()
    clearTimeout(this.timer); clearInterval(this.typer)
  }

  showAll() {
    this.stepTargets.forEach(s => s.classList.add("is-on"))
    this.element.style.setProperty("--fill", 1)
    this.codeTargets.forEach(c => { c.textContent = c.dataset.text })
    this.outputTargets.forEach(o => o.classList.add("is-on"))
  }

  play() {
    this.stepTargets.forEach((s, i) => setTimeout(() => {
      s.classList.add("is-on")
      this.element.style.setProperty("--fill", (i + 1) / this.stepTargets.length)
    }, 250 + i * 550))
    this.codeTargets.forEach(c => this.type(c))
  }

  type(el) {
    const text = el.dataset.text
    let i = 0
    el.textContent = ""
    el.classList.add("is-typing")
    this.typer = setInterval(() => {
      el.textContent = text.slice(0, ++i)
      if (i < text.length) return
      clearInterval(this.typer)
      el.classList.remove("is-typing")
      this.timer = setTimeout(() => this.outputTargets.forEach(o => o.classList.add("is-on")), 350)
    }, 22)
  }
}
