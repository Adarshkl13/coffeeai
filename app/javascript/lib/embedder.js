// Sentence embeddings computed in the learner's browser with transformers.js.
// Model: all-MiniLM-L6-v2 (384 dimensions). The first call downloads ~23 MB, then the browser caches it.
const TRANSFORMERS_URL = "https://cdn.jsdelivr.net/npm/@huggingface/transformers@4.3.0/dist/transformers.min.js"
export const MODEL_ID = "Xenova/all-MiniLM-L6-v2"
export const DIMENSIONS = 384

let extractorPromise = null
const listeners = new Set()

// fn({ status: "loading" | "ready" | "error", progress: 0..100, message })
export function onStatus(fn) {
  listeners.add(fn)
  return () => listeners.delete(fn)
}

function emit(status) { listeners.forEach(fn => fn(status)) }

function load() {
  if (extractorPromise) return extractorPromise
  const files = {}
  emit({ status: "loading", progress: 0, message: "Loading the embedding model (first time only, about 23 MB)…" })
  extractorPromise = import(TRANSFORMERS_URL).then(({ pipeline }) =>
    pipeline("feature-extraction", MODEL_ID, {
      dtype: "q8",
      progress_callback: (p) => {
        if (p.status !== "progress" || !p.total) return
        files[p.file] = [p.loaded, p.total]
        const [loaded, total] = Object.values(files).reduce((a, [l, t]) => [a[0] + l, a[1] + t], [0, 0])
        emit({ status: "loading", progress: Math.round((loaded / total) * 100), message: "Downloading the embedding model…" })
      }
    })
  ).then((extractor) => {
    emit({ status: "ready", progress: 100, message: "Embedding model ready" })
    return extractor
  }).catch((e) => {
    extractorPromise = null
    emit({ status: "error", progress: 0, message: `Could not load the embedding model: ${e.message}` })
    throw e
  })
  return extractorPromise
}

// Returns an array of plain number arrays, one per text.
export async function embed(texts, { normalize = true } = {}) {
  const extractor = await load()
  const output = await extractor(texts, { pooling: "mean", normalize })
  return output.tolist()
}

export const dot = (a, b) => a.reduce((s, x, i) => s + x * b[i], 0)
export const norm = (a) => Math.sqrt(dot(a, a))
export const cosine = (a, b) => dot(a, b) / (norm(a) * norm(b))
export const euclidean = (a, b) => Math.sqrt(a.reduce((s, x, i) => s + (x - b[i]) ** 2, 0))
export const normalized = (a) => { const n = norm(a); return a.map(x => x / n) }
