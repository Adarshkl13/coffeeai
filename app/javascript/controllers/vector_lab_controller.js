import { Controller } from "@hotwired/stimulus"
import { embed, onStatus } from "lib/embedder"
import { heatStrip, head, fmt, statusLine, esc } from "lib/vecviz"

// The Vector Lab: the learner's own Qdrant collections (one per distance metric).
//   <div class="lcw lcw-lab" data-controller="vector-lab"></div>
// A lesson can supply its own sample set:
//   data-vector-lab-samples-value='["text 1", "text 2"]' data-vector-lab-samples-label-value="Add FAQ set"
// Texts are embedded in the browser (all-MiniLM-L6-v2) and stored/searched via /labs/vector.
const METRICS = [
  { key: "cosine", label: "Cosine", note: "angle only; Qdrant normalises vectors" },
  { key: "dot", label: "Dot", note: "angle and length" },
  { key: "euclid", label: "Euclid", note: "straight-line distance; lower is closer" }
]
const SAMPLES = [
  "Cats purr when they feel safe and relaxed.",
  "My dog loves chasing the ball in the park.",
  "Virat Kohli scored a century in the test match.",
  "The bowler took three wickets in the final over.",
  "Add turmeric and cumin to the hot oil before the onions.",
  "Knead the dough for ten minutes until it is smooth.",
  "Python lists can grow and shrink as you add items.",
  "A JavaScript promise represents a value that arrives later.",
  "The central bank raised interest rates to fight inflation.",
  "Diversifying your investments lowers overall risk."
]

export default class extends Controller {
  static values = { samples: Array, samplesLabel: String }

  get samples() { return this.samplesValue.length ? this.samplesValue : SAMPLES }

