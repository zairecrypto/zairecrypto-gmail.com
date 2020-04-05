# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :gallery, GalleryWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Pt5LCxPHuAK3HqhUmzTrsaIY5jl7rLoCx9DxJ8P0e5pO7FTTYgQ1lzv2EvxM7Znt",
  render_errors: [view: GalleryWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Gallery.PubSub,
           adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "qSVgUIEoU+pNRUp3csCbOFpWrKJY8o7s"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
