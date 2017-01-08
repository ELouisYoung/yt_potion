defmodule YtPotion do
  use HTTPoison.Base

  def config, do: Application.get_env(:yt_potion, YtPotion)
  def config(key), do: Keyword.get(config, key)

  def base_url(url) do
    "https://www.googleapis.com/youtube/v3/" <> url
  end

  if !Application.get_env(:yt_potion, YtPotion), do: raise "YtPotion is not configured"
  # channel_ids "UCy86eFkQzXCZOfaFR7OX5tw,UCIdy9BaEy8QTU80L9diHP9A"

  def fetch_channel_data(channel_ids) do
    # channel_ids "UC0PEAMcRK7Mnn2G1bCBXOWQ,UCyMafjsLsswLvsd4u_ilprQ"
    get_request("channels", %{id: channel_ids, part: "statistics"})
  end

  def fetch_video_data(video_ids) do
    get_request("videos", %{id: video_ids, part: "statistics"})
  end

  defp get_request(url_part, query_opts) do
    HTTPoison.get(base_url(url_part), query: Map.merge(query_opts, %{key: config(:yt_api_key)}))
  end
end
