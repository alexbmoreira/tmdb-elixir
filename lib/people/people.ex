defmodule TmdbElixir.People do
  use TmdbElixir.Base

  def find(id, params \\ %{}) do
    get!("person/#{id}?#{URI.encode_query(params)}").body
  end
end
