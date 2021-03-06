# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :chess_server,
  ecto_repos: [ChessServer.Repo]

# Configures the endpoint
config :chess_server, ChessServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UNRtf7BwRMOxQfZZq8eZXUEOS4wGaZQtiiFwiIG/97+qop55/0q3fg8SWZfsjzk2",
  render_errors: [view: ChessServerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ChessServer.PubSub,
  live_view: [signing_salt: "3yAlww6f"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
