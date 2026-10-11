import { Controller } from "@hotwired/stimulus"

// Drag-into-buckets activity for lesson bodies.
//   <div class="lcw" data-controller="sorter">
//     <p class="lcw-prompt">Sort each task</p>
//     <div class="lcw-buckets">
//       <div data-sorter-target="bucket" data-bucket="ai" data-label="Good fit for AI"></div>
//       <div data-sorter-target="bucket" data-bucket="you" data-label="Do it yourself"></div>
//     </div>
//     <ul data-sorter-target="pool">
//       <li data-bucket="ai" data-why="Shown after checking if placed wrongly">Write boilerplate</li>
//     </ul>
//   </div>
// Drag a card onto a bucket, or tap/Enter a card and then tap/Enter a bucket.
export default class extends Controller {
  static targets = ["bucket", "pool"]

  connect() {
    if (!this.hasPoolTarget || this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.selected = null

    this.poolTarget.classList.add("lcw-pool")
    this.poolTarget.dataset.label = "Cards to sort"
    this.cards = Array.from(this.poolTarget.children)
    this.cards.forEach(card => this._decorateCard(card))
    this.bucketTargets.forEach(b => this._decorateZone(b, b.dataset.label))
    this._decorateZone(this.poolTarget, null)
    this._buildToolbar()
    this.reset()
  }

  reset() {
    this.cards
      .map(c => [Math.random(), c]).sort((a, b) => a[0] - b[0])
      .forEach(([, c]) => { c.classList.remove("lcw-ok", "lcw-bad"); this.poolTarget.appendChild(c) })
    this.cards.forEach(c => this._setWhy(c, null))
    this._select(null)
    this._feedback("", null)
  }

  check() {
    let right = 0, placed = 0
    this.cards.forEach(card => {
      const zone = card.closest(".lcw-zone")
      if (!zone) { card.classList.remove("lcw-ok", "lcw-bad"); return }
      placed++
      const ok = zone.dataset.bucket === card.dataset.bucket
      if (ok) right++
      card.classList.toggle("lcw-ok", ok)
      card.classList.toggle("lcw-bad", !ok)
      this._setWhy(card, ok ? null : card.dataset.why)
    })
    const total = this.cards.length
    if (right === total) this._feedback(`All ${total} cards are sorted correctly.`, true)
    else if (placed < total) this._feedback(`${right} correct so far. ${total - placed} card(s) still to sort.`, false)
    else this._feedback(`${right} of ${total} correct. Read the notes on the red cards, move them and check again.`, false)
  }

  showAnswer() {
    this.cards.forEach(card => {
      const zone = this.bucketTargets.find(b => b.dataset.bucket === card.dataset.bucket)
      if (zone) zone.querySelector(".lcw-zone-body").appendChild(card)
    })
    this.check()
  }

  // ── Building the UI ─────────────────────────────────────────────
  _decorateCard(card) {
    card.classList.add("lcw-chip")
    card.tabIndex = 0
    card.setAttribute("role", "button")
    card.addEventListener("pointerdown", e => this._startDrag(e, card))
    card.addEventListener("keydown", e => {
      if (e.key === "Enter" || e.key === " ") { e.preventDefault(); this._select(this.selected === card ? null : card) }
    })
  }

  _decorateZone(zone, label) {
    if (zone === this.poolTarget) {
      zone.addEventListener("click", e => { if (e.target === zone && this.selected) this._drop(zone) })
      return
    }
    zone.classList.add("lcw-zone")
    zone.tabIndex = 0
    zone.setAttribute("role", "button")
    zone.setAttribute("aria-label", `Put the selected card in: ${label}`)
    const title = document.createElement("div")
    title.className = "lcw-zone-title"
    title.textContent = label
    const body = document.createElement("div")
    body.className = "lcw-zone-body"
    zone.append(title, body)
    zone.addEventListener("click", e => { if (!e.target.closest(".lcw-chip") && this.selected) this._drop(zone) })
    zone.addEventListener("keydown", e => {
      if ((e.key === "Enter" || e.key === " ") && e.target === zone && this.selected) { e.preventDefault(); this._drop(zone) }
    })
  }

  _buildToolbar() {
    const bar = document.createElement("div")
    bar.className = "lcw-toolbar"
    const btn = (text, cls, fn) => {
      const b = document.createElement("button")
      b.type = "button"; b.className = cls; b.textContent = text
      b.addEventListener("click", fn)
      return b
    }
    bar.append(
      btn("Check", "lcw-btn lcw-btn-primary", () => this.check()),
      btn("Reset", "lcw-btn", () => this.reset()),
      btn("Show answer", "lcw-btn lcw-btn-ghost", () => this.showAnswer())
    )
    this.feedbackEl = document.createElement("div")
    this.feedbackEl.className = "lcw-feedback"
    this.feedbackEl.setAttribute("aria-live", "polite")
    this.element.append(bar, this.feedbackEl)
  }

  // ── Moving cards ────────────────────────────────────────────────
  _select(card) {
    this.cards.forEach(c => c.classList.toggle("lcw-selected", c === card))
    this.selected = card
    this.element.classList.toggle("lcw-has-selection", !!card)
  }

  _drop(zone) {
    const card = this.selected
    if (!card) return
    const target = zone === this.poolTarget ? zone : zone.querySelector(".lcw-zone-body")
    target.appendChild(card)
    card.classList.remove("lcw-ok", "lcw-bad")
    this._setWhy(card, null)
    this._select(null)
    this._feedback("", null)
    card.focus()
  }

  _setWhy(card, text) {
    let note = card.querySelector(".lcw-why")
    if (!text) { note?.remove(); return }
    if (!note) { note = document.createElement("span"); note.className = "lcw-why"; card.appendChild(note) }
    note.textContent = text
  }

  _feedback(msg, ok) {
    this.feedbackEl.textContent = msg
    this.feedbackEl.className = "lcw-feedback" + (ok === null ? "" : ok ? " lcw-feedback-ok" : " lcw-feedback-bad")
  }

  // ── Pointer drag (mouse + touch); a press without movement is a tap-to-select ──
  _startDrag(e, card) {
    if (e.button > 0) return
    const startX = e.clientX, startY = e.clientY
    let dragging = false, ghost = null

    const move = ev => {
      if (!dragging) {
        if (Math.hypot(ev.clientX - startX, ev.clientY - startY) < 6) return
        if (ev.pointerType !== "mouse") return  // touch moves scroll the page; touch users tap instead
        dragging = true
        card.setPointerCapture(ev.pointerId)
        ghost = card.cloneNode(true)
        ghost.classList.add("lcw-ghost")
        ghost.style.width = `${card.offsetWidth}px`
        document.body.appendChild(ghost)
        card.classList.add("lcw-dragging")
      }
      ghost.style.left = `${ev.clientX + 8}px`
      ghost.style.top = `${ev.clientY + 8}px`
      this._hoverZone(ev)
    }
    const cleanup = () => {
      card.removeEventListener("pointermove", move)
      card.removeEventListener("pointerup", up)
      card.removeEventListener("pointercancel", cancel)
    }
    const cancel = () => {
      cleanup()
      if (dragging) { ghost.remove(); card.classList.remove("lcw-dragging"); this._clearHover() }
    }
    const up = ev => {
      cleanup()
      if (!dragging) { this._select(this.selected === card ? null : card); return }
      ghost.remove()
      card.classList.remove("lcw-dragging")
      const zone = this._hoverZone(ev)
      this._clearHover()
      if (zone) { this.selected = card; this._drop(zone) }
    }
    card.addEventListener("pointermove", move)
    card.addEventListener("pointerup", up)
    card.addEventListener("pointercancel", cancel)
  }

  _hoverZone(ev) {
    const el = document.elementFromPoint(ev.clientX, ev.clientY)
    const zone = el && (el.closest(".lcw-zone") || el.closest(".lcw-pool"))
    const mine = zone && this.element.contains(zone) ? zone : null
    this._clearHover()
    mine?.classList.add("lcw-hover")
    return mine
  }

  _clearHover() {
    this.element.querySelectorAll(".lcw-hover").forEach(z => z.classList.remove("lcw-hover"))
  }
}
