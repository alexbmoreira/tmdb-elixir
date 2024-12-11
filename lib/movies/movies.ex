defmodule TmdbElixir.Movies do
  @moduledoc """
  Used for making calls related to movies.
  """

  alias TmdbElixir.Base

  @doc """
  Get the top level details of a movie by ID.

  Returns a map with data for the corresponding movie.

  Accepts query params listed in the [TMDb Docs](https://developer.themoviedb.org/reference/movie-details) in the form of a map.

  ## Examples

      iex> TmdbElixir.Movies.find(11836)
      %{
        "title" => "The SpongeBob SquarePants Movie",
        ...
      }
  """
  def find(id, params \\ %{}) do
    Base.get!("movie/#{id}?#{URI.encode_query(params)}").body
  end

  @doc """
  Get a list of movies ordered by popularity.

  Returns a map with a paginated list of popular movies.

  Accepts query params listed in the [TMDb Docs](https://developer.themoviedb.org/reference/movie-popular-list) in the form of a map.

  ## Examples

      iex> TmdbElixir.Movies.popular()
      %{
        "page" => 1,
        "results" => [
          ...
        ],,
        "total_pages" => 10,
        "total_results" => 250
      }
  """
  @doc since: "0.1.0"
  def popular(params \\ %{}) do
    Base.get!("movie/popular?#{URI.encode_query(params)}").body
  end
end
