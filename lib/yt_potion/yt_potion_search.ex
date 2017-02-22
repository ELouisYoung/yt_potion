defmodule YtPotion.Search do
  import YtPotion.Base

  @moduledoc """
  Provides methods to interact with the YouTube Videos API
  """

  @doc """

  Returns the YouTube API response

  ## Examples

  ```elixir

    iex > YtPotion.Search.list(%{part: "snippet"}, %{channelId: "UC0PEAMcRK7Mnn2G1bCBXOWQ", maxResults: "2", type: "video", order: "date"})

  {:ok,
   %HTTPoison.Response{body: "{\n \"kind\": \"youtube#searchListResponse\",\n \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/UFTscJErJZ5v6sBz4S4c76KNeQo\\\"\",\n \"nextPageToken\": \"CAIQAA\",\n \"regionCode\": \"US\",\n \"pageInfo\": {\n  \"totalResults\": 123,\n  \"resultsPerPage\": 2\n },\n \"items\": [\n  {\n   \"kind\": \"youtube#searchResult\",\n   \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/-SO5eWti4TqSKXPfyLBxf4eOrhA\\\"\",\n   \"id\": {\n    \"kind\": \"youtube#video\",\n    \"videoId\": \"vaGoDZN8XNM\"\n   },\n   \"snippet\": {\n    \"publishedAt\": \"2016-09-13T02:00:00.000Z\",\n    \"channelId\": \"UC0PEAMcRK7Mnn2G1bCBXOWQ\",\n    \"title\": \"Jessie Graff at the National Finals: Stage 2 - American Ninja Warrior 2016\",\n    \"description\": \"Watch Jessie Graff's Stage 2 run. » Subscribe for More: http://bit.ly/NBCNinjaWarrior » Watch Full Episodes Free: ...\",\n    \"thumbnails\": {\n     \"default\": {\n      \"url\": \"https://i.ytimg.com/vi/vaGoDZN8XNM/default.jpg\",\n      \"width\": 120,\n      \"height\": 90\n     },\n     \"medium\": {\n      \"url\": \"https://i.ytimg.com/vi/vaGoDZN8XNM/mqdefault.jpg\",\n      \"width\": 320,\n      \"height\": 180\n     },\n     \"high\": {\n      \"url\": \"https://i.ytimg.com/vi/vaGoDZN8XNM/hqdefault.jpg\",\n      \"width\": 480,\n      \"height\": 360\n     }\n    },\n    \"channelTitle\": \"American Ninja Warrior\",\n    \"liveBroadcastContent\": \"none\"\n   }\n  },\n  {\n   \"kind\": \"youtube#searchResult\",\n   \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/gO_4Y1KNQBNNcmciMFzTus_DL18\\\"\",\n   \"id\": {\n    \"kind\": \"youtube#video\",\n    \"videoId\": \"JjMpzTOGywQ\"\n   },\n   \"snippet\": {\n    \"publishedAt\": \"2016-09-13T02:00:00.000Z\",\n    \"channelId\": \"UC0PEAMcRK7Mnn2G1bCBXOWQ\",\n    \"title\": \"Daniel Gil at the National Finals: Stage 2 - American Ninja Warrior 2016\",\n    \"description\": \"Watch Daniel Gil's Stage 2 run. » Subscribe for More: http://bit.ly/NBCNinjaWarrior » Watch Full Episodes Free: ...\",\n    \"thumbnails\": {\n     \"default\": {\n      \"url\": \"https://i.ytimg.com/vi/JjMpzTOGywQ/default.jpg\",\n      \"width\": 120,\n      \"height\": 90\n     },\n     \"medium\": {\n      \"url\": \"https://i.ytimg.com/vi/JjMpzTOGywQ/mqdefault.jpg\",\n      \"width\": 320,\n      \"height\": 180\n     },\n     \"high\": {\n      \"url\": \"https://i.ytimg.com/vi/JjMpzTOGywQ/hqdefault.jpg\",\n      \"width\": 480,\n      \"height\": 360\n     }\n    },\n    \"channelTitle\": \"American Ninja Warrior\",\n    \"liveBroadcastContent\": \"none\"\n   }\n  }\n ]\n}\n",
    headers: [{"Expires", "Wed, 01 Feb 2017 05:33:34 GMT"},
     {"Date", "Wed, 01 Feb 2017 05:33:34 GMT"},
     {"Cache-Control", "private, max-age=120, must-revalidate, no-transform"},
     {"ETag", "\"gMxXHe-zinKdE9lTnzKu8vjcmDI/UFTscJErJZ5v6sBz4S4c76KNeQo\""},
     {"Vary", "Origin"}, {"Vary", "X-Origin"},
     {"Content-Type", "application/json; charset=UTF-8"},
     {"X-Content-Type-Options", "nosniff"}, {"X-Frame-Options", "SAMEORIGIN"},
     {"X-XSS-Protection", "1; mode=block"}, {"Content-Length", "2302"},
     {"Server", "GSE"}, {"Alt-Svc", "quic=\":443\"; ma=2592000; v=\"35,34\""}],
    status_code: 200}}

  ```

  """

  @spec list(map, map) :: map #HTTPoison.Response{}
  yt_macro_call list(filter_part, options \\ %{}) do
    get_request("search", Map.merge(filter_part, options))
  end
end
