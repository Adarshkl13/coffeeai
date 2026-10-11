import { Controller } from "@hotwired/stimulus"

// Certificate page: the Print button, and auto-print when opened with ?print=1.
export default class extends Controller {
  static values = { auto: Boolean }

  connect() {
    if (this.autoValue) setTimeout(() => window.print(), 400)
  }

  print() { window.print() }
}
