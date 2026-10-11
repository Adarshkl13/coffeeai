// Text chunking shared by the chunking visualiser and the RAG Lab.
// Every strategy returns [{ text, start, end }] with character offsets into the original text,
// so overlaps can be highlighted exactly.

export const STRATEGIES = {
  fixed: "Fixed size (characters)",
  sentence: "Sentence-aware",
  paragraph: "Paragraph-aware"
}

// Split into units (sentences or paragraphs) with their offsets.
function units(text, kind) {
  const re = kind === "paragraph" ? /[^\n]+(?:\n(?!\s*\n)[^\n]*)*/g : /[^.!?\n]+[.!?]*[\s]*|\n+/g
  const out = []
  let m
  while ((m = re.exec(text)) !== null) {
    if (m[0].trim()) out.push({ start: m.index, end: m.index + m[0].length })
    if (m[0].length === 0) re.lastIndex++
  }
  return out
}

// Fixed windows of `size` characters that advance by size - overlap.
function fixed(text, size, overlap) {
  const chunks = []
  const step = Math.max(1, size - overlap)
  for (let start = 0; start < text.length; start += step) {
    const end = Math.min(text.length, start + size)
    chunks.push({ start, end })
    if (end === text.length) break
  }
  return chunks
}

// Pack whole units into chunks up to `size`; carry trailing units (up to `overlap` chars) into the next chunk.
// A single unit longer than `size` falls back to fixed windows.
function packed(text, size, overlap, kind) {
  const us = units(text, kind)
  const chunks = []
  let i = 0
  while (i < us.length) {
    let j = i
    if (us[i].end - us[i].start > size) {
      fixed(text.slice(us[i].start, us[i].end), size, overlap)
        .forEach(c => chunks.push({ start: us[i].start + c.start, end: us[i].start + c.end }))
      i++
      continue
    }
    while (j + 1 < us.length && us[j + 1].end - us[i].start <= size) j++
    chunks.push({ start: us[i].start, end: us[j].end })
    if (j + 1 >= us.length) break
    // step back over trailing units that fit in the overlap budget
    let next = j + 1
    while (next - 1 > i && us[j].end - us[next - 1].start <= overlap) next--
    i = next
  }
  return chunks
}

export function chunkText(text, { size = 500, overlap = 50, strategy = "fixed" } = {}) {
  const spans = strategy === "fixed" ? fixed(text, size, overlap) : packed(text, size, overlap, strategy)
  return spans
    .map(s => ({ ...s, text: text.slice(s.start, s.end).trim() }))
    .filter(c => c.text.length > 0)
}
