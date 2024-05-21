# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :delivery_center_parsing_api,
  ecto_repos: [DeliveryCenterParsingApi.Repo]

# Configures the endpoint
config :delivery_center_parsing_api, DeliveryCenterParsingApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hFNvnVpv6Sz1JTwdT64H/FPamTJHlpGIKFt8lSittw/4IIqioT+ktw0TjIkgahoB",
  render_errors: [view: DeliveryCenterParsingApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: DeliveryCenterParsingApi.PubSub,
  live_view: [signing_salt: "OS2p003Y"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
