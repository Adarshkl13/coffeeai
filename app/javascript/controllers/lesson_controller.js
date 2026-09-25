import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [
    "sidebar", "overlay",
    "optionsList", "feedback",
    "notesArea"
  ]

  connect() {
    this._selectedAnswer = null
    this._loadNotes()
  }

  // ── Sidebar (mobile) ─────────────────────────────────────────
  toggleSidebar() {
    const sidebar = this.sidebarTarget
    const overlay = this.overlayTarget
    const isOpen  = sidebar.classList.contains("open")
    sidebar.classList.toggle("open", !isOpen)
    overlay.classList.toggle("visible", !isOpen)
    document.body.style.overflow = isOpen ? "" : "hidden"
  }

  // ── Module accordion ─────────────────────────────────────────
  toggleModule(event) {
    const btn      = event.currentTarget
    const moduleId = btn.dataset.module
    const list     = document.getElementById(`module-lessons-${moduleId}`)
    if (!list) return
    const open = list.classList.toggle("visible")
    btn.classList.toggle("open", open)
  }

  // ── Option selection ─────────────────────────────────────────
  pickOption(event) {
    this._selectedAnswer = event.target.value
    if (!this.hasOptionsListTarget) return

    this.optionsListTarget.querySelectorAll(".option-row").forEach(row => {
      row.classList.remove("selected")
    })
    event.target.closest(".option-row")?.classList.add("selected")
    this._clearFeedback()
  }

  // ── Check answer with server-side attempt (course lessons) ──────
  async checkAnswerWithAttempt(event) {
    const btn        = event.currentTarget
    const correct    = this._unescape(btn.dataset.correct || "")
    const exerciseId = btn.dataset.exerciseId

    if (!this._selectedAnswer) {
      this._showFeedback(false, "Please select an answer first.")
      return
    }

    if (exerciseId) {
      const token = document.querySelector('meta[name="csrf-token"]')?.content
      try {
        await fetch("/exercise_attempts", {
          method: "POST",
          headers: { "Content-Type": "application/json", "X-CSRF-Token": token },
          body: JSON.stringify({ exercise_id: exerciseId, answer: this._selectedAnswer })
        })
      } catch (_) { /* continue even if request fails */ }
    }

    const isCorrect = this._selectedAnswer === correct
    this._applyOptionHighlights(correct, isCorrect)

    if (isCorrect) {
      this._showFeedback(true, "Correct! Marking lesson complete...")
      setTimeout(() => document.getElementById("complete-form")?.submit(), 900)
    } else {
      this._showFeedback(false, "Not quite — try again!")
      this._selectedAnswer = null
    }
  }

  // ── Check answer (AI Academy static course) ──────────────────
  checkAnswer(event) {
    const btn     = event.currentTarget
    const correct = this._unescape(btn.dataset.correct || "")

    if (!this._selectedAnswer) {
      this._showFeedback(false, "Please select an answer first.")
      return
    }

    const isCorrect = this._selectedAnswer === correct
    this._applyOptionHighlights(correct, isCorrect)

    if (isCorrect) {
      this._showFeedback(true, "✓ Correct! Marking lesson complete…")
      // Short pause so the user sees the feedback, then submit
      setTimeout(() => document.getElementById("complete-form")?.submit(), 900)
    } else {
      this._showFeedback(false, "✗ Not quite — try again!")
      // Reset selection so they can pick again
      this._selectedAnswer = null
    }
  }

  // ── Skip ─────────────────────────────────────────────────────
  skipLesson(event) {
    event.preventDefault()
    if (confirm("Skip this lesson? You can always come back to it later.")) {
      document.getElementById("skip-form")?.submit()
    }
  }

  // ── Shared option highlight helper ──────────────────────────
  _applyOptionHighlights(correct, isCorrect) {
    if (!this.hasOptionsListTarget) return
    this.optionsListTarget.querySelectorAll(".option-row").forEach(row => {
      const val = row.dataset.value
      row.classList.remove("selected", "correct", "wrong")
      if (val === correct) row.classList.add("correct")
      else if (val === this._selectedAnswer && !isCorrect) row.classList.add("wrong")
    })
  }

  // ── Feedback helpers ─────────────────────────────────────────
  _showFeedback(ok, msg) {
    if (!this.hasFeedbackTarget) return
    const fb = this.feedbackTarget
    fb.textContent = msg
    fb.className   = `exercise-feedback ${ok ? "correct" : "wrong"}`
    fb.classList.remove("hidden")
  }

  _clearFeedback() {
    if (!this.hasFeedbackTarget) return
    const fb = this.feedbackTarget
    fb.textContent = ""
    fb.className   = "exercise-feedback hidden"
  }

  // ── Notes (localStorage) ─────────────────────────────────────
  saveNotes() {
    if (!this.hasNotesAreaTarget) return
    localStorage.setItem(this._notesKey(), this.notesAreaTarget.value)
  }

  _loadNotes() {
    if (!this.hasNotesAreaTarget) return
    const saved = localStorage.getItem(this._notesKey())
    if (saved) this.notesAreaTarget.value = saved
  }

  _notesKey() {
    return `ai-academy-notes-${window.location.pathname}`
  }

  // ── Util ─────────────────────────────────────────────────────
  _unescape(str) {
    const d = document.createElement("div")
    d.innerHTML = str
    return d.textContent
  }
}
