import { Controller } from "@hotwired/stimulus"

// Home page "AI Podcast" player (app/views/home/_podcast.html.erb): one audio overview in six languages.
// The chosen language is remembered in this browser.
const STORE_KEY = "podcastLang"
const SPEEDS = [1, 1.25, 1.5, 0.75]
const fmt = s => {
  s = Math.max(0, Math.floor(s || 0))
  return `${Math.floor(s / 60)}:${String(s % 60).padStart(2, "0")}`
}

export default class extends Controller {
  static targets = ["audio", "lang", "langName", "play", "seek", "current", "duration", "speed", "error"]
  static values = { languages: Array, title: { type: String, default: "AI Basics" }, remember: { type: Boolean, default: true } }

  connect() {
    this.speedIndex = 0
    this.setLanguage(this.startLanguage(), false)
  }

  disconnect() {
    this.audioTarget.pause()
  }

  // Saved choice first, then the browser's language, then English.
  startLanguage() {
    const codes = this.languagesValue.map(l => l.code)
    let saved = null
    try { saved = localStorage.getItem(STORE_KEY) || localStorage.getItem("broadcastLang") } catch { /* storage blocked */ }
    if (codes.includes(saved)) return saved
    const browser = (navigator.languages || [navigator.language]).map(l => String(l).slice(0, 2).toLowerCase())
    return browser.find(c => codes.includes(c)) || "en"
  }

  setLanguage(code, autoplay) {
    const lang = this.languagesValue.find(l => l.code === code) || this.languagesValue[0]
    this.lang = lang
    this.errorTarget.hidden = true
    this.audioTarget.src = lang.src
    this.audioTarget.playbackRate = SPEEDS[this.speedIndex]
    this.langTargets.forEach(b => b.setAttribute("aria-pressed", String(b.dataset.code === lang.code)))
    this.langNameTarget.textContent = lang.name
    this.seekTarget.max = lang.seconds
    this.seekTarget.value = 0
    this.currentTarget.textContent = "0:00"
    this.durationTarget.textContent = fmt(lang.seconds)
    this.paintProgress()
    if (autoplay) this.audioTarget.play().catch(() => {})
  }

  pickLanguage(e) {
    const code = e.currentTarget.dataset.code
    if (code === this.lang?.code) return
    const wasPlaying = !this.audioTarget.paused
    try { localStorage.setItem(STORE_KEY, code) } catch { /* storage blocked */ }
    this.setLanguage(code, wasPlaying)
  }

  // ── Playback ──────────────────────────────────────────────
  toggle() {
    const a = this.audioTarget
    if (a.paused) a.play().catch(() => this.failed())
    else a.pause()
  }

  playing() {
    this.element.classList.add("is-playing")
    this.playTarget.setAttribute("aria-label", "Pause")
    if ("mediaSession" in navigator) {
      navigator.mediaSession.metadata = new MediaMetadata({ title: this.titleValue, artist: `CoffeeBean AI · ${this.lang.name}`,
                                                            album: "CoffeeBean AI Podcast", artwork: [{ src: "/icon.png", sizes: "512x512", type: "image/png" }] })
      navigator.mediaSession.setActionHandler("seekbackward", () => this.back())
      navigator.mediaSession.setActionHandler("seekforward", () => this.forward())
    }
  }

  paused() {
    this.element.classList.remove("is-playing")
    this.playTarget.setAttribute("aria-label", "Play")
  }

  ended() {
    this.paused()
    this.audioTarget.currentTime = 0
  }

  loaded() {
    const d = this.audioTarget.duration
    if (Number.isFinite(d)) { this.seekTarget.max = d; this.durationTarget.textContent = fmt(d) }
  }

  tick() {
    if (this.dragging) return
    this.seekTarget.value = this.audioTarget.currentTime
    this.currentTarget.textContent = fmt(this.audioTarget.currentTime)
    this.paintProgress()
  }

  seek() {
    this.audioTarget.currentTime = Number(this.seekTarget.value)
    this.currentTarget.textContent = fmt(this.seekTarget.value)
    this.paintProgress()
  }

  back() { this.audioTarget.currentTime = Math.max(0, this.audioTarget.currentTime - 10) }
  forward() { this.audioTarget.currentTime = Math.min(this.audioTarget.duration || Infinity, this.audioTarget.currentTime + 10) }

  cycleSpeed() {
    this.speedIndex = (this.speedIndex + 1) % SPEEDS.length
    this.audioTarget.playbackRate = SPEEDS[this.speedIndex]
    this.speedTarget.textContent = `${SPEEDS[this.speedIndex]}×`
  }

  failed() {
    this.paused()
    this.errorTarget.hidden = false
  }

  paintProgress() {
    const max = Number(this.seekTarget.max) || 1
    this.seekTarget.style.setProperty("--pct", `${(Number(this.seekTarget.value) / max) * 100}%`)
  }
}
