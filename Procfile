# Heroku: Thruster sits in front of Puma and compresses pages, CSS and JavaScript (gzip) and caches static files.
web: HTTP_PORT=$PORT TARGET_PORT=3001 bundle exec thrust bin/rails server -p 3001
# Runs before each new version goes live: build/update the database, create the admin (ADMIN_EMAIL/ADMIN_PASSWORD)
# and load every course from lib/*_content.rb (idempotent, about 10 seconds).
release: bundle exec rails db:prepare && bundle exec rails db:seed && bundle exec rails content:everything
