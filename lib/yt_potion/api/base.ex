defmodule YtPotion.Base do
  @moduledoc """
  Provides basic and common functionalities for Trello API.
  """

  use HTTPoison.Base

  @doc """
  Define a function with this `yt_api_call` macro instead of `def`
  Notes: This is a bit of a metaprogramming experiment to see if it can help
  reduce the amount of code in the library
  """
  defmacro yt_macro_call(call, expression) do
    quote do
      def unquote(call) do  # Defines a function with the definition supplied
        {:ok, unquote(expression[:do])}  # execute anything in the `do` block
      end
    end
  end

  def base_url(path) do
    "https://www.googleapis.com/youtube/v3/#{path}"
  end

  @spec get_request(String.t, map) :: map #HTTPoison.Response{}
  def get_request(url_part, query_opts) do
    HTTPoison.get(base_url(url_part), [], params: Map.merge(query_opts, %{key: YtPotion.Config.config(:yt_api_key)}))
  end
end
