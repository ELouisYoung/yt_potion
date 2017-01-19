defmodule YtPotion.Video do
  import YtPotion

  @moduledoc """
  Provides methods to interact with the YouTube Channels API
  """

  @doc """

  Returns an HTTPotion response containing the YouTube API response

  ##Examples

    iex > YtPotion.Video.list(%{id: "gben9fsNYTM,LTke1j_fkLc"}, "statistics")

    {:ok,
     %HTTPoison.Response{body: "{\n \"kind\": \"youtube#videoListResponse\",\n \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/fY-UYUPvELOAPvePaCpJgp2SQB8\\\"\",\n \"pageInfo\": {\n  \"totalResults\": 2,\n  \"resultsPerPage\": 2\n },\n \"items\": [\n  {\n   \"kind\": \"youtube#video\",\n   \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/OZzMLeF1dyinTtu6FFysFmdhrbc\\\"\",\n   \"id\": \"gben9fsNYTM\",\n   \"statistics\": {\n    \"viewCount\": \"117855\",\n    \"likeCount\": \"1202\",\n    \"dislikeCount\": \"44\",\n    \"favoriteCount\": \"0\",\n    \"commentCount\": \"59\"\n   }\n  },\n  {\n   \"kind\": \"youtube#video\",\n   \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/kFlsq9cMIJ5BnxFp2Bm8QNE-F1Q\\\"\",\n   \"id\": \"LTke1j_fkLc\",\n   \"statistics\": {\n    \"viewCount\": \"72391\",\n    \"likeCount\": \"723\",\n    \"dislikeCount\": \"7\",\n    \"favoriteCount\": \"0\",\n    \"commentCount\": \"112\"\n   }\n  }\n ]\n}\n",
      headers: [{"Expires", "Fri, 13 Jan 2017 18:48:27 GMT"},
       {"Date", "Fri, 13 Jan 2017 18:48:27 GMT"},
       {"Cache-Control", "private, max-age=0, must-revalidate, no-transform"},
       {"ETag", "\"gMxXHe-zinKdE9lTnzKu8vjcmDI/fY-UYUPvELOAPvePaCpJgp2SQB8\""},
       {"Vary", "Origin"}, {"Vary", "X-Origin"},
       {"Content-Type", "application/json; charset=UTF-8"},
       {"X-Content-Type-Options", "nosniff"}, {"X-Frame-Options", "SAMEORIGIN"},
       {"X-XSS-Protection", "1; mode=block"}, {"Content-Length", "764"},
       {"Server", "GSE"}, {"Alt-Svc", "quic=\":443\"; ma=2592000; v=\"35,34\""}],
      status_code: 200}}
  """

  @spec list(Map, String.t) :: Map #HTTPoison.Response{}
  def list(filters, part) do
    get_request("videos", Map.merge(filters, %{part: part}))
  end
end
