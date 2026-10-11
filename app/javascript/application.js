// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Keep the saved dark/light theme when Turbo swaps pages.
document.addEventListener("turbo:before-render", () => {
  let theme = "dark"
  try { theme = localStorage.getItem("theme") === "light" ? "light" : "dark" } catch {}
  document.documentElement.setAttribute("data-theme", theme)
})
