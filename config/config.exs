import Config

config :tmdb_elixir,
  # auth_token: System.get_env("TMDB_AUTH_TOKEN")
  auth_token: "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhZWI0ZWZjNTE4Yjc5YzVjZDdlMGMzMTE3NDU3MmMzNCIsIm5iZiI6MTU4OTkzMzUwMC40OTQwMDAyLCJzdWIiOiI1ZWM0NzViYzhlMmUwMDNkZDYxMGYyMDgiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.1EOKF7OItTLHufwkNgEVgLT1mPGyO3EUs8C9UiNmKhE"

import_config "#{config_env()}.exs"
