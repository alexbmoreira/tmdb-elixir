defmodule TmdbElixir.Movies do
  use TmdbElixir.Base

  def find(id, params \\ %{}) do
    get!("movie/#{id}?#{URI.encode_query(params)}").body
  end

  def popular(params \\ %{}) do
    get!("movie/popular?#{URI.encode_query(params)}").body
  end
end
