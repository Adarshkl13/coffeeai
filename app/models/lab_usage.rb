# Per-learner, per-day counters that cap how much each hands-on lab can be used.
class LabUsage < ApplicationRecord
  class LimitReached < StandardError; end

  LIMITS = {
    "vector"     => ENV.fetch("VECTOR_LAB_DAILY_LIMIT", 300).to_i,
    "rag"        => ENV.fetch("RAG_LAB_DAILY_LIMIT", 300).to_i,
    "rag_answer" => ENV.fetch("RAG_LAB_DAILY_ANSWERS", 20).to_i,  # Claude calls per learner per day
    "agent_run"  => ENV.fetch("AGENT_LAB_DAILY_RUNS", 15).to_i,   # Agent Lab runs per learner per day
    "agent_llm"  => ENV.fetch("AGENT_LAB_DAILY_LLM_CALLS", 60).to_i, # Claude calls across those runs
    "agent_tool" => ENV.fetch("AGENT_LAB_DAILY_TOOL_TESTS", 200).to_i, # manual "test a tool" calls (no LLM)
    "prompt_run" => ENV.fetch("PROMPT_LAB_DAILY_RUNS", 20).to_i,  # Prompt Lab test runs per learner per day
    "prompt_llm" => ENV.fetch("PROMPT_LAB_DAILY_LLM_CALLS", 100).to_i, # Claude calls across those runs (one per test case)
    "ai_try"     => ENV.fetch("AI_TRY_DAILY_LIMIT", 30).to_i,       # "Try it with AI" prompts in non-coding lessons
    "ask_ai"     => ENV.fetch("ASK_AI_DAILY_LIMIT", 50).to_i        # Ask CoffeeBean AI questions (plan members only)
  }.freeze

  LABELS = { "rag_answer" => "AI answers", "agent_run" => "agent runs", "agent_llm" => "model calls",
             "agent_tool" => "tool tests", "prompt_run" => "prompt runs", "prompt_llm" => "model calls",
             "ai_try" => "AI tries", "ask_ai" => "questions" }.freeze

  belongs_to :user

  def self.limit_for(kind) = LIMITS.fetch(kind)

  def self.used(user, kind)
    find_by(user: user, kind: kind, day: Date.current)&.count || 0
  end

  # Atomically takes one unit of today's allowance, or raises LimitReached.
  def self.consume!(user, kind)
    usage = find_or_create_by!(user: user, kind: kind, day: Date.current)
    taken = where(id: usage.id).where("count < ?", limit_for(kind)).update_all("count = count + 1, updated_at = CURRENT_TIMESTAMP")
    raise LimitReached, "Daily limit of #{limit_for(kind)} #{LABELS.fetch(kind, "lab actions")} reached. It resets tomorrow." if taken.zero?
  rescue ActiveRecord::RecordNotUnique
    retry
  end
end