  connect() {
    if (this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.element.innerHTML = `
      <div class="lcw-lab-head">
        <strong>🧪 Vector Lab</strong>
        <span class="lcw-lab-usage" data-role="usage"></span>
      </div>
      <div class="lcw-model-status" data-role="status" aria-live="polite">Connecting to your lab…</div>
      <div class="lcw-feedback" data-role="error" aria-live="assertive"></div>

      <h4 class="lcw-lab-h">1 · Your collections</h4>
      <div class="lcw-lab-cols" data-role="cols"></div>

      <h4 class="lcw-lab-h">2 · Add text</h4>
      <div class="lcw-lab-add">
        <textarea class="lcw-input" data-role="text" rows="2" placeholder="Type a sentence to embed and store…"></textarea>
        <div class="lcw-toolbar">
          <button type="button" class="lcw-btn lcw-btn-primary" data-role="add">Embed &amp; add</button>
          <button type="button" class="lcw-btn" data-role="samples">${esc(this.samplesLabelValue || `Add ${this.samples.length} sample texts`)}</button>
        </div>
        <div class="lcw-lab-embed" data-role="embed"></div>
      </div>

      <h4 class="lcw-lab-h">3 · Your texts <span data-role="count"></span></h4>
      <ul class="lcw-lab-points" data-role="points"></ul>

      <h4 class="lcw-lab-h">4 · Search and compare</h4>
      <div class="lcw-sc-query">
        <input class="lcw-input" data-role="query" maxlength="200" placeholder="e.g. pets that are happy">
        <label>top-k <select class="lcw-input" data-role="k">${[1, 2, 3, 5, 10].map(k => `<option ${k === 3 ? "selected" : ""}>${k}</option>`).join("")}</select></label>
        <button type="button" class="lcw-btn lcw-btn-primary" data-role="search">Search</button>
      </div>
      <div class="lcw-lab-results" data-role="results"></div>

      <div class="lcw-toolbar lcw-lab-foot">
        <button type="button" class="lcw-btn lcw-btn-danger" data-role="reset">Reset lab</button>
        <span class="lcw-lab-hint" data-role="hint"></span>
      </div>`
    this.$ = (r) => this.element.querySelector(`[data-role="${r}"]`)
    this.$("add").addEventListener("click", () => this.add())
    this.$("samples").addEventListener("click", () => this.addSamples())
    this.$("search").addEventListener("click", () => this.search())
    this.$("query").addEventListener("keydown", e => { if (e.key === "Enter") this.search() })
    this.$("reset").addEventListener("click", () => this.reset())
    this.off = onStatus(s => statusLine(this.$("status"), s))
    this.refresh()
  }

  disconnect() { this.off?.() }

  // ── Server calls ────────────────────────────────────────────────
  async api(method, path, body) {
    const token = document.querySelector('meta[name="csrf-token"]')?.content
    const res = await fetch(`/labs/vector${path}`, {
      method,
      headers: { "Content-Type": "application/json", "Accept": "application/json", "X-CSRF-Token": token },
      body: body ? JSON.stringify(body) : undefined,
      credentials: "same-origin"
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
      if (this.$("status").textContent.startsWith("Connecting")) {
        this.$("status").textContent = "Connected. Texts are embedded in your browser, then stored in Qdrant."
      }
    })
    if (this.$("status").textContent.startsWith("Connecting")) this.$("status").textContent = "Offline. The vector database is not reachable."
  }

  async createCollection(metric) { await this.run(async () => this.render(await this.api("POST", "/collections", { metric }))) }

  async deleteCollection(metric) {
    if (!confirm(`Delete your ${metric} collection? The texts stay in your other collections.`)) return
    await this.run(async () => this.render(await this.api("DELETE", `/collections/${metric}`)))
  }

  async add(text = this.$("text").value.trim()) {
    if (!text) return
    await this.run(async () => {
      const [vector] = await embed([text], { normalize: false })
      const data = await this.api("POST", "/points", { text, vector })
      this.render(data)
      this.showEmbedding(text, vector, data.added)
      this.$("text").value = ""
    })
  }

  async addSamples() {
    for (const s of this.samples) {
      if (this.state && this.state.points.some(p => p.text === s)) continue
      await this.add(s)
      if (this.$("error").textContent) break
    }
  }

  async deletePoint(id) { await this.run(async () => this.render(await this.api("DELETE", `/points/${id}`))) }

  async inspect(id) {
    await this.run(async () => {
      const { point } = await this.api("GET", `/points/${id}`)
      const first = Object.values(point)[0]
      const raw = point.dot?.vector || point.euclid?.vector || first.vector
      this.showEmbedding(first.text, raw, point)
    })
  }

  async search() {
    const q = this.$("query").value.trim()
    if (!q) return
    await this.run(async () => {
      const [vector] = await embed([q], { normalize: false })
      const data = await this.api("POST", "/search", { vector, limit: Number(this.$("k").value) })
      this.showResults(q, data.results)
      this.state.usage = data.usage
      this.renderUsage()
    })
  }

  async reset() {
    if (!confirm("Reset the lab? This deletes all your collections and texts.")) return
    await this.run(async () => {
      this.render(await this.api("POST", "/reset"))
      this.$("results").innerHTML = ""
      this.$("embed").innerHTML = ""
    })
  }

  // ── Rendering ───────────────────────────────────────────────────
  render(state) {
    this.state = state
    const have = new Map(state.collections.map(c => [c.metric, c]))
    this.$("cols").innerHTML = METRICS.map(m => {
      const c = have.get(m.key)
      return `<div class="lcw-lab-col ${c ? "on" : ""}">
        <div><strong>${m.label}</strong> <small>${m.note}</small></div>
        ${c ? `<code>${esc(c.name)}</code><div>${c.count} text${c.count === 1 ? "" : "s"}</div>
               <button type="button" class="lcw-btn lcw-btn-ghost" data-del-col="${m.key}">Delete</button>`
            : `<button type="button" class="lcw-btn" data-new-col="${m.key}">Create</button>`}
      </div>`
    }).join("")
    this.$("cols").querySelectorAll("[data-new-col]").forEach(b => b.addEventListener("click", () => this.createCollection(b.dataset.newCol)))
    this.$("cols").querySelectorAll("[data-del-col]").forEach(b => b.addEventListener("click", () => this.deleteCollection(b.dataset.delCol)))

    const none = state.collections.length === 0
    ;["add", "samples", "search"].forEach(r => { this.$(r).disabled = none })
    this.$("hint").textContent = none
      ? "Start by creating a collection above. Create all three to compare metrics."
      : `Collections unused for ${state.limits.stale_days} days are deleted automatically.`

    this.$("count").textContent = `(${state.points.length} / ${state.limits.points})`
    this.$("points").innerHTML = state.points.length
      ? state.points.map(p => `<li><span>${esc(p.text)}</span>
          <button type="button" class="lcw-btn lcw-btn-ghost" data-inspect="${p.id}">Vector</button>
          <button type="button" class="lcw-btn lcw-btn-ghost" data-delete="${p.id}" aria-label="Delete">✕</button></li>`).join("")
      : `<li class="lcw-lab-empty">No texts yet.</li>`
    this.$("points").querySelectorAll("[data-inspect]").forEach(b => b.addEventListener("click", () => this.inspect(b.dataset.inspect)))
    this.$("points").querySelectorAll("[data-delete]").forEach(b => b.addEventListener("click", () => this.deletePoint(b.dataset.delete)))
    this.renderUsage()
  }

  renderUsage() {
    const u = this.state.usage
    this.$("usage").textContent = `${u.used} / ${u.limit} lab actions today`
  }

  showEmbedding(text, raw, stored) {
    const rows = Object.entries(stored || {}).map(([metric, s]) =>
      `<tr><td>${metric}</td><td>length ${fmt(s.norm, 3)}</td><td><code>[${s.head.slice(0, 4).map(x => fmt(x, 3)).join(", ")}, …]</code></td></tr>`).join("")
    this.$("embed").innerHTML = `
      <p><strong>“${esc(text)}”</strong> → ${raw.length} numbers. Blue cells are negative and orange cells positive.</p>
      ${heatStrip(raw, { height: 22, label: "The embedding" })}
      <p><code>${head(raw, 6)}</code></p>
      ${rows ? `<table class="lc-table"><thead><tr><th>Collection</th><th>Stored vector</th><th>First values</th></tr></thead><tbody>${rows}</tbody></table>
      <p class="lcw-lab-hint">The cosine collection stores a length-1 copy: Qdrant normalises vectors for cosine.</p>` : ""}`
  }

  showResults(query, results) {
    const cols = METRICS.filter(m => results[m.key])
    this.$("results").innerHTML = `<p>Results for <strong>“${esc(query)}”</strong></p>
      <div class="lcw-sc" style="grid-template-columns: repeat(${cols.length}, minmax(0, 1fr))">${cols.map(m => `
        <div class="lcw-sc-panel"><div class="lcw-sc-controls"><strong>${m.label}</strong></div>
          <ol class="lcw-sc-results">${results[m.key].map(h =>
            `<li><span class="lcw-sc-score">${m.key === "euclid" ? "dist " : ""}${fmt(h.score, 3)}</span>${esc(h.text)}</li>`).join("") || "<li>No texts yet</li>"}</ol>
        </div>`).join("")}</div>`
  }
}
