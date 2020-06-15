# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :log_lady,
  ecto_repos: [LogLady.Repo]

# Configures the endpoint
config :log_lady, LogLadyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hRRtJz+uYiNBdldKA2PK4UjA+BD/DiiuFFRKlbVSQiiCr1kb+tbHqMUR0GpcyLBE",
  render_errors: [view: LogLadyWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: LogLady.PubSub,
  live_view: [signing_salt: "P3JhtMw3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
