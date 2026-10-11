ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)
    # Each worker gets its own Qdrant collection names (QdrantClient.env_prefix), since fixture ids repeat
    parallelize_setup { |worker| ENV["LAB_TEST_WORKER"] = worker.to_s }

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
