# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :acceptancetesting,
  ecto_repos: [Acceptancetesting.Repo]

# Configures the endpoint
config :acceptancetesting, Acceptancetesting.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "taK67PwWBjQDRhSF/Kl8i87VAWlMUOn494HmevTXMeXVpcONldu4YPOrx5JUBSH+",
  render_errors: [view: Acceptancetesting.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Acceptancetesting.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Chrome with selenium
config :hound, driver: "chrome_driver"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
