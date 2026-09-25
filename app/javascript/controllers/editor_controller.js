import { Controller } from "@hotwired/stimulus"

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
    this.slugWasEdited = false
    this.run()
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
    <script>${js.replace(/<\/script/gi, "<\\/script")}<\/script>
  </body>
</html>`
  }

  queueRun() {
    clearTimeout(this.runTimer)
    this.runTimer = setTimeout(() => this.run(), 450)
  }

  reset() {
    this.htmlTarget.value = this.htmlTarget.dataset.defaultValue || ""
    this.cssTarget.value = this.cssTarget.dataset.defaultValue || ""
    this.jsTarget.value = this.jsTarget.dataset.defaultValue || ""
    this.statusTarget.textContent = ""
    this.uploadInputTarget.value = ""
    this.run()
  }

  syncSlug() {
    if (this.slugWasEdited) return
    this.pageSlugTarget.value = this.slugify(this.pageTitleTarget.value || "my-first-ai-project")
  }

  markSlugEdited() {
    this.slugWasEdited = true
    this.pageSlugTarget.value = this.slugify(this.pageSlugTarget.value)
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
    this.publicLinkTarget.hidden = false
    this.publicLinkTarget.innerHTML = `
      <a href="${this.escapeAttribute(data.public_url)}" target="_blank" rel="noopener">${this.escapeHtml(data.public_url)}</a>
      <button type="button"
              data-action="editor#copyPublicLink"
              data-url="${this.escapeAttribute(data.public_url)}">Copy public link</button>
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

  insertImage(event) {
    const url = event.currentTarget.dataset.url
    if (!url) return

    const tag = `<img src="${url}" alt="Uploaded image">`
    const textarea = this.htmlTarget
    const start = textarea.selectionStart
    const end = textarea.selectionEnd
    const before = textarea.value.slice(0, start)
    const after = textarea.value.slice(end)

    textarea.value = `${before}${tag}${after}`
    textarea.focus()
    textarea.selectionStart = textarea.selectionEnd = start + tag.length
    this.run()
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
      .replace(/-{2,}/g, "-") || "my-first-ai-project"
  }

  get csrfToken() {
    return document.querySelector("meta[name='csrf-token']")?.content || ""
  }
}
