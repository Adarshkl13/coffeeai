import { Controller } from "@hotwired/stimulus"
import { embed, onStatus } from "lib/embedder"
import { chunkText, STRATEGIES } from "lib/chunker"
import { statusLine, esc, fmt } from "lib/vecviz"

// The RAG Lab: upload documents, chunk and embed them in the browser, store the chunks in the
// learner's own Qdrant collection, then ask questions and see the answer, citations, retrieved
// chunks and the exact prompt. Server side: /labs/rag (RagLabController).
//   <div class="lcw lcw-lab" data-controller="rag-lab"
//        data-rag-lab-samples-value='[{"name": "handbook.md", "text": "..."}]'></div>
const MAX_FILE_BYTES = 50_000

export default class extends Controller {
  static values = { samples: Array }

  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.element.innerHTML = `
      <div class="lcw-lab-head"><strong>💬 RAG Lab</strong><span class="lcw-lab-usage" data-role="usage"></span></div>
      <div class="lcw-model-status" data-role="status" aria-live="polite">Connecting to your lab…</div>
      <div class="lcw-lab-hint" data-role="gen"></div>
      <div class="lcw-feedback" data-role="error" aria-live="assertive"></div>

      <h4 class="lcw-lab-h">1 · Add a document</h4>
      <div class="lcw-rag-add">
        <div class="lcw-toolbar">
          <label class="lcw-btn lcw-file">Upload .txt / .md<input type="file" accept=".txt,.md,text/plain,text/markdown" data-role="file" hidden></label>
          ${this.samplesValue.length ? `<button type="button" class="lcw-btn" data-role="samples">Load ${this.samplesValue.length} sample documents</button>` : ""}
        </div>
        <input class="lcw-input" data-role="name" maxlength="100" placeholder="Document name, e.g. refund-policy.md">
        <textarea class="lcw-input" data-role="text" rows="5" placeholder="…or paste text here (up to about 50,000 characters)"></textarea>
        <div class="lcw-cv-controls">
          <label>Strategy <select class="lcw-input" data-role="strategy">${Object.entries(STRATEGIES).map(([k, v]) =>
            `<option value="${k}" ${k === "sentence" ? "selected" : ""}>${v}</option>`).join("")}</select></label>
          <label>Chunk size <input type="range" data-role="size" min="100" max="1500" step="50" value="300"> <output data-role="size-out"></output></label>
          <label>Overlap <input type="range" data-role="overlap" min="0" max="300" step="10" value="50"> <output data-role="overlap-out"></output></label>
        </div>
        <div class="lcw-toolbar">
          <button type="button" class="lcw-btn lcw-btn-primary" data-role="add">Chunk, embed &amp; add</button>
          <span class="lcw-lab-hint" data-role="preview"></span>
        </div>
      </div>

      <h4 class="lcw-lab-h">2 · Your documents</h4>
      <ul class="lcw-lab-points" data-role="docs"></ul>

      <h4 class="lcw-lab-h">3 · Ask a question</h4>
      <div class="lcw-sc-query">
        <input class="lcw-input" data-role="question" maxlength="500" placeholder="e.g. Can I get a refund after a week?">
        <button type="button" class="lcw-btn lcw-btn-primary" data-role="ask">Ask</button>
      </div>
      <div class="lcw-cv-controls">
        <label>top-k <select class="lcw-input" data-role="k">${[1, 2, 3, 4, 5, 8].map(k => `<option ${k === 4 ? "selected" : ""}>${k}</option>`).join("")}</select></label>
        <label>Score threshold <input type="range" data-role="threshold" min="0" max="0.8" step="0.05" value="0.25"> <output data-role="threshold-out"></output></label>
      </div>
      <div class="lcw-rag-result" data-role="result"></div>

      <div class="lcw-toolbar lcw-lab-foot">
        <button type="button" class="lcw-btn lcw-btn-danger" data-role="reset">Reset lab</button>
        <span class="lcw-lab-hint" data-role="hint"></span>
      </div>`
    this.$ = (r) => this.element.querySelector(`[data-role="${r}"]`)
    ;["size", "overlap", "strategy", "text"].forEach(r => this.$(r).addEventListener("input", () => this.preview()))
    this.$("threshold").addEventListener("input", () => { this.$("threshold-out").textContent = this.$("threshold").value })
    this.$("threshold-out").textContent = this.$("threshold").value
    this.$("file").addEventListener("change", e => this.loadFile(e.target.files[0]))
    this.$("add").addEventListener("click", () => this.addDocument())
    this.$("samples")?.addEventListener("click", () => this.addSamples())
    this.$("ask").addEventListener("click", () => this.ask())
    this.$("question").addEventListener("keydown", e => { if (e.key === "Enter") this.ask() })
    this.$("reset").addEventListener("click", () => this.reset())
    this.off = onStatus(s => statusLine(this.$("status"), s))
    this.preview()
    this.refresh()
  }

  disconnect() { this.off?.() }

  // ── Server calls ────────────────────────────────────────────────
  async api(method, path, body) {
    const token = document.querySelector('meta[name="csrf-token"]')?.content
    const res = await fetch(`/labs/rag${path}`, {
      method, credentials: "same-origin", body: body ? JSON.stringify(body) : undefined,
      headers: { "Content-Type": "application/json", "Accept": "application/json", "X-CSRF-Token": token }
    })
    const data = await res.json().catch(() => ({}))
    if (!res.ok) throw new Error(data.error || `Request failed (${res.status})`)
    this.error("")
    return data
  }

  async run(fn) {
    this.element.classList.add("lcw-busy")
    try { return await fn() } catch (e) { this.error(e.message) } finally { this.element.classList.remove("lcw-busy") }
  }

  error(msg) {
    this.$("error").textContent = msg
    this.$("error").className = "lcw-feedback" + (msg ? " lcw-feedback-bad" : "")
  }

  async refresh() {
    await this.run(async () => {
      this.render(await this.api("GET", ""))
      this.$("status").textContent = "Connected. Documents are chunked and embedded in your browser, then stored in Qdrant."
    })
    if (this.$("status").textContent.startsWith("Connecting")) this.$("status").textContent = "Offline. The vector database is not reachable."
  }

  // ── Documents ───────────────────────────────────────────────────
  settings() {
    const size = Number(this.$("size").value)
    const overlap = Math.min(Number(this.$("overlap").value), size - 50)
    return { size, overlap, strategy: this.$("strategy").value }
  }

  preview() {
    const { size, overlap } = this.settings()
    this.$("size-out").textContent = `${size} chars`
    this.$("overlap-out").textContent = `${overlap} chars`
    const text = this.$("text").value
    this.$("preview").textContent = text.trim() ? `→ ${chunkText(text, this.settings()).length} chunks` : ""
  }

  loadFile(file) {
    if (!file) return
    if (file.size > MAX_FILE_BYTES) { this.error(`That file is ${Math.round(file.size / 1000)} KB; the lab accepts up to 50 KB.`); return }
    const reader = new FileReader()
    reader.onload = () => {
      this.$("text").value = String(reader.result)
      if (!this.$("name").value) this.$("name").value = file.name
      this.preview()
    }
    reader.readAsText(file)
    this.$("file").value = ""
  }

  async addDocument(name = this.$("name").value.trim(), text = this.$("text").value) {
    if (!name) { this.error("Give the document a name."); return false }
    if (!text.trim()) { this.error("Paste or upload some text first."); return false }
    if (text.length > MAX_FILE_BYTES) { this.error("That text is too long for the lab (about 50,000 characters max)."); return false }
    const settings = this.settings()
    const chunks = chunkText(text, settings)
    let ok = false
    await this.run(async () => {
      const vectors = []
      for (let i = 0; i < chunks.length; i += 16) {
        this.$("preview").textContent = `Embedding chunks ${i + 1}–${Math.min(i + 16, chunks.length)} of ${chunks.length}…`
        vectors.push(...await embed(chunks.slice(i, i + 16).map(c => c.text)))
      }
      this.render(await this.api("POST", "/documents", {
        name, chunk_size: settings.size, chunk_overlap: settings.overlap,
        chunks: chunks.map((c, i) => ({ text: c.text, vector: vectors[i] }))
      }))
      this.$("name").value = ""; this.$("text").value = ""
      ok = true
    })
    this.preview()
    return ok
  }

  async addSamples() {
    for (const doc of this.samplesValue) {
      if (this.state?.documents.some(d => d.name === doc.name)) continue
      if (!await this.addDocument(doc.name, doc.text)) break
    }
  }

  async deleteDocument(id) { await this.run(async () => this.render(await this.api("DELETE", `/documents/${id}`))) }

  async reset() {
    if (!confirm("Reset the RAG Lab? This deletes all your documents and chunks.")) return
    await this.run(async () => { this.render(await this.api("POST", "/reset")); this.$("result").innerHTML = "" })
  }

  // ── Asking ──────────────────────────────────────────────────────
  async ask() {
    const question = this.$("question").value.trim()
    if (!question) return
    await this.run(async () => {
      this.$("result").innerHTML = `<p class="lcw-lab-hint">Retrieving${this.state?.generation.enabled ? " and asking the model" : ""}…</p>`
      const [vector] = await embed([question])
      const data = await this.api("POST", "/ask", {
        question, vector, top_k: Number(this.$("k").value), threshold: Number(this.$("threshold").value)
      })
      this.showResult(data)
      this.state.usage = data.usage
      this.renderUsage()
    })
  }

  showResult(d) {
    const used = d.chunks.filter(c => c.score >= d.threshold)
    // Turn [1], [2][3] citations into badges that point at the matching retrieved chunk
    const answer = d.answer ? esc(d.answer).replace(/\[(\d+)\]/g, (m, n) =>
      Number(n) <= used.length ? `<a href="#" class="lcw-cite" data-cite="${n}">${n}</a>` : m) : ""
    const tokens = d.tokens?.input ? ` · ${d.tokens.input} input + ${d.tokens.output} output tokens` : ""
    this.$("result").innerHTML = `
      ${answer ? `<div class="lcw-rag-answer"><div class="lcw-step-label">Answer${d.model ? ` · ${esc(d.model)}` : ""}${tokens}</div>${answer.replace(/\n/g, "<br>")}</div>` : ""}
      ${d.error ? `<div class="lcw-feedback lcw-feedback-bad">${esc(d.error)}</div>` : ""}
      ${d.notice ? `<div class="lcw-rag-notice">${esc(d.notice)}</div>` : ""}
      <p class="lcw-lab-hint">Retrieved ${d.chunks.length} chunk(s); ${d.used} scored at or above the threshold ${d.threshold} and went into the prompt as numbered sources.</p>
      <ol class="lcw-rag-chunks">${d.chunks.map(c => {
        const n = used.indexOf(c) + 1
        return `<li class="${n ? "" : "lcw-rag-unused"}" ${n ? `data-source="${n}"` : ""}>
          <div class="lcw-rag-meta">${n ? `<span class="lcw-cite">${n}</span>` : "<span class=\"lcw-rag-below\">below threshold</span>"}
            <span class="lcw-sc-score">${fmt(c.score, 3)}</span> ${esc(c.document)} · chunk ${c.chunk + 1}</div>
          <div>${esc(c.text)}</div></li>`
      }).join("")}</ol>
      <details class="lcw-rag-prompt"><summary>Show the exact prompt sent to the model</summary>
        <div class="lcw-step-label">System</div><pre>${esc(d.system_prompt)}</pre>
        <div class="lcw-step-label">User message</div><pre>${esc(d.prompt)}</pre></details>`
    this.$("result").querySelectorAll("a.lcw-cite").forEach(a => a.addEventListener("click", e => {
      e.preventDefault()
      const li = this.$("result").querySelector(`[data-source="${a.dataset.cite}"]`)
      li?.scrollIntoView({ behavior: "smooth", block: "center" })
      li?.classList.add("lcw-step-new"); setTimeout(() => li?.classList.remove("lcw-step-new"), 800)
    }))
  }

  // ── Rendering ───────────────────────────────────────────────────
  render(state) {
    this.state = state
    const docs = state.documents
    this.$("docs").innerHTML = docs.length
      ? docs.map(d => `<li><span><strong>${esc(d.name)}</strong> · ${d.chunks_count} chunk${d.chunks_count === 1 ? "" : "s"} · ${d.chars.toLocaleString()} chars · size ${d.chunk_size} / overlap ${d.chunk_overlap}</span>
          <button type="button" class="lcw-btn lcw-btn-ghost" data-delete="${d.id}" aria-label="Delete ${esc(d.name)}">✕</button></li>`).join("")
      : `<li class="lcw-lab-empty">No documents yet (up to ${state.limits.documents}).</li>`
    this.$("docs").querySelectorAll("[data-delete]").forEach(b => b.addEventListener("click", () => this.deleteDocument(b.dataset.delete)))
    this.$("ask").disabled = docs.length === 0
    this.$("gen").textContent = state.generation.enabled
      ? `Answers are written by ${state.generation.model} from your retrieved chunks.`
      : "AI answers aren't switched on for this site yet: you'll see retrieval results and the exact prompt, but no generated answer."
    this.$("hint").textContent = `Labs unused for ${state.limits.stale_days} days are deleted automatically. Don't upload private or personal documents.`
    this.renderUsage()
  }

  renderUsage() {
    const u = this.state.usage
    this.$("usage").textContent = `${u.actions.used}/${u.actions.limit} actions · ${u.answers.used}/${u.answers.limit} AI answers today`
  }
}
