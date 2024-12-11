defmodule TmdbElixir.Search do
  use TmdbElixir.Base

  def movies(query, params \\ %{}) do
    search("movie", query, params)
  end

  def people(query, params \\ %{}) do
    search("person", query, params)
  end

  defp search(endpoint, query, params) do
    params = Map.merge(params, %{query: query})
    get!("search/#{endpoint}?#{URI.encode_query(params)}").body
  end
end
