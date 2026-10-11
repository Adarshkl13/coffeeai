import { Controller } from "@hotwired/stimulus"

// Pricing page checkout: each plan button creates a Cashfree order (PaymentsController#create) for its
// plan, then opens Cashfree's checkout. Cashfree sends the learner back to /payments/return.
export default class extends Controller {
  static targets = ["phone", "button", "error"]
  static values = { url: String, mode: String }

  async pay(e) {
    const button = e.currentTarget
    const phone = this.phoneTarget.value.replace(/\D/g, "").replace(/^(91|0)(?=\d{10}$)/, "")
    if (!/^[6-9]\d{9}$/.test(phone)) {
      this.phoneTarget.focus()
      this.phoneTarget.scrollIntoView({ block: "center", behavior: "smooth" })
      return this.fail("Enter your 10-digit mobile number first.")
    }
    if (typeof window.Cashfree !== "function") return this.fail("The payment page could not load. Check your internet connection and refresh.")

    this.hideError()
    this.busy(button, true)
    try {
      const res = await fetch(this.urlValue, {
        method: "POST",
        headers: { "Content-Type": "application/json", Accept: "application/json",
                   "X-CSRF-Token": document.querySelector("meta[name=csrf-token]")?.content },
        body: JSON.stringify({ phone, plan: button.dataset.plan })
      })
      const data = await res.json().catch(() => ({}))
      if (!res.ok || !data.payment_session_id) throw new Error(data.error || "Couldn't start the payment. Please try again.")
      const cashfree = window.Cashfree({ mode: this.modeValue })
      await cashfree.checkout({ paymentSessionId: data.payment_session_id, redirectTarget: "_self" })
    } catch (err) {
      this.fail(err.message)
      this.busy(button, false)
    }
  }

  busy(button, on) {
    this.buttonTargets.forEach(b => { b.disabled = on })
    if (on) { button.dataset.label = button.textContent; button.textContent = "Opening secure payment..." }
    else if (button.dataset.label) button.textContent = button.dataset.label
  }

  fail(message) {
    this.errorTarget.hidden = false
    this.errorTarget.textContent = message
  }

  hideError() { this.errorTarget.hidden = true }
}
