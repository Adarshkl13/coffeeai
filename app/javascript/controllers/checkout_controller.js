import { Controller } from "@hotwired/stimulus"

// Pricing page checkout: each plan button asks PaymentsController#create for a signed PayU form, then posts
// it to PayU's payment page. PayU sends the learner back to /payments/payu/return, then to /payments/return.
export default class extends Controller {
  static targets = ["phone", "button", "error"]
  static values = { url: String }

  async pay(e) {
    const button = e.currentTarget
    const phone = this.phoneTarget.value.replace(/\D/g, "").replace(/^(91|0)(?=\d{10}$)/, "")
    if (!/^[6-9]\d{9}$/.test(phone)) {
      this.phoneTarget.focus()
      this.phoneTarget.scrollIntoView({ block: "center", behavior: "smooth" })
      return this.fail("Enter your 10-digit mobile number first.")
    }

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
      if (!res.ok || !data.action || !data.fields) throw new Error(data.error || "Couldn't start the payment. Please try again.")
      this.postToPayu(data.action, data.fields)
    } catch (err) {
      this.fail(err.message)
      this.busy(button, false)
    }
  }

  // A normal form post (not fetch), so the whole page moves to PayU's secure payment page.
  postToPayu(action, fields) {
    if (!/^https:\/\/(test|secure)\.payu\.in\//.test(action)) throw new Error("Couldn't start the payment. Please try again.")
    const form = document.createElement("form")
    form.method = "POST"
    form.action = action
    form.hidden = true
    Object.entries(fields).forEach(([name, value]) => {
      const input = document.createElement("input")
      input.type = "hidden"
      input.name = name
      input.value = value
      form.appendChild(input)
    })
    document.body.appendChild(form)
    form.submit()
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
