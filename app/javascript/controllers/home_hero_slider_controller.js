import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["slide", "indicator"]
  static values = { interval: Number }

  connect() {
    this.currentIndex = 0
    this.intervalMs = this.intervalValue || 3000
    this.show(this.currentIndex)
    this.start()
  }

  disconnect() {
    this.stop()
  }

  start() {
    this.stop()
    if (this.slideTargets.length <= 1) return

    this.timer = setInterval(() => {
      this.currentIndex = (this.currentIndex + 1) % this.slideTargets.length
      this.show(this.currentIndex)
    }, this.intervalMs)
  }

  stop() {
    if (this.timer) {
      clearInterval(this.timer)
      this.timer = null
    }
  }

  show(index) {
    this.slideTargets.forEach((slide, slideIndex) => {
      slide.classList.toggle("is-active", slideIndex === index)
    })

    this.indicatorTargets.forEach((indicator, indicatorIndex) => {
      indicator.classList.toggle("is-active", indicatorIndex === index)
    })
  }
}
