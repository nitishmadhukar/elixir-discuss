# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dWxDFsn9t045I9a3drs+R1WPA+Zj2cNWkQveUO5rf0wGSJyD/5dQ+Xn8eZ+E2+72",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configures Auth
config :ueberauth, Ueberauth,
	providers: [
		github: { Ueberauth.Strategy.Github, [] }
	]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
	client_id: "365b7b1dcb7f53a6cc17",
	client_secret: "991e5d0bac6a163336bc7c603730faa8ecca7ea0"