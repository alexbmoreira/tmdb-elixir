# TMDb Elixir

An Elixir library for the TMDb API

[Docs]

## Installation

Add `tmdb_elixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:tmdb_elixir, "~> 0.1.0"}
  ]
end
```

## Usage

### Searching for movies or people:

```elixir
TmdbElixir.Search.movies("spongebob")

TmdbElixir.Search.people("brad pitt")
```

### Finding by id:

```elixir
TmdbElixir.Movies.find(11836)

TmdbElixir.People.find(287)
```
