# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :busi_api,
  ecto_repos: [BusiApi.Repo],
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "busi_api_dev",
  hostname: "localhost",
  pool_size: 10

# Configures the endpoint
config :busi_api, BusiApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "olVwiDB3qtUlzmcHbdcSLsLTEeudFKgH4fzJiTQVB1ThxlwwE4zVF598Kgbv8orN",
  render_errors: [view: BusiApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BusiApi.PubSub,
  live_view: [signing_salt: "VTTUVMHh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
