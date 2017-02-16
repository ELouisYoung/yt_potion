defmodule YtPotion.Channel do
  import YtPotion.Base

  @moduledoc """
  Provides methods to interact with the YouTube Channels API
  """

  @doc """

  Returns the YouTube API response

  ## Examples

  ```elixir

    iex > YtPotion.Channel.list(%{id: "UC0PEAMcRK7Mnn2G1bCBXOWQ,UCyMafjsLsswLvsd4u_ilprQ", part: "statistics"})

    {:ok,
     %HTTPoison.Response{body: "{\n \"kind\": \"youtube#channelListResponse\",\n \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/KeGCuFV_wF8Z6XHAhbUu6whFc-0\\\"\",\n \"pageInfo\": {\n  \"totalResults\": 2,\n  \"resultsPerPage\": 2\n },\n \"items\": [\n  {\n   \"kind\": \"youtube#channel\",\n   \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/tMqC9AOnNDFtmDACV9EQD1PdRgE\\\"\",\n   \"id\": \"UCyMafjsLsswLvsd4u_ilprQ\",\n   \"statistics\": {\n    \"viewCount\": \"0\",\n    \"commentCount\": \"0\",\n    \"subscriberCount\": \"72019\",\n    \"hiddenSubscriberCount\": false,\n    \"videoCount\": \"0\"\n   }\n  },\n  {\n   \"kind\": \"youtube#channel\",\n   \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/2_DtWcM4_xfXufIwmhglg-w9N98\\\"\",\n   \"id\": \"UC0PEAMcRK7Mnn2G1bCBXOWQ\",\n   \"statistics\": {\n    \"viewCount\": \"21305557\",\n    \"commentCount\": \"0\",\n    \"subscriberCount\": \"82335\",\n    \"hiddenSubscriberCount\": false,\n    \"videoCount\": \"105\"\n   }\n  }\n ]\n}\n",
      headers: [{"Expires", "Wed, 01 Feb 2017 01:50:40 GMT"},
       {"Date", "Wed, 01 Feb 2017 01:50:40 GMT"},
       {"Cache-Control", "private, max-age=0, must-revalidate, no-transform"},
       {"ETag", "\"gMxXHe-zinKdE9lTnzKu8vjcmDI/KeGCuFV_wF8Z6XHAhbUu6whFc-0\""},
       {"Vary", "Origin"}, {"Vary", "X-Origin"},
       {"Content-Type", "application/json; charset=UTF-8"},
       {"X-Content-Type-Options", "nosniff"}, {"X-Frame-Options", "SAMEORIGIN"},
       {"X-XSS-Protection", "1; mode=block"}, {"Content-Length", "823"},
       {"Server", "GSE"}, {"Alt-Svc", "quic=\":443\"; ma=2592000; v=\"35,34\""}],
      status_code: 200}}

  ```
  """

  @spec list(map, map) :: map #HTTPoison.Response{}
  def list(filter_part, options \\ %{}) do
    # channel_ids "UC0PEAMcRK7Mnn2G1bCBXOWQ,UCyMafjsLsswLvsd4u_ilprQ"
    get_request("channels", Map.merge(filter_part, options))
  end
end
