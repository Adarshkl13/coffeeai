import { Controller } from "@hotwired/stimulus"
import { esc } from "lib/vecviz"

// A live tokenizer: type text and see how a real tokenizer (GPT-2's byte-pair encoding, a
// well-known example) splits it into tokens, with IDs and counts. Runs in the browser.
//   <div class="lcw" data-controller="tokenizer" data-tokenizer-text-value="Some text"></div>
// Add data-tokenizer-lazy-value="true" (home page) to load the tokenizer only when the box scrolls into view.
const TRANSFORMERS_URL = "https://cdn.jsdelivr.net/npm/@huggingface/transformers@4.3.0/dist/transformers.min.js"
const MODEL_ID = "Xenova/gpt2"
const SAMPLES = ["Tokenization splits text into pieces.", "unbelievably", "My name is Alex", "def add(a, b):\n    return a + b", "I ❤️ AI 🤖"]
let tokenizerPromise = null

function loadTokenizer() {
  tokenizerPromise ||= import(TRANSFORMERS_URL)
    .then(({ AutoTokenizer }) => AutoTokenizer.from_pretrained(MODEL_ID))
    .catch(e => { tokenizerPromise = null; throw e })
  return tokenizerPromise
}

export default class extends Controller {
  static values = { text: String, lazy: Boolean }

  connect() {
    if (this.element.dataset.ready) { if (!this.tok && this.input) this.load(); return }
    this.element.dataset.ready = "1"
    this.element.innerHTML = `
      <p class="lcw-prompt">Type anything. Each coloured box is one token.</p>
      <textarea class="lcw-input tk-input" rows="3" spellcheck="false" aria-label="Text to tokenize"></textarea>
      <div class="lcw-toolbar tk-samples"><span class="lcw-lab-hint">Try:</span>
        ${SAMPLES.map((s, i) => `<button type="button" class="lcw-chip" data-i="${i}">${esc(s.split("\n")[0].slice(0, 22))}</button>`).join("")}
      </div>
      <div class="tk-stats" aria-live="polite"></div>
      <div class="tk-tokens"></div>
      <details class="tk-ids"><summary>Show token IDs</summary><code></code></details>
      <p class="lcw-lab-hint">Tokenizer: GPT-2 byte-pair encoding, loaded in your browser (about 2 MB, first time only). Every model family has its own tokenizer, so counts differ between models.</p>`
    this.input = this.element.querySelector(".tk-input")
    this.input.value = this.textValue || SAMPLES[0]
    this.input.addEventListener("input", () => { clearTimeout(this.t); this.t = setTimeout(() => this.render(), 150) })
    this.element.querySelectorAll("[data-i]").forEach(b => b.addEventListener("click", () => { this.input.value = SAMPLES[b.dataset.i]; this.render() }))
    this.element.querySelector(".tk-stats").textContent = "Loading the tokenizer…"
    if (this.lazyValue && "IntersectionObserver" in window) {
      this.observer = new IntersectionObserver(entries => {
        if (!entries.some(e => e.isIntersecting)) return
        this.observer.disconnect(); this.load()
      }, { rootMargin: "300px" })
      this.observer.observe(this.element)
    } else {
      this.load()
    }
  }

  disconnect() { this.observer?.disconnect() }

  load() {
    loadTokenizer().then(t => { this.tok = t; this.render() })
      .catch(e => { this.element.querySelector(".tk-stats").textContent = `Could not load the tokenizer: ${e.message}` })
  }

  render() {
    if (!this.tok) return
    const text = this.input.value
    const ids = this.tok.encode(text)
    const pieces = ids.map(id => this.tok.decode([id]))
    const words = text.trim() ? text.trim().split(/\s+/).length : 0
    this.element.querySelector(".tk-stats").innerHTML =
      `<strong>${ids.length}</strong> tokens · ${[...text].length} characters · ${words} words`
    this.element.querySelector(".tk-tokens").innerHTML = pieces.map((p, i) =>
      `<span class="tk-tok tk-c${i % 6}" title="Token ID ${ids[i]}">${esc(p).replace(/ /g, "·").replace(/\n/g, "↵<br>") || "&nbsp;"}</span>`).join("")
    this.element.querySelector(".tk-ids code").textContent = `[${ids.join(", ")}]`
  }
}
