import { Controller } from "@hotwired/stimulus"
import { embed, onStatus, dot, cosine, euclidean, normalized } from "lib/embedder"
import { statusLine, esc, fmt } from "lib/vecviz"

// Run one query against a small corpus with two different settings, side by side.
//   <div class="lcw" data-controller="search-compare" data-search-compare-query-value="pets that purr">
//     <ol data-search-compare-target="corpus"><li>Cats purr when they are content.</li>…</ol>
//   </div>
const METRICS = {
  cosine:  { label: "Cosine", score: cosine, higherIsCloser: true },
  dot:     { label: "Dot product", score: dot, higherIsCloser: true },
  euclid:  { label: "Euclidean", score: euclidean, higherIsCloser: false },
  keyword: { label: "Keyword (BM25)", higherIsCloser: true, lexical: true },
  hybrid:  { label: "Hybrid (RRF)", higherIsCloser: true, lexical: true }
}

// Very common words carry no meaning for keyword search, so they are dropped (as most BM25 setups do)
const STOP_WORDS = new Set("a an and are as at be by can do for from how i if in is it my of on or the to was what when where which who why with you your".split(" "))
const tokenize = (t) => (t.toLowerCase().match(/[a-z0-9]+(?:-[a-z0-9]+)*/g) || []).filter(w => !STOP_WORDS.has(w))

// Classic BM25 keyword scoring over the small corpus (k1 = 1.2, b = 0.75).
function bm25Scores(docs, query) {
  const toks = docs.map(tokenize)
  const avgLen = toks.reduce((s, t) => s + t.length, 0) / toks.length
  const q = [...new Set(tokenize(query))]
  return toks.map(t => q.reduce((sum, term) => {
    const tf = t.filter(x => x === term).length
    if (!tf) return sum
    const df = toks.filter(d => d.includes(term)).length
    const idf = Math.log(1 + (toks.length - df + 0.5) / (df + 0.5))
    return sum + idf * (tf * 2.2) / (tf + 1.2 * (0.25 + 0.75 * t.length / avgLen))
  }, 0))
}

export default class extends Controller {
  static targets = ["corpus"]
  static values = { query: String, left: { type: String, default: "cosine" }, right: { type: String, default: "euclid" } }

  connect() {
    if (!this.hasCorpusTarget || this.element.dataset.ready) return
    this.element.dataset.ready = "1"
    this.docs = Array.from(this.corpusTarget.children).map(li => li.textContent.trim())
    this.corpusTarget.hidden = true
    const panel = (side, metric) => `
      <div class="lcw-sc-panel" data-side="${side}">
        <div class="lcw-sc-controls">
          <select class="lcw-input" data-role="metric">${Object.entries(METRICS).map(([k, m]) =>
            `<option value="${k}" ${k === metric ? "selected" : ""}>${m.label}</option>`).join("")}</select>
          <label>top-k <select class="lcw-input" data-role="k">${[1, 2, 3, 4, 5, 8].map(k =>
            `<option ${k === 3 ? "selected" : ""}>${k}</option>`).join("")}</select></label>
        </div>
        <ol class="lcw-sc-results" data-role="results"></ol>
      </div>`
    this.element.insertAdjacentHTML("beforeend", `
      <div class="lcw-sc-query">
        <input class="lcw-input" data-role="query" maxlength="200" value="${esc(this.queryValue || "")}" placeholder="Type a search query">
        <button type="button" class="lcw-btn lcw-btn-primary" data-role="go">Search</button>
      </div>
      <label class="lcw-check"><input type="checkbox" data-role="norm" checked> Normalise vectors (unit length)</label>
      <div class="lcw-model-status" data-role="status" aria-live="polite">Press Search. The first time, your browser downloads a small embedding model (about 23 MB).</div>
      <div class="lcw-sc">${panel("left", this.leftValue)}${panel("right", this.rightValue)}</div>
      <p class="lcw-sc-note" data-role="note"></p>`)
    this.$ = (r, root = this.element) => root.querySelector(`[data-role="${r}"]`)
    this.$("go").addEventListener("click", () => this.search())
    this.$("query").addEventListener("keydown", e => { if (e.key === "Enter") this.search() })
    this.element.querySelectorAll("select, [data-role=norm]").forEach(el => el.addEventListener("change", () => this.vectors && this.render()))
    this.off = onStatus(s => statusLine(this.$("status"), s))
  }

