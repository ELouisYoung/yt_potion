defmodule YtPotion.Video do

  @moduledoc """
  Provides methods to interact with the YouTube Videos API
  """

  @doc """

  Returns a list containing the YouTube API response; multiple list items are
  returned for multiple video ids

  ## Examples

    iex > YtPotion.Video.list(%{id: "gben9fsNYTM,LTke1j_fkLc"}, "statistics")

    {:ok,
     %HTTPoison.Response{body: "{\n \"kind\": \"youtube#videoListResponse\",\n \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/VkN1rb33o20QpEbqSoDYD_uBVhk\\\"\",\n \"pageInfo\": {\n  \"totalResults\": 2,\n  \"resultsPerPage\": 2\n },\n \"items\": [\n  {\n   \"kind\": \"youtube#video\",\n   \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/4iGPLnHQ0TP8qMdCSoYGmZDc0kY\\\"\",\n   \"id\": \"gben9fsNYTM\",\n   \"statistics\": {\n    \"viewCount\": \"142517\",\n    \"likeCount\": \"1384\",\n    \"dislikeCount\": \"47\",\n    \"favoriteCount\": \"0\",\n    \"commentCount\": \"76\"\n   }\n  },\n  {\n   \"kind\": \"youtube#video\",\n   \"etag\": \"\\\"gMxXHe-zinKdE9lTnzKu8vjcmDI/MZfxDD4YW6qu4n4TazWHAvc8mqU\\\"\",\n   \"id\": \"LTke1j_fkLc\",\n   \"statistics\": {\n    \"viewCount\": \"72923\",\n    \"likeCount\": \"731\",\n    \"dislikeCount\": \"8\",\n    \"favoriteCount\": \"0\",\n    \"commentCount\": \"112\"\n   }\n  }\n ]\n}\n",
      headers: [{"Expires", "Wed, 01 Feb 2017 01:53:21 GMT"},
       {"Date", "Wed, 01 Feb 2017 01:53:21 GMT"},
       {"Cache-Control", "private, max-age=0, must-revalidate, no-transform"},
       {"ETag", "\"gMxXHe-zinKdE9lTnzKu8vjcmDI/VkN1rb33o20QpEbqSoDYD_uBVhk\""},
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
