import { Controller } from "@hotwired/stimulus"

// Revision flashcards.
//   <div class="lcw" data-controller="flashcards">
//     <dl>
//       <dt>Front of card</dt><dd>Back of card</dd>
//       ...
//     </dl>
//   </div>
// Click (or Space) flips; "Got it" removes a card from this round, "Again" keeps it in the deck.
export default class extends Controller {
  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    const dl = this.element.querySelector("dl")
    if (!dl) return
    this.cards = Array.from(dl.querySelectorAll("dt")).map(dt => ({
      front: dt.innerHTML,
      back: dt.nextElementSibling?.tagName === "DD" ? dt.nextElementSibling.innerHTML : ""
    }))
    dl.remove()
    this._build()
    this.restart()
  }

  restart() {
    this.deck = this.cards.map((_, i) => i)
    this.known = 0
    this.pos = 0
    this._render()
  }

  shuffle() {
    for (let i = this.deck.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [this.deck[i], this.deck[j]] = [this.deck[j], this.deck[i]]
    }
    this.pos = 0
    this._render()
  }

  flip() {
    if (!this.deck.length) return
    this.cardEl.classList.toggle("lcw-flipped")
    this.cardEl.setAttribute("aria-pressed", this.cardEl.classList.contains("lcw-flipped"))
  }

  next() { if (this.deck.length) { this.pos = (this.pos + 1) % this.deck.length; this._render() } }
  prev() { if (this.deck.length) { this.pos = (this.pos - 1 + this.deck.length) % this.deck.length; this._render() } }

  gotIt() {
    if (!this.deck.length) return
    this.deck.splice(this.pos, 1)
    this.known++
    if (this.pos >= this.deck.length) this.pos = 0
    this._render()
  }

  // ── UI ──────────────────────────────────────────────────────────
  _build() {
    this.cardEl = document.createElement("div")
    this.cardEl.className = "lcw-flash"
    this.cardEl.tabIndex = 0
    this.cardEl.setAttribute("role", "button")
    this.cardEl.setAttribute("aria-label", "Flashcard. Press to flip.")
    this.frontEl = document.createElement("div")
    this.frontEl.className = "lcw-flash-face lcw-flash-front"
    this.backEl = document.createElement("div")
    this.backEl.className = "lcw-flash-face lcw-flash-back"
    this.cardEl.append(this.frontEl, this.backEl)
    this.cardEl.addEventListener("click", () => this.flip())
    this.cardEl.addEventListener("keydown", e => {
      if (e.key === " " || e.key === "Enter") { e.preventDefault(); this.flip() }
      if (e.key === "ArrowRight") this.next()
      if (e.key === "ArrowLeft") this.prev()
    })

    const bar = document.createElement("div")
    bar.className = "lcw-toolbar"
    const btn = (text, cls, fn) => {
      const b = document.createElement("button")
      b.type = "button"; b.className = cls; b.textContent = text
      b.addEventListener("click", fn)
      return b
    }
    this.gotBtn = btn("✓ Got it", "lcw-btn lcw-btn-primary", () => this.gotIt())
    this.againBtn = btn("↻ Again", "lcw-btn", () => this.next())
    bar.append(
      btn("←", "lcw-btn lcw-btn-ghost", () => this.prev()),
      this.gotBtn, this.againBtn,
      btn("→", "lcw-btn lcw-btn-ghost", () => this.next()),
      btn("Shuffle", "lcw-btn lcw-btn-ghost", () => this.shuffle()),
      btn("Restart", "lcw-btn lcw-btn-ghost", () => this.restart())
    )
    this.countEl = document.createElement("div")
    this.countEl.className = "lcw-flash-count"
    this.countEl.setAttribute("aria-live", "polite")
    this.element.append(this.cardEl, bar, this.countEl)
  }

  _render() {
    this.cardEl.classList.remove("lcw-flipped")
    this.cardEl.setAttribute("aria-pressed", "false")
    const total = this.cards.length
    if (!this.deck.length) {
      this.frontEl.innerHTML = `<strong>Deck complete</strong><br>You marked all ${total} cards as known. Press Restart to go again.`
      this.backEl.innerHTML = ""
      this.countEl.textContent = `${total} / ${total} known`
      this.gotBtn.disabled = this.againBtn.disabled = true
      return
    }
    this.gotBtn.disabled = this.againBtn.disabled = false
    const card = this.cards[this.deck[this.pos]]
    this.frontEl.innerHTML = card.front
    this.backEl.innerHTML = card.back
    this.countEl.textContent = `Card ${this.pos + 1} of ${this.deck.length} left · ${this.known} / ${total} known · click the card to flip`
  }
}
