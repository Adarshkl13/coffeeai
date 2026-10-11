import { Controller } from "@hotwired/stimulus"

// Your work is saved in this browser (localStorage) as you type, so a refresh keeps it.
// Reset goes back to the starter page and clears the saved copy.
const DRAFT_KEY = "ai-academy-editor-draft"

// The preview is an iframe built from the code (srcdoc), so a link like href="#about" would load
// the editor page inside the preview. This makes "#section" links scroll inside the preview instead,
// the same way they work on the published page.
const PREVIEW_LINKS = `document.addEventListener("click", function (e) {
  var a = e.target.closest && e.target.closest('a[href^="#"]');
  if (!a) return;
  e.preventDefault();
  var id = decodeURIComponent(a.getAttribute("href").slice(1));
  var el = id ? document.getElementById(id) : null;
  if (el) el.scrollIntoView({ behavior: "smooth", block: "start" });
  else if (!id) window.scrollTo({ top: 0, behavior: "smooth" });
});`

export default class extends Controller {
  static targets = [
    "html",
    "css",
    "js",
    "preview",
    "uploadInput",
    "uploadedList",
    "status",
    "pageTitle",
    "pageSlug",
    "publicToggle",
    "publishStatus",
    "publicLink",
    "publishedId"
  ]

  connect() {
    // Remember when the learner has placed the cursor in the HTML box (used by insertImage).
    this.markCaret = () => { this.htmlCaretSet = true }
    this.htmlTarget.addEventListener("mouseup", this.markCaret)
    this.htmlTarget.addEventListener("keyup", this.markCaret)
    this.slugWasEdited = false
    this.restoreDraft()
    this.run()
  }

  restoreDraft() {
    let draft
    try { draft = JSON.parse(localStorage.getItem(DRAFT_KEY) || "null") } catch { draft = null }
    if (!draft) return
    // An untouched copy of the old shopping-cart starter is not real work: show the new starter instead.
    if (typeof draft.js === "string" && draft.js.includes("cartCount") && typeof draft.html === "string" && draft.html.includes('id="cartCount"')) {
      this.clearDraft()
      return
    }
    if (typeof draft.html === "string") this.htmlTarget.value = draft.html
    if (typeof draft.css === "string") this.cssTarget.value = draft.css
    if (typeof draft.js === "string") this.jsTarget.value = draft.js
    if (draft.title) this.pageTitleTarget.value = draft.title
    if (draft.slug) this.pageSlugTarget.value = draft.slug
    if (draft.slugEdited) this.slugWasEdited = true
    if (draft.publishedId) this.publishedIdTarget.value = draft.publishedId
    if (draft.publicUrl) this.showPublicLink(draft.publicUrl)
    this.statusTarget.textContent = "Your saved work was restored."
  }

  saveDraft() {
    // Only keep a saved copy when the code differs from the starter, so starter updates always show.
    if (this.isStarter()) { this.clearDraft(); return }
    const draft = {
      html: this.htmlTarget.value,
      css: this.cssTarget.value,
      js: this.jsTarget.value,
      title: this.pageTitleTarget.value,
      slug: this.pageSlugTarget.value,
      slugEdited: this.slugWasEdited,
      publishedId: this.publishedIdTarget.value,
      publicUrl: this.publicUrl || null
    }
    try { localStorage.setItem(DRAFT_KEY, JSON.stringify(draft)) } catch {}
  }

  isStarter() {
    return this.htmlTarget.value === (this.htmlTarget.dataset.defaultValue || "") &&
      this.cssTarget.value === (this.cssTarget.dataset.defaultValue || "") &&
      this.jsTarget.value === (this.jsTarget.dataset.defaultValue || "") &&
      this.pageTitleTarget.value === this.pageTitleTarget.defaultValue &&
      this.pageSlugTarget.value === this.pageSlugTarget.defaultValue &&
      !this.publishedIdTarget.value
  }

  clearDraft() {
    try { localStorage.removeItem(DRAFT_KEY) } catch {}
  }

