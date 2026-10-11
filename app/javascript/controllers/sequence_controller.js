import { Controller } from "@hotwired/stimulus"

// Drag-to-order activity for lesson bodies.
//   <div class="lcw" data-controller="sequence">
//     <p class="lcw-prompt">Put the steps in order</p>
//     <ol data-sequence-target="list">
//       <li data-order="1">Plan</li> <li data-order="2">Generate</li> ...
//     </ol>
//   </div>
// Items are shuffled on connect. Pointer drag works for mouse and touch; ↑/↓ buttons cover keyboards.
export default class extends Controller {
  static targets = ["list"]

  connect() {
    if (!this.hasListTarget || this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.items.forEach(li => this._decorate(li))
    this._buildToolbar()
    this.shuffle()
  }

  get items() {
    return Array.from(this.listTarget.children)
  }

  shuffle() {
    const items = this.items
    let order
    do {
      order = items.map(i => [Math.random(), i]).sort((a, b) => a[0] - b[0]).map(p => p[1])
    } while (items.length > 1 && order.every((li, i) => Number(li.dataset.order) === i + 1))
    order.forEach(li => this.listTarget.appendChild(li))
    this._clearMarks()
  }

  check() {
    const items = this.items
    let right = 0
    items.forEach((li, i) => {
      const ok = Number(li.dataset.order) === i + 1
      if (ok) right++
      li.classList.toggle("lcw-ok", ok)
      li.classList.toggle("lcw-bad", !ok)
    })
    if (right === items.length) {
      this._feedback(`All ${items.length} steps are in the right order.`, true)
    } else {
      this._feedback(`${right} of ${items.length} are in the right place. Items in red are in the wrong position. Move them and check again.`, false)
    }
  }

  showAnswer() {
    this.items.sort((a, b) => a.dataset.order - b.dataset.order).forEach(li => this.listTarget.appendChild(li))
    this.check()
  }

  // ── Building the UI ─────────────────────────────────────────────
  _decorate(li) {
    const label = document.createElement("span")
    label.className = "lcw-seq-text"
    while (li.firstChild) label.appendChild(li.firstChild)

    const handle = document.createElement("span")
    handle.className = "lcw-handle"
    handle.setAttribute("aria-hidden", "true")
    handle.textContent = "⋮⋮"

    const moves = document.createElement("span")
    moves.className = "lcw-moves"
    moves.append(this._moveBtn("↑", "Move up", -1, li), this._moveBtn("↓", "Move down", 1, li))

    li.append(handle, label, moves)
    li.classList.add("lcw-seq-item")
    li.addEventListener("pointerdown", e => this._startDrag(e, li))
  }

  _moveBtn(text, title, dir, li) {
    const b = document.createElement("button")
    b.type = "button"
    b.className = "lcw-move"
    b.textContent = text
    b.title = title
    b.setAttribute("aria-label", title)
    b.addEventListener("click", () => {
      const sib = dir < 0 ? li.previousElementSibling : li.nextElementSibling
      if (!sib) return
      dir < 0 ? this.listTarget.insertBefore(li, sib) : this.listTarget.insertBefore(sib, li)
      this._clearMarks()
      b.focus()
    })
    return b
  }

  _buildToolbar() {
    const bar = document.createElement("div")
    bar.className = "lcw-toolbar"
    bar.append(
      this._button("Check order", "lcw-btn lcw-btn-primary", () => this.check()),
      this._button("Shuffle", "lcw-btn", () => this.shuffle()),
      this._button("Show answer", "lcw-btn lcw-btn-ghost", () => this.showAnswer())
    )
    this.feedbackEl = document.createElement("div")
    this.feedbackEl.className = "lcw-feedback"
    this.feedbackEl.setAttribute("aria-live", "polite")
    this.element.append(bar, this.feedbackEl)
  }

  _button(text, cls, fn) {
    const b = document.createElement("button")
    b.type = "button"
    b.className = cls
    b.textContent = text
    b.addEventListener("click", fn)
    return b
  }

  _feedback(msg, ok) {
    this.feedbackEl.textContent = msg
    this.feedbackEl.className = `lcw-feedback ${ok ? "lcw-feedback-ok" : "lcw-feedback-bad"}`
  }

  _clearMarks() {
    this.items.forEach(li => li.classList.remove("lcw-ok", "lcw-bad"))
    if (this.feedbackEl) { this.feedbackEl.textContent = ""; this.feedbackEl.className = "lcw-feedback" }
  }

  // ── Pointer drag (mouse + touch) ────────────────────────────────
  _startDrag(e, li) {
    if (e.target.closest("button") || e.button > 0) return
    // On touch screens only the handle drags, so the rest of the item still scrolls the page
    if (e.pointerType !== "mouse" && !e.target.closest(".lcw-handle")) return
    e.preventDefault()
    li.setPointerCapture(e.pointerId)
    li.classList.add("lcw-dragging")
    this._clearMarks()

    const move = ev => {
      const over = document.elementFromPoint(ev.clientX, ev.clientY)?.closest(".lcw-seq-item")
      if (!over || over === li || over.parentElement !== this.listTarget) return
      const rect = over.getBoundingClientRect()
      const after = ev.clientY > rect.top + rect.height / 2
      this.listTarget.insertBefore(li, after ? over.nextElementSibling : over)
    }
    const end = () => {
      li.classList.remove("lcw-dragging")
      li.removeEventListener("pointermove", move)
      li.removeEventListener("pointerup", end)
      li.removeEventListener("pointercancel", end)
    }
    li.addEventListener("pointermove", move)
    li.addEventListener("pointerup", end)
    li.addEventListener("pointercancel", end)
  }
}
