# The settings here, if defined, override the settings in config/database.yml,
# config/unicorn/unicorn.rb, config/danbooru_local_config.rb, and
# ~/.danbooru/{secret_token,session_secret_key}.
#
# `.env.$RAILS_ENV` takes precedence over .env, and .env.local takes
# precedence over .env and `.env.$RAILS_ENV`.
#
# In other words: put your shared config in .env.local, and your put
# environment-specific config in .env.development / .env.production / .env.test.

#
# Unicorn
#

# These settings only take effect when running with `bundle exec unicorn -c config/unicorn/unicorn.rb`.

# export UNICORN_ROOT="$(pwd)"
# export UNICORN_LISTEN=127.0.0.1:9000
# export UNICORN_PROCESSES=1
# export UNICORN_TIMEOUT=90
# export UNICORN_LOG="log/unicorn-${UNICORN_LISTEN}.log"
# export UNICORN_PIDFILE="$UNICORN_ROOT/tmp/pids/unicorn-${UNICORN_LISTEN}.pid"

# These only take effect if you're running unicorn as root in order to bind to
# port 80 and need to drop privileges. Reverse proxying behind nginx is a better idea.
# export UNICORN_USER=danbooru
# export UNICORN_GROUP=danbooru

#
# Database
#

# DATABASE_URL takes precedence over config/database.yml if defined.

# Put these in .env.production or .env.development to define your dev/prod
# databases. Do not define it in .env or .env.local! It will be taken as your
# test database too, and rails will wipe it if you run the test suite.
#
# If you are connecting to PostgreSQL via socket, omit the hostname (e.g.
# postgresql:///danbooru2)
#export DATABASE_URL="postgresql://danbooru:foobarXYZ123@postgres/danbooru2"
#export ARCHIVE_DATABASE_URL="postgresql://danbooru:foobarXYZ123@postgres/danbooru2"
#export RO_DATABASE_URL="$DATABASE_URL"

# Put these in .env.test to define your test database.
# export DATABASE_URL="postgresql://localhost/danbooru2_test"
# export RO_DATABASE_URL="postgresql://localhost/danbooru2_test"
# export ARCHIVE_DATABASE_URL="postgresql://localhost/danbooru2_archive_test"

#
# Rails
#

# These take precedence over ~/.danbooru/{secret_token,session_secret_key}.
# openssl rand -hex 32 > ~/.danbooru/secret_token
# openssl rand -hex 32 > ~/.danbooru/session_secret_key
export SECRET_TOKEN=5902091a0f8e31ceca499b6d5f39dd10f7f97c5bd457b3a08ee55638e2b0df10
export SESSION_SECRET_KEY=941b5047ef21df82fca8812eef18cbe29580956d5e123a750c4d911164fb8f9f

# Override the normal Gemfile with another file.
# export BUNDLE_GEMFILE=

# Logs a stacktrace for each SQL query.
# export QUERY_TRACE=

#
# Danbooru
#

# These take precedence over config/danbooru_local_config.rb. Any setting in
# danbooru_default_config.rb can be defined here by prefixing it with `DANBOORU_`.

# export DANBOORU_APP_NAME=
# export DANBOORU_VERSION=
# export DANBOORU_HOSTNAME=
# export DANBOORU_PIXIV_LOGIN=
# export DANBOORU_PIXIV_PASSWORD=
# export DANBOORU_TWITTER_API_KEY=
# export DANBOORU_TWITTER_API_SECRET=
# export DANBOORU_AWS_ACCESS_KEY_ID=
# export DANBOORU_AWS_SECRET_ACCESS_KEY=
# export DANBOORU_AWS_SQS_REGION=
# export DANBOORU_IQDBS_AUTH_KEY=
# export DANBOORU_IQDBS_SERVER=
# export DANBOORU_CCS_SERVER=
# export DANBOORU_CCS_KEY=
