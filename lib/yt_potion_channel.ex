defmodule YtPotion.Channel do
  import YtPotion

  @moduledoc """
  Provides methods to interact with the YouTube Channels API
  """

  @doc """

  Returns an HTTPotion response containing the YouTube API response

  ##Examples

    iex > YtPotion.Channel.list(%{id: "UC0PEAMcRK7Mnn2G1bCBXOWQ,UCyMafjsLsswLvsd4u_ilprQ"}, "statistics")

    {:ok,
     %HTTPoison.Response{body: "{\n \"kind\": \"youtube#channelListResponse\",\n \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/llTP4XX3U2V3CKvM5ewcV0RG9wQ\\\"\",\n \"pageInfo\": {\n  \"totalResults\": 2,\n  \"resultsPerPage\": 2\n },\n \"items\": [\n  {\n   \"kind\": \"youtube#channel\",\n   \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/l42UKU2YV3Xoe3wTi5PFgnQC0fU\\\"\",\n   \"id\": \"UCyMafjsLsswLvsd4u_ilprQ\",\n   \"statistics\": {\n    \"viewCount\": \"0\",\n    \"commentCount\": \"0\",\n    \"subscriberCount\": \"72267\",\n    \"hiddenSubscriberCount\": false,\n    \"videoCount\": \"0\"\n   }\n  },\n  {\n   \"kind\": \"youtube#channel\",\n   \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/RcIG5BifcBCDmogDxdjdnqA5eOo\\\"\",\n   \"id\": \"UC0PEAMcRK7Mnn2G1bCBXOWQ\",\n   \"statistics\": {\n    \"viewCount\": \"20179679\",\n    \"commentCount\": \"0\",\n    \"subscriberCount\": \"78663\",\n    \"hiddenSubscriberCount\": false,\n    \"videoCount\": \"105\"\n   }\n  }\n ]\n}\n",
      headers: [{"Expires", "Fri, 13 Jan 2017 18:37:21 GMT"},
       {"Date", "Fri, 13 Jan 2017 18:37:21 GMT"},
       {"Cache-Control", "private, max-age=0, must-revalidate, no-transform"},
       {"ETag", "\"gMxXHe-zinKdE9lTnzKu8vjcmDI/llTP4XX3U2V3CKvM5ewcV0RG9wQ\""},
       {"Vary", "Origin"}, {"Vary", "X-Origin"},
       {"Content-Type", "application/json; charset=UTF-8"},
       {"X-Content-Type-Options", "nosniff"}, {"X-Frame-Options", "SAMEORIGIN"},
       {"X-XSS-Protection", "1; mode=block"}, {"Content-Length", "823"},
       {"Server", "GSE"}, {"Alt-Svc", "quic=\":443\"; ma=2592000; v=\"35,34\""}],
      status_code: 200}}

  """

  def list(filters, part) do
    # channel_ids "UC0PEAMcRK7Mnn2G1bCBXOWQ,UCyMafjsLsswLvsd4u_ilprQ"
    get_request("channels", Map.merge(filters, %{part: part}))
  end
end
