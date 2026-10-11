import { Controller } from "@hotwired/stimulus"

// Opens a small certificate (app/views/certificates/_thumb.html.erb) full size, and copies its public link.
export default class extends Controller {
  static targets = ["dialog", "copy"]
  static values = { url: String }

  open() { this.dialogTarget.showModal() }
  close() { this.dialogTarget.close() }
  backdrop(e) { if (e.target === this.dialogTarget) this.close() }

  async copy() {
    try {
      await navigator.clipboard.writeText(this.urlValue)
      this.copyTarget.textContent = "Link copied"
    } catch {
      this.copyTarget.textContent = "Copy failed"
    }
    setTimeout(() => { this.copyTarget.textContent = "Copy link" }, 1800)
  }
}
