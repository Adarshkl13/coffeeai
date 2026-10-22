// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Keep the saved dark/light theme when Turbo swaps pages.
document.addEventListener("turbo:before-render", () => {
  let theme = "light"   // light unless dark was chosen
  try { theme = localStorage.getItem("theme") === "dark" ? "dark" : "light" } catch {}
  document.documentElement.setAttribute("data-theme", theme)
})
