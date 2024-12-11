import Config

config :tmdb_elixir,
  auth_token: System.get_env("TMDB_AUTH_TOKEN")

import_config "#{config_env()}.exs"
