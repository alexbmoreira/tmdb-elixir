defmodule TmdbElixir.Base do
  defmacro __using__(_) do
    quote do
      use HTTPoison.Base

      def process_response_body(body) do
        body
        |> Poison.decode!
      end

      def process_request_url(endpoint) do
        base_url = URI.parse("https://api.themoviedb.org/3/")
        URI.merge(base_url, endpoint) |> to_string()
      end

      def get!(url, headers \\ [], options \\ []) do
        request!(
          :get,
          url,
          "",
          headers ++ auth_headers(),
          options
        )
      end

      defp auth_headers, do: [{"Authorization", "Bearer #{Application.fetch_env!(:tmdb_elixir, :auth_token)}"}, {"accept", "application/json"}]
    end
  end
end
