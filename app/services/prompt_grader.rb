# Grades one model answer against one Prompt Lab test-case check. Pure Ruby: no learner code runs.
class PromptGrader
  CHECKS = {
    "contains"     => "Contains",
    "not_contains" => "Does not contain",
    "equals"       => "Equals",
    "regex"        => "Matches pattern",
    "json_keys"    => "Valid JSON with keys",
    "max_words"    => "At most N words"
  }.freeze

  Result = Struct.new(:pass, :reason, keyword_init: true)

  # Returns an error message for an invalid check, or nil.
  def self.invalid(type, value)
    return "Unknown check type." unless CHECKS.key?(type)
    return "Give a value for the check." if value.to_s.strip.empty? && type != "json_keys"
    return "Keep check values under 300 characters." if value.to_s.length > 300
    if type == "regex"
      begin
        Regexp.new(value, timeout: 0.2)
      rescue RegexpError => e
        return "The pattern is not valid: #{e.message}"
      end
    end
    return "Max words must be a whole number from 1 to 2000." if type == "max_words" && !value.to_s.strip.match?(/\A\d{1,4}\z/)
    nil
  end

  def self.grade(output, type, value)
    text = output.to_s
    v = value.to_s
    case type
    when "contains"     then check(text.downcase.include?(v.downcase), %(Found "#{v}".), %(Did not find "#{v}".))
    when "not_contains" then check(!text.downcase.include?(v.downcase), %(Does not contain "#{v}".), %(Contains "#{v}", which it should not.))
    when "equals"       then check(text.strip.casecmp?(v.strip), "Exact match.", %(Expected exactly "#{v.strip}".))
    when "regex"
      begin
        check(Regexp.new(v, timeout: 0.2).match?(text), "Matches the pattern.", "Does not match the pattern.")
      rescue Regexp::TimeoutError
        Result.new(pass: false, reason: "The pattern took too long to run.")
      end
    when "json_keys"
      begin
        data = JSON.parse(strip_fences(text))
        keys = v.split(",").map(&:strip).reject(&:empty?)
        return Result.new(pass: false, reason: "The answer is JSON, but not an object.") unless data.is_a?(Hash) || keys.empty?
        missing = keys - (data.is_a?(Hash) ? data.keys : [])
        check(missing.empty?, keys.empty? ? "Valid JSON." : "Valid JSON with all keys.", "Valid JSON, but missing: #{missing.join(', ')}.")
      rescue JSON::ParserError
        Result.new(pass: false, reason: "The answer is not valid JSON.")
      end
    when "max_words"
      n = text.split.size
      check(n <= v.to_i, "#{n} words (limit #{v}).", "#{n} words, over the limit of #{v}.")
    else
      Result.new(pass: false, reason: "Unknown check type.")
    end
  end

  # Models sometimes wrap JSON in ```json fences; accept that.
  def self.strip_fences(text) = text.strip.sub(/\A```(?:json)?\s*/i, "").sub(/\s*```\z/, "")

  def self.check(ok, yes, no) = Result.new(pass: ok, reason: ok ? yes : no)
end