  run() {
    const html = this.htmlTarget.value
    const css = this.cssTarget.value
    const js = this.jsTarget.value

    this.previewTarget.srcdoc = `<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>${css}</style>
  </head>
  <body>
    ${html}
    <script>${PREVIEW_LINKS}<\/script>
    <script>${js.replace(/<\/script/gi, "<\\/script")}<\/script>
  </body>
</html>`
  }

  queueRun() {
    clearTimeout(this.runTimer)
    this.runTimer = setTimeout(() => this.run(), 450)
    this.saveDraft()
  }

  reset() {
    this.htmlTarget.value = this.htmlTarget.dataset.defaultValue || ""
    this.cssTarget.value = this.cssTarget.dataset.defaultValue || ""
    this.jsTarget.value = this.jsTarget.dataset.defaultValue || ""
    this.statusTarget.textContent = ""
    this.uploadInputTarget.value = ""
    this.clearDraft()
    this.saveDraft()
    this.run()
  }

  syncSlug() {
    if (!this.slugWasEdited) this.pageSlugTarget.value = this.slugify(this.pageTitleTarget.value || "my-ice-cream-shop")
    this.saveDraft()
  }

  markSlugEdited() {
    this.slugWasEdited = true
    this.pageSlugTarget.value = this.slugify(this.pageSlugTarget.value)
    this.saveDraft()
  }

  async publish() {
    await this.savePublishedPage("/editor/pages", "POST")
  }

  async updatePublishedPage() {
    const id = this.publishedIdTarget.value
    if (!id) {
      await this.publish()
      return
    }

    await this.savePublishedPage(`/editor/pages/${id}`, "PATCH")
  }

  async savePublishedPage(url, method) {
    this.publishStatusTarget.textContent = method === "POST" ? "Publishing page..." : "Updating published page..."
    this.publishStatusTarget.classList.remove("is-error")

    try {
      const response = await fetch(url, {
        method,
        headers: {
          "Content-Type": "application/json",
          "X-CSRF-Token": this.csrfToken,
          "Accept": "application/json"
        },
        body: JSON.stringify(this.pagePayload())
      })

      const data = await response.json()

      if (!response.ok) {
        throw new Error(data.error || "Could not publish this page.")
      }

      this.handlePublishSuccess(data)
    } catch (error) {
      this.publishStatusTarget.textContent = error.message
      this.publishStatusTarget.classList.add("is-error")
    }
  }

  pagePayload() {
    return {
      page: {
        title: this.pageTitleTarget.value,
        slug: this.pageSlugTarget.value,
        html_content: this.htmlTarget.value,
        css_content: this.cssTarget.value,
        js_content: this.jsTarget.value,
        is_public: this.publicToggleTarget.checked
      }
    }
  }

  handlePublishSuccess(data) {
    this.publishedIdTarget.value = data.id
    this.pageTitleTarget.value = data.title
    this.pageSlugTarget.value = data.slug
    this.slugWasEdited = true

    const visibility = data.is_public ? "Public" : "Private"
    this.publishStatusTarget.textContent = `${data.message}. ${visibility} link is ready.`
    this.publishStatusTarget.classList.remove("is-error")
    this.showPublicLink(data.public_url)
    this.saveDraft()
  }

  showPublicLink(url) {
    this.publicUrl = url
    this.publicLinkTarget.hidden = false
    this.publicLinkTarget.innerHTML = `
      <a href="${this.escapeAttribute(url)}" target="_blank" rel="noopener">${this.escapeHtml(url)}</a>
      <button type="button"
              data-action="editor#copyPublicLink"
              data-url="${this.escapeAttribute(url)}">Copy public link</button>
    `
  }

  async copyPublicLink(event) {
    const button = event.currentTarget
    const url = button.dataset.url
    if (!url) return

    try {
      await navigator.clipboard.writeText(url)
      button.textContent = "Copied"
      setTimeout(() => { button.textContent = "Copy public link" }, 1400)
    } catch (_error) {
      this.publishStatusTarget.textContent = url
    }
  }