  disconnect() { this.off?.() }

  async search() {
    const q = this.$("query").value.trim()
    if (!q) return
    this.$("go").disabled = true
    try {
      if (!this.docVectors) this.docVectors = await embed(this.docs, { normalize: false })
      ;[this.queryVector] = await embed([q], { normalize: false })
      this.vectors = true
      this.render()
    } catch (_) { /* status line shows the error */ }
    this.$("go").disabled = false
  }

  rank(metricKey, k, useNorm) {
    if (metricKey === "keyword" || metricKey === "hybrid") return this.lexicalRank(metricKey, k)
    const m = METRICS[metricKey]
    const qv = useNorm ? normalized(this.queryVector) : this.queryVector
    return this.docVectors
      .map((v, i) => ({ i, score: m.score(qv, useNorm ? normalized(v) : v) }))
      .sort((x, y) => m.higherIsCloser ? y.score - x.score : x.score - y.score)
      .slice(0, k)
  }

  lexicalRank(metricKey, k) {
    const bm = bm25Scores(this.docs, this.$("query").value)
    if (metricKey === "keyword") {
      return bm.map((score, i) => ({ i, score })).filter(h => h.score > 0).sort((a, b) => b.score - a.score).slice(0, k)
    }
    // Reciprocal rank fusion of the dense (cosine) and keyword rankings, k = 60
    const dense = this.docVectors.map((v, i) => ({ i, s: cosine(this.queryVector, v) })).sort((a, b) => b.s - a.s)
    const lexical = bm.map((s, i) => ({ i, s })).filter(h => h.s > 0).sort((a, b) => b.s - a.s)
    const fused = new Map()
    ;[dense, lexical].forEach(list => list.forEach((h, pos) => fused.set(h.i, (fused.get(h.i) || 0) + 1 / (60 + pos + 1))))
    return [...fused].map(([i, score]) => ({ i, score })).sort((a, b) => b.score - a.score).slice(0, k)
  }

  render() {
    const useNorm = this.$("norm").checked
    const lists = ["left", "right"].map(side => {
      const root = this.element.querySelector(`[data-side="${side}"]`)
      const metric = this.$("metric", root).value, k = Number(this.$("k", root).value)
      return { root, metric, hits: this.rank(metric, k, useNorm) }
    })
    const ids = lists.map(l => l.hits.map(h => h.i).join(","))
    lists.forEach(({ root, metric, hits }, n) => {
      const other = new Set(lists[1 - n].hits.map(h => h.i))
      if (!hits.length) { this.$("results", root).innerHTML = "<li>No results: no query word appears in any document.</li>"; return }
      this.$("results", root).innerHTML = hits.map(h => `
        <li class="${other.has(h.i) ? "" : "lcw-sc-diff"}"><span class="lcw-sc-score">${METRICS[metric].higherIsCloser ? "" : "dist "}${fmt(h.score, metric === "hybrid" ? 4 : 3)}</span>${esc(this.docs[h.i])}</li>`).join("")
    })
    const sameSet = [...lists[0].hits.map(h => h.i)].sort().join() === [...lists[1].hits.map(h => h.i)].sort().join()
    this.$("note").textContent =
      ids[0] === ids[1] ? "Both settings return the same results in the same order." :
      sameSet ? "Same results, but in a different order." :
      "Highlighted results appear in only one of the two lists."
  }
}
