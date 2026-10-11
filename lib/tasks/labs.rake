namespace :labs do
  desc "Delete Vector Lab and RAG Lab collections unused for 30 days (and orphaned lab collections in Qdrant)"
  task cleanup: :environment do
    result = LabCleanupJob.perform_now
    puts result ? "Removed #{result[:stale]} stale and #{result[:orphans]} orphaned collections." : "Qdrant unreachable; nothing removed."
  end
end