  async upload() {
    const file = this.uploadInputTarget.files[0]
    if (!file) return

    this.statusTarget.textContent = "Uploading image..."
    this.statusTarget.classList.remove("is-error")

    const formData = new FormData()
    formData.append("image", file)

    try {
      const response = await fetch("/editor/uploads", {
        method: "POST",
        headers: {
          "X-CSRF-Token": this.csrfToken,
          "Accept": "application/json"
        },
        body: formData
      })

      const data = await response.json()

      if (!response.ok) {
        throw new Error(data.error || "Upload failed.")
      }

      this.statusTarget.textContent = "Image uploaded. Use the URL below in your HTML."
      this.addUploadRow(data)
      this.uploadInputTarget.value = ""
    } catch (error) {
      this.statusTarget.textContent = error.message
      this.statusTarget.classList.add("is-error")
    }
  }

  // Inserts an uploaded image where the learner last clicked or typed in the HTML box. If they have not
  // placed the cursor there yet, it goes just after the first heading (not above the whole page).
  insertImage(event) {
    const url = event.currentTarget.dataset.url
    if (!url) return

    const tag = `\n<img src="${url}" alt="My image" style="max-width: 100%; height: auto;">\n`
    const textarea = this.htmlTarget
    let start = textarea.selectionStart
    let end = textarea.selectionEnd
    if (!this.htmlCaretSet) {
      const h1 = textarea.value.search(/<\/h1>/i)
      start = end = h1 >= 0 ? h1 + "</h1>".length : textarea.value.length
    }
    const before = textarea.value.slice(0, start)
    const after = textarea.value.slice(end)

    textarea.value = `${before}${tag}${after}`
    textarea.focus()
    textarea.selectionStart = textarea.selectionEnd = start + tag.length
    this.htmlCaretSet = true
    this.run()
    this.saveDraft()
  }

  async deleteImage(event) {
    const button = event.currentTarget
    const id = button.dataset.id
    if (!id) return

    button.disabled = true
    this.statusTarget.textContent = "Deleting image..."
    this.statusTarget.classList.remove("is-error")

    try {
      const response = await fetch(`/editor/uploads/${id}`, {
        method: "DELETE",
        headers: {
          "X-CSRF-Token": this.csrfToken,
          "Accept": "application/json"
        }
      })

      const data = await response.json()

      if (!response.ok) {
        throw new Error(data.error || "Delete failed.")
      }

      button.closest(".editor-upload-row")?.remove()
      this.statusTarget.textContent = "Image deleted."
    } catch (error) {
      button.disabled = false
      this.statusTarget.textContent = error.message
      this.statusTarget.classList.add("is-error")
    }
  }

  addUploadRow(data) {
    const row = document.createElement("div")
    row.className = "editor-upload-row"
    row.innerHTML = `
      <img src="${this.escapeAttribute(data.url)}" alt="">
      <div>
        <strong>${this.escapeHtml(data.filename)}</strong>
        <code>${this.escapeHtml(data.url)}</code>
      </div>
      <button type="button" data-action="editor#insertImage" data-url="${this.escapeAttribute(data.url)}">Insert</button>
      <button type="button" class="editor-upload-row__delete" data-action="editor#deleteImage" data-id="${this.escapeAttribute(data.id)}">Delete</button>
    `
    this.uploadedListTarget.prepend(row)
  }

  escapeHtml(value) {
    return String(value).replace(/[&<>"']/g, (char) => ({
      "&": "&amp;",
      "<": "&lt;",
      ">": "&gt;",
      "\"": "&quot;",
      "'": "&#39;"
    }[char]))
  }

  escapeAttribute(value) {
    return this.escapeHtml(value)
  }

  slugify(value) {
    return String(value)
      .toLowerCase()
      .trim()
      .replace(/[^a-z0-9]+/g, "-")
      .replace(/^-+|-+$/g, "")
      .replace(/-{2,}/g, "-") || "my-ice-cream-shop"
  }

  get csrfToken() {
    return document.querySelector("meta[name='csrf-token']")?.content || ""
  }
}
