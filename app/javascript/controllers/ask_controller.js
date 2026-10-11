import { Controller } from "@hotwired/stimulus"

// "Ask CoffeeBean AI" study assistant (app/views/ask/index.html.erb).
// Sends a question (and an optional file) to AskMessagesController, reads the streamed answer
// (Server-Sent Events: chat, delta, done, error) and renders it as safe Markdown.
const esc = s => String(s).replace(/[&<>"']/g, c => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]))

// Small, safe Markdown: everything is escaped first; then code blocks, headings, lists, tables,
// bold, italics, inline code and https links are turned into HTML.
function inline(t) {
  return esc(t)
    .replace(/`([^`]+)`/g, "<code>$1</code>")
    .replace(/\*\*(.+?)\*\*/g, "<strong>$1</strong>")
    .replace(/(^|[^*])\*([^*\s][^*]*?)\*(?!\*)/g, "$1<em>$2</em>")
    .replace(/\[([^\]]+)\]\((https:\/\/[^\s)]+)\)/g, '<a href="$2" target="_blank" rel="noopener noreferrer">$1</a>')
}

function renderMarkdown(text) {
  const lines = String(text).replace(/\r/g, "").split("\n")
  const out = []
  for (let i = 0; i < lines.length; i++) {
    const line = lines[i]
    const fence = line.match(/^\s*```\s*([\w+#.-]*)/)
    if (fence) {
      const code = []
      i++
      while (i < lines.length && !/^\s*```/.test(lines[i])) code.push(lines[i++])
      out.push(`<div class="ask-code"><div class="ask-code-bar"><span>${esc(fence[1] || "code")}</span>` +
               `<button type="button" class="ask-code-copy">Copy</button></div><pre><code>${esc(code.join("\n"))}</code></pre></div>`)
    } else if (/^\s*\|.*\|\s*$/.test(line) && /^\s*\|?\s*:?-{2,}/.test(lines[i + 1] || "")) {
      const cells = l => l.trim().replace(/^\||\|$/g, "").split("|").map(c => c.trim())
      const head = cells(line)
      i += 2
      const rows = []
      while (i < lines.length && /^\s*\|.*\|\s*$/.test(lines[i])) rows.push(cells(lines[i++]))
      i--
      out.push(`<div class="ask-table"><table><thead><tr>${head.map(c => `<th>${inline(c)}</th>`).join("")}</tr></thead>` +
               `<tbody>${rows.map(r => `<tr>${r.map(c => `<td>${inline(c)}</td>`).join("")}</tr>`).join("")}</tbody></table></div>`)
    } else if (/^#{1,6}\s+/.test(line)) {
      out.push(`<h4>${inline(line.replace(/^#{1,6}\s+/, ""))}</h4>`)
    } else if (/^\s*([-*•]|\d+[.)])\s+/.test(line)) {
      const ordered = /^\s*\d+[.)]/.test(line)
      const items = []
      while (i < lines.length && /^\s*([-*•]|\d+[.)])\s+/.test(lines[i])) items.push(lines[i++].replace(/^\s*([-*•]|\d+[.)])\s+/, ""))
      i--
      const tag = ordered ? "ol" : "ul"
      out.push(`<${tag}>${items.map(it => `<li>${inline(it)}</li>`).join("")}</${tag}>`)
    } else if (/^\s*>\s?/.test(line)) {
      out.push(`<blockquote>${inline(line.replace(/^\s*>\s?/, ""))}</blockquote>`)
    } else if (line.trim()) {
      out.push(`<p>${inline(line)}</p>`)
    }
  }
  return out.join("")
}

function sourcesHtml(sources) {
  if (!sources || !sources.length) return ""
  return `<p class="ask-sources-title">Sources from the web</p><ol>` +
    sources.map(s => `<li><a href="${esc(s.uri)}" target="_blank" rel="noopener noreferrer">${esc(s.title || s.uri)}</a></li>`).join("") + "</ol>"
}

// Google asks apps that use Search grounding to show its search suggestions. They are shown as-is,
// inside a sandboxed frame so their HTML and styles cannot touch this page.
function suggestionsFrame(html) {
  const f = document.createElement("iframe")
  f.className = "ask-suggest-frame"
  f.title = "Google Search suggestions"
  f.setAttribute("sandbox", "allow-popups allow-popups-to-escape-sandbox")
  f.srcdoc = `<base target="_blank">${html}`
  return f
}

export default class extends Controller {
  static targets = ["thread", "form", "input", "file", "fileChip", "web", "send", "side", "chatList", "emptyList", "guest"]
  static values = { signedIn: Boolean, chatId: String, url: String, base: String, login: String, signup: String }

  connect() {
    this.guestHistory = []
    this.thread.querySelectorAll(".ask-md[data-md]").forEach(el => { el.innerHTML = renderMarkdown(el.dataset.md) })
    this.thread.querySelectorAll(".ask-sources[data-sources]").forEach(el => { el.innerHTML = sourcesHtml(JSON.parse(el.dataset.sources)) })
    this.thread.querySelectorAll(".ask-suggest[data-html]").forEach(el => el.appendChild(suggestionsFrame(el.dataset.html)))
    this.onCodeCopy = e => {
      const btn = e.target.closest(".ask-code-copy")
      if (btn) this.copy(btn.closest(".ask-code").querySelector("code").textContent, btn)
    }
    this.element.addEventListener("click", this.onCodeCopy)
    this.onDocClick = e => { if (!e.target.closest(".ask-chat-more, .ask-chat-menu")) this.closeMenus() }
    document.addEventListener("click", this.onDocClick)
    this.scrollToEnd()
  }

  disconnect() {
    this.controller?.abort()
    this.element.removeEventListener("click", this.onCodeCopy)
    document.removeEventListener("click", this.onDocClick)
  }

  get thread() { return this.threadTarget }

  // ── Composer ──────────────────────────────────────────────
  keydown(e) {
    if (e.key === "Enter" && !e.shiftKey && !e.isComposing) { e.preventDefault(); this.formTarget.requestSubmit() }
  }

  autosize() {
    const t = this.inputTarget
    t.style.height = "auto"
    t.style.height = Math.min(t.scrollHeight, 220) + "px"
  }

  prefill(e) {
    this.inputTarget.value = e.currentTarget.dataset.prompt
    this.autosize()
    this.inputTarget.focus()
    this.inputTarget.setSelectionRange(this.inputTarget.value.length, this.inputTarget.value.length)
  }

  topic(e) {
    this.prefill(e)
    this.closeSide()
    if (e.currentTarget.dataset.send === "true") this.formTarget.requestSubmit()
  }

  pickFile() {
    const f = this.fileTarget.files[0]
    if (!f) return this.clearFile()
    if (f.size > 7 * 1024 * 1024) { this.clearFile(); return this.flash("Files must be under 7 MB.") }
    this.fileChipTarget.hidden = false
    this.fileChipTarget.innerHTML = `<span>📎 ${esc(f.name)}</span><button type="button" aria-label="Remove file">✕</button>`
    this.fileChipTarget.querySelector("button").addEventListener("click", () => this.clearFile())
  }

  clearFile() {
    this.fileTarget.value = ""
    this.fileChipTarget.hidden = true
    this.fileChipTarget.innerHTML = ""
  }

  // ── Sending and streaming ─────────────────────────────────
  async send(e) {
    e.preventDefault()
    if (this.controller) return this.stop()
    const text = this.inputTarget.value.trim()
    const file = this.fileTarget.files[0]
    if (!text && !file) return this.inputTarget.focus()

    const form = new FormData()
    form.append("text", text)
    if (file) form.append("file", file)
    if (this.webTarget.checked) form.append("web", "1")
    if (this.chatIdValue) form.append("chat_id", this.chatIdValue)
    // Guests have no saved chat, so the page sends the earlier messages itself.
    if (!this.signedInValue) form.append("history", JSON.stringify(this.guestHistory))

    this.element.classList.add("has-thread")
    this.addUserMessage(text, file?.name)
    const answer = this.addAnswer()
    this.inputTarget.value = ""
    this.autosize()
    this.clearFile()
    this.setBusy(true)

    this.controller = new AbortController()
    let raw = ""
    let frame = null
    const paint = () => { frame = null; answer.md.innerHTML = renderMarkdown(raw); this.scrollToEnd(true) }
    try {
      const res = await fetch(this.urlValue, {
        method: "POST", body: form, signal: this.controller.signal,
        headers: { "X-CSRF-Token": document.querySelector("meta[name=csrf-token]")?.content, Accept: "text/event-stream" }
      })
      if (!res.ok || !(res.headers.get("Content-Type") || "").includes("text/event-stream")) {
        const data = await res.json().catch(() => ({}))
        if (res.redirected || res.status === 401) return this.askToLogIn(answer.box, data.error)
        throw new Error(data.error || "Something went wrong. Please try again.")
      }
      await this.readEvents(res, (name, data) => {
        if (name === "chat") this.onChat(data)
        else if (name === "guest") this.guestLeft = data.left
        else if (name === "delta") { raw += data.text; answer.box.classList.remove("is-thinking"); frame ||= requestAnimationFrame(paint) }
        else if (name === "done") {
          if (frame) cancelAnimationFrame(frame)
          paint()
          if (data.sources?.length) { answer.sources.hidden = false; answer.sources.innerHTML = sourcesHtml(data.sources) }
          if (data.suggestions) answer.suggest.appendChild(suggestionsFrame(data.suggestions))
          if (data.cut_off) answer.md.insertAdjacentHTML("beforeend", `<p class="ask-warn">The answer was cut short. Ask "continue" to get the rest.</p>`)
          answer.actions.hidden = false
          if (!this.signedInValue) {
            this.guestHistory.push({ role: "user", text: text || "Please help me understand this file." }, { role: "model", text: raw })
            this.guestNote()
          }
        } else if (name === "error") throw new Error(data.message)
      })
    } catch (err) {
      if (err.name === "AbortError") {
        if (raw) { paint(); answer.actions.hidden = false }
        answer.md.insertAdjacentHTML("beforeend", `<p class="ask-warn">Stopped.</p>`)
      } else {
        if (raw) paint()
        answer.md.insertAdjacentHTML("beforeend", `<p class="ask-error">${esc(err.message)}</p>`)
      }
      answer.box.classList.remove("is-thinking")
    } finally {
      this.controller = null
      this.setBusy(false)
      this.inputTarget.focus()
    }
  }

  stop() { this.controller?.abort() }

  async readEvents(res, onEvent) {
    const reader = res.body.getReader()
    const decoder = new TextDecoder()
    let buffer = ""
    for (;;) {
      const { value, done } = await reader.read()
      if (done) break
      buffer += decoder.decode(value, { stream: true })
      let cut
      while ((cut = buffer.indexOf("\n\n")) >= 0) {
        const block = buffer.slice(0, cut)
        buffer = buffer.slice(cut + 2)
        const name = (block.match(/^event: (.+)$/m) || [])[1]
        const data = (block.match(/^data: (.+)$/m) || [])[1]
        if (name && data) onEvent(name, JSON.parse(data))
      }
    }
  }

  onChat(chat) {
    const isNew = String(chat.id) !== this.chatIdValue
    this.chatIdValue = String(chat.id)
    if (isNew) history.replaceState(history.state, "", chat.url)
    document.title = `${chat.title} — Ask CoffeeBean AI`
    if (!this.hasChatListTarget) return
    let item = this.chatListTarget.querySelector(`[data-chat-id="${chat.id}"]`)
    if (!item) {
      const tpl = this.chatListTarget.querySelector(".ask-chat")
      item = document.createElement("li")
      item.className = "ask-chat"
      item.dataset.chatId = chat.id
      item.innerHTML = `<a class="ask-chat-link" href="${esc(chat.url)}">${this.chatIcon()}<span class="ask-chat-text">` +
        `<span class="ask-chat-title"></span><span class="ask-chat-time">Just now</span></span></a>` +
        (tpl ? tpl.querySelector(".ask-chat-more").outerHTML + tpl.querySelector(".ask-chat-menu").outerHTML : this.menuHtml())
      item.querySelector(".ask-chat-title").textContent = chat.title
      item.querySelector(".ask-chat-menu").hidden = true
    }
    item.querySelector(".ask-chat-time").textContent = "Just now"
    this.chatListTarget.prepend(item)
    this.chatListTarget.querySelectorAll(".ask-chat").forEach(li => li.classList.toggle("is-active", li === item))
    if (this.hasEmptyListTarget) this.emptyListTarget.hidden = true
  }

  chatIcon() {
    return `<svg class="ask-chat-icon" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linejoin="round" aria-hidden="true"><path d="M4 12a8 8 0 1 1 3.3 6.5L4 19.5l1-3.4A7.9 7.9 0 0 1 4 12z"/></svg>`
  }

  menuHtml() {
    return `<button type="button" class="ask-chat-more" aria-label="Options for this chat" aria-haspopup="true" data-action="ask#toggleMenu">` +
      `<svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true"><circle cx="5" cy="12" r="1.8"/><circle cx="12" cy="12" r="1.8"/><circle cx="19" cy="12" r="1.8"/></svg></button>` +
      `<div class="ask-chat-menu" hidden><button type="button" data-action="ask#rename">Rename</button>` +
      `<button type="button" class="is-danger" data-action="ask#remove">Delete</button></div>`
  }

  // ── Messages ──────────────────────────────────────────────
  addUserMessage(text, fileName) {
    const div = document.createElement("div")
    div.className = "ask-msg ask-msg-user"
    div.innerHTML = `<div class="ask-bubble">${fileName ? `<span class="ask-file-tag">📎 ${esc(fileName)}</span>` : ""}` +
      `${text ? `<p>${esc(text).replace(/\n/g, "<br>")}</p>` : ""}</div>`
    this.thread.appendChild(div)
    this.scrollToEnd()
  }

  addAnswer() {
    const div = document.createElement("div")
    div.className = "ask-msg ask-msg-ai"
    const logo = document.querySelector(".nav-logo-icon svg")?.outerHTML || ""
    div.innerHTML = `<div class="ask-avatar">${logo}</div><div class="ask-answer is-thinking">` +
      `<div class="ask-dots" aria-label="Thinking"><span></span><span></span><span></span></div>` +
      `<div class="ask-md"></div><div class="ask-sources" hidden></div><div class="ask-suggest"></div>` +
      `<div class="ask-actions" hidden><button type="button" class="ask-copy" data-action="ask#copyAnswer">Copy</button></div></div>`
    this.thread.appendChild(div)
    this.scrollToEnd()
    const box = div.querySelector(".ask-answer")
    return { box, md: box.querySelector(".ask-md"), sources: box.querySelector(".ask-sources"),
             suggest: box.querySelector(".ask-suggest"), actions: box.querySelector(".ask-actions") }
  }

  copyAnswer(e) {
    this.copy(e.currentTarget.closest(".ask-answer").querySelector(".ask-md").innerText, e.currentTarget)
  }

  async copy(text, btn) {
    try {
      await navigator.clipboard.writeText(text)
      const old = btn.textContent
      btn.textContent = "Copied"
      setTimeout(() => { btn.textContent = old }, 1500)
    } catch { /* clipboard blocked: nothing to do */ }
  }

  setBusy(busy) {
    this.sendTarget.classList.toggle("is-stop", busy)
    this.sendTarget.setAttribute("aria-label", busy ? "Stop" : "Send")
  }

  scrollToEnd(onlyIfNear = false) {
    const t = this.thread
    if (onlyIfNear && t.scrollHeight - t.scrollTop - t.clientHeight > 160) return
    t.scrollTop = t.scrollHeight
  }

  // Guests: how many questions are left before they need to log in.
  guestNote() {
    if (this.guestLeft === undefined || !this.hasGuestTarget) return
    this.guestTarget.innerHTML = this.guestLeft > 0
      ? `You can ask ${this.guestLeft} more question${this.guestLeft === 1 ? "" : "s"} before you log in.`
      : `<a href="${esc(this.loginValue)}">Log in</a> or <a href="${esc(this.signupValue)}">sign up</a> to ask your next question. It does not need a plan.`
  }

  askToLogIn(box, message) {
    const text = message || "Please log in or sign up to keep asking CoffeeBean AI."
    const msg = `<p class="ask-error">${esc(text)}</p><p><a class="btn btn-primary btn-sm" href="${esc(this.loginValue)}">Log in</a> ` +
      `<a class="btn btn-ghost btn-sm" href="${esc(this.signupValue)}">Sign up</a></p>`
    if (box) { box.classList.remove("is-thinking"); box.querySelector(".ask-md").innerHTML = msg; return }
    this.flash(msg, true)
  }

  flash(message, html = false) {
    let note = this.element.querySelector(".ask-flash")
    if (!note) {
      note = document.createElement("div")
      note.className = "ask-flash"
      this.formTarget.before(note)
    }
    note[html ? "innerHTML" : "textContent"] = message
    clearTimeout(this.flashTimer)
    this.flashTimer = setTimeout(() => note.remove(), 6000)
  }

  // ── Chat list ─────────────────────────────────────────────
  newChat() {
    if (this.controller) this.stop()
    window.Turbo ? Turbo.visit(this.baseValue) : (location.href = this.baseValue)
  }

  toggleMenu(e) {
    e.preventDefault()
    e.stopPropagation()
    const menu = e.currentTarget.nextElementSibling
    const open = menu.hidden
    this.closeMenus()
    menu.hidden = !open
  }

  closeMenus() { this.element.querySelectorAll(".ask-chat-menu").forEach(m => { m.hidden = true }) }

  async rename(e) {
    const item = e.currentTarget.closest(".ask-chat")
    this.closeMenus()
    const title = prompt("New name for this chat:", item.querySelector(".ask-chat-title").textContent)
    if (!title || !title.trim()) return
    const res = await this.request(`${this.baseValue}/${item.dataset.chatId}`, "PATCH", { title })
    if (res.ok) item.querySelector(".ask-chat-title").textContent = (await res.json()).title
  }

  async remove(e) {
    const item = e.currentTarget.closest(".ask-chat")
    this.closeMenus()
    if (!confirm("Delete this chat? This cannot be undone.")) return
    const res = await this.request(`${this.baseValue}/${item.dataset.chatId}`, "DELETE")
    if (!res.ok) return
    const wasOpen = item.dataset.chatId === this.chatIdValue
    item.remove()
    if (this.hasEmptyListTarget && !this.chatListTarget.children.length) this.emptyListTarget.hidden = false
    if (wasOpen) this.newChat()
  }

  request(url, method, body) {
    return fetch(url, {
      method,
      headers: { "Content-Type": "application/json", Accept: "application/json", "X-CSRF-Token": document.querySelector("meta[name=csrf-token]")?.content },
      body: body ? JSON.stringify(body) : undefined
    })
  }

  // ── Mobile drawer ─────────────────────────────────────────
  openSide() { this.element.classList.add("side-open") }
  closeSide() { this.element.classList.remove("side-open") }
}
