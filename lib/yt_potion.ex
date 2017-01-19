defmodule YtPotion do
  use HTTPoison.Base

  def config, do: Application.get_env(:yt_potion, YtPotion)
  def config(key), do: Keyword.get(config, key)

  def base_url(url) do
    "https://www.googleapis.com/youtube/v3/" <> url
  end

  if !Application.get_env(:yt_potion, YtPotion), do: raise "YtPotion is not configured"

  @spec get_request(String.t, String.t) :: Map #HTTPoison.Response{}
  def get_request(url_part, query_opts) do
    HTTPoison.get(base_url(url_part), [], params: Map.merge(query_opts, %{key: YtPotion.config(:yt_api_key)}))
  end
end
