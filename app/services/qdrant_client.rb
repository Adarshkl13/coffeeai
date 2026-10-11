require "net/http"
require "json"

# Minimal Qdrant REST client used by the Vector Lab.
# Configure with QDRANT_URL (default http://localhost:6333) and optional QDRANT_API_KEY.
class QdrantClient
  class Error < StandardError; end

  # Lab collection names start with this outside production ("development_", "test_"; parallel test
  # workers add their number, "test3_"), so a shared Qdrant never mixes environments or test workers.
  def self.env_prefix = Rails.env.production? ? "" : "#{Rails.env}#{ENV["LAB_TEST_WORKER"]}_"
  class Unavailable < Error; end

  def initialize(url: ENV.fetch("QDRANT_URL", "http://localhost:6333"), api_key: ENV["QDRANT_API_KEY"])
    @base = URI(url.chomp("/"))
    @api_key = api_key.presence
  end

  def collection_exists?(name)
    request(:get, "/collections/#{esc(name)}/exists").dig("result", "exists")
  end

  def create_collection(name, size:, distance:)
    request(:put, "/collections/#{esc(name)}", { vectors: { size: size, distance: distance } })
  end

  def delete_collection(name)
    request(:delete, "/collections/#{esc(name)}")
  end

  def list_collections
    request(:get, "/collections").dig("result", "collections").map { |c| c["name"] }
  end

  def count(name)
    request(:post, "/collections/#{esc(name)}/points/count", { exact: true }).dig("result", "count")
  end

  def upsert(name, points)
    request(:put, "/collections/#{esc(name)}/points?wait=true", { points: points })
  end

  def delete_points(name, ids)
    request(:post, "/collections/#{esc(name)}/points/delete?wait=true", { points: ids })
  end

  def delete_points_by_filter(name, filter)
    request(:post, "/collections/#{esc(name)}/points/delete?wait=true", { filter: filter })
  end

  def create_payload_index(name, field, schema)
    request(:put, "/collections/#{esc(name)}/index?wait=true", { field_name: field, field_schema: schema })
  end

  def retrieve(name, ids, with_vector: false, with_payload: true)
    request(:post, "/collections/#{esc(name)}/points",
            { ids: ids, with_vector: with_vector, with_payload: with_payload })["result"]
  end

  def scroll(name, limit:, with_vector: false, with_payload: true)
    request(:post, "/collections/#{esc(name)}/points/scroll",
            { limit: limit, with_vector: with_vector, with_payload: with_payload }).dig("result", "points")
  end

  def query(name, vector:, limit:, with_payload: true)
    request(:post, "/collections/#{esc(name)}/points/query",
            { query: vector, limit: limit, with_payload: with_payload }).dig("result", "points")
  end

  private

  def esc(name) = ERB::Util.url_encode(name)

  def request(method, path, body = nil)
    uri = URI.join(@base.to_s + "/", path.delete_prefix("/"))
    klass = { get: Net::HTTP::Get, put: Net::HTTP::Put, post: Net::HTTP::Post, delete: Net::HTTP::Delete }.fetch(method)
    req = klass.new(uri)
    req["Content-Type"] = "application/json"
    req["api-key"] = @api_key if @api_key
    req.body = JSON.generate(body) if body

    res = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https", open_timeout: 3, read_timeout: 15) do |http|
      http.request(req)
    end
    data = res.body.present? ? JSON.parse(res.body) : {}
    raise Error, (data.dig("status", "error") || "Qdrant returned HTTP #{res.code}") unless res.is_a?(Net::HTTPSuccess)
    data
  rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH, SocketError, Net::OpenTimeout, Net::ReadTimeout => e
    raise Unavailable, "Qdrant is not reachable (#{e.class.name.demodulize})"
  end
end
