import { Controller } from "@hotwired/stimulus"

// Dark / light theme switch for the whole app.
//   <button data-controller="theme" data-action="theme#toggle">…</button>
// The choice is stored in localStorage ("theme") and set as <html data-theme="light|dark">.
// shared/_theme_head.html.erb applies it before paint on full page loads; this controller
// re-applies it after Turbo visits and keeps every switch button's label in sync.
const DARK = "#0a0a1c", LIGHT = "#f7f7fb"

export function storedTheme() {
  try { return localStorage.getItem("theme") === "dark" ? "dark" : "light" } catch { return "light" }   // light unless dark was chosen
}

export function applyTheme(theme) {
  document.documentElement.setAttribute("data-theme", theme)
  document.querySelector('meta[name="theme-color"]')?.setAttribute("content", theme === "light" ? LIGHT : DARK)
  document.querySelectorAll('[data-controller~="theme"]').forEach(btn => {
    const next = theme === "light" ? "dark" : "light"
    btn.setAttribute("aria-pressed", theme === "light" ? "true" : "false")
    btn.setAttribute("aria-label", `Switch to ${next} mode`)
    btn.setAttribute("title", `Switch to ${next} mode`)
  })
}

export default class extends Controller {
  connect() { applyTheme(storedTheme()) }

  toggle() {
    const theme = document.documentElement.getAttribute("data-theme") === "light" ? "dark" : "light"
    try { localStorage.setItem("theme", theme) } catch {}
    applyTheme(theme)
  }
}
