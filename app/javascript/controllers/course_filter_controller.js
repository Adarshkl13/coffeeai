import { Controller } from "@hotwired/stimulus"

// Filters a grid of course cards by category tab and search text.
//   <div data-controller="course-filter"> tabs (target "tab", data-category), input (target "search"),
//   cards (target "card", data-category, data-featured, data-search), empty message (target "empty") </div>
// The first tab is "all", or "featured" on the home page (data-course-filter-default-value="featured"),
// which shows only the featured courses. Typing a search looks through every course in the chosen
// category; in the "featured" tab it looks through all courses, so nothing is out of reach.
export default class extends Controller {
  static targets = ["tab", "search", "card", "empty"]
  static values = { default: { type: String, default: "all" } }

  // A link to "#courses-<category>" (home page profession cards) opens that category's tab.
  // The Courses page can open on a category: /courses?category=Healthcare (home page profession cards link here).
  connect() {
    this.category = this.defaultValue
    const wanted = new URLSearchParams(location.search).get("category")
    const tab = wanted && this.tabTargets.find(t => t.dataset.category === wanted)
    if (tab) this.select(tab)
  }

  pick(event) { this.select(event.currentTarget) }

  select(tab) {
    this.category = tab.dataset.category
    this.tabTargets.forEach(t => {
      const on = t === tab
      t.classList.toggle("is-active", on)
      t.setAttribute("aria-selected", String(on))
    })
    this.filter()
  }

  filter() {
    const words = (this.hasSearchTarget ? this.searchTarget.value : "").toLowerCase().trim().split(/\s+/).filter(Boolean)
    let shown = 0
    this.cardTargets.forEach(card => {
      const matches = words.every(w => card.dataset.search.includes(w))
      card.hidden = !(this.inCategory(card, words.length > 0) && matches)
      if (!card.hidden) shown++
    })
    if (this.hasEmptyTarget) this.emptyTarget.hidden = shown > 0
  }

  inCategory(card, searching) {
    if (this.category === "all") return true
    if (this.category === "featured") return searching || card.dataset.featured === "true"
    return card.dataset.category === this.category
  }
}
