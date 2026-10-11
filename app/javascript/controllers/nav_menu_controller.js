import { Controller } from "@hotwired/stimulus"

// Opens and closes the site navbar's link list on small screens.
export default class extends Controller {
  static targets = ["menu", "button"]

  toggle() {
    const open = !this.element.classList.contains("is-open")
    this.element.classList.toggle("is-open", open)
    this.buttonTarget.setAttribute("aria-expanded", String(open))
    this.buttonTarget.setAttribute("aria-label", open ? "Close menu" : "Open menu")
  }

  // Close when a link is chosen, or when Escape is pressed.
  connect() {
    this.onKey = (e) => { if (e.key === "Escape" && this.element.classList.contains("is-open")) this.toggle() }
    document.addEventListener("keydown", this.onKey)
    this.menuTarget.addEventListener("click", (e) => { if (e.target.closest("a") && this.element.classList.contains("is-open")) this.toggle() })
  }

  disconnect() { document.removeEventListener("keydown", this.onKey) }
}
