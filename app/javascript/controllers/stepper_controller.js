import { Controller } from "@hotwired/stimulus"

// Step-through timeline: reveals one step per click (an AI coding session, an agent run, a pipeline).
//   <div class="lcw" data-controller="stepper">
//     <ol data-stepper-target="steps">
//       <li data-kind="user" data-label="You">Add a --verbose flag</li>
//       <li data-kind="thought" data-label="Plan">...</li>
//       <li data-kind="tool" data-label="Tool call · run_tests">...</li>
//       <li data-kind="result" data-label="Tool result">...</li>
//       <li data-kind="answer" data-label="Answer">...</li>
//     </ol>
//   </div>
// Kinds: user, thought, tool, result, answer, check, warn (each gets its own colour).
export default class extends Controller {
  static targets = ["steps"]

  connect() {
    if (!this.hasStepsTarget || this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.stepsTarget.classList.add("lcw-timeline")
    this.steps = Array.from(this.stepsTarget.children)
    this.steps.forEach(li => {
      li.classList.add("lcw-step", `lcw-step-${li.dataset.kind || "thought"}`)
      if (li.dataset.label) {
        const tag = document.createElement("span")
        tag.className = "lcw-step-label"
        tag.textContent = li.dataset.label
        li.prepend(tag)
      }
    })
    this._build()
    this.reset()
  }

  next() {
    if (this.shown >= this.steps.length) return
    const li = this.steps[this.shown++]
    li.hidden = false
    li.classList.add("lcw-step-new")
    setTimeout(() => li.classList.remove("lcw-step-new"), 600)
    this._update()
  }

  all() {
    while (this.shown < this.steps.length) this.steps[this.shown++].hidden = false
    this._update()
  }

  reset() {
    this.shown = 0
    this.steps.forEach(li => { li.hidden = true })
    this.next()
  }

  _build() {
    const bar = document.createElement("div")
    bar.className = "lcw-toolbar"
    const btn = (text, cls, fn) => {
      const b = document.createElement("button")
      b.type = "button"; b.className = cls; b.textContent = text
      b.addEventListener("click", fn)
      return b
    }
    this.nextBtn = btn("Next step ▶", "lcw-btn lcw-btn-primary", () => this.next())
    this.allBtn = btn("Show all", "lcw-btn lcw-btn-ghost", () => this.all())
    this.countEl = document.createElement("span")
    this.countEl.className = "lcw-quiz-progress"
    this.countEl.setAttribute("aria-live", "polite")
    bar.append(this.nextBtn, btn("Restart", "lcw-btn", () => this.reset()), this.allBtn, this.countEl)
    this.element.appendChild(bar)
  }

  _update() {
    const done = this.shown >= this.steps.length
    this.nextBtn.disabled = done
    this.allBtn.disabled = done
    this.countEl.textContent = `Step ${this.shown} of ${this.steps.length}`
  }
}
