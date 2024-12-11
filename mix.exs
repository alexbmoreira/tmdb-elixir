defmodule TmdbElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :tmdb_elixir,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 2.0"},
      {:poison, "~> 6.0"}
    ]
  end

  defp description() do
    "An Elixir wrapper for using the TMDb (The Movie Database) API."
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/alexbmoreira/tmdb-elixir"}
    ]
  end
end
