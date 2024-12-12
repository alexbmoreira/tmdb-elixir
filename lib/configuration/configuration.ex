defmodule TmdbElixir.Configuration do
  @moduledoc """
  Used for making calls related to configuration details.
  """

  alias TmdbElixir.Base

  @doc """
  Get API configuration details.

  Returns a map configuration data API.

  See [TMDb Docs](https://developer.themoviedb.org/reference/configuration-details) for more info.

  ## Examples

      iex> TmdbElixir.Configuration.configuration()
      %{
        "images" => %{
          ...
        },
        ...
      }
  """
  def configuration do
    Base.get!("configuration").body
  end
end
