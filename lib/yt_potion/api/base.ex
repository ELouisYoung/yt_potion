defmodule YtPotion.Base do
  use HTTPoison.Base

  def base_url(path) do
    "https://www.googleapis.com/youtube/v3/#{path}"
  end

  @spec get_request(String.t, map) :: map #HTTPoison.Response{}
  def get_request(url_part, query_opts) do
    HTTPoison.get(base_url(url_part), [], params: Map.merge(query_opts, %{key: YtPotion.Config.config(:yt_api_key)}))
  end
end
