defmodule YtPotion.Video do
  import YtPotion
  import YtPotion.Parser

  @moduledoc """
  Provides methods to interact with the YouTube Videos API
  """

  @doc """

  Returns a list containing the YouTube API response; multiple list items are
  returned for multiple video ids

  ##Examples

    iex > YtPotion.Video.list(%{id: "gben9fsNYTM,LTke1j_fkLc"}, "statistics")
    [%{"etag" => "\"gMxXHe-zinKdE9lTnzKu8vjcmDI/RItoE8lPFz5nGIw8tVfUxP28ayQ\"",
       "id" => "gben9fsNYTM", "kind" => "youtube#video",
       "statistics" => %{"commentCount" => "71", "dislikeCount" => "47",
         "favoriteCount" => "0", "likeCount" => "1345", "viewCount" => "137288"}},
     %{"etag" => "\"gMxXHe-zinKdE9lTnzKu8vjcmDI/dmJoW7sywGPqkBqofJS-Ak59ytM\"",
       "id" => "LTke1j_fkLc", "kind" => "youtube#video",
       "statistics" => %{"commentCount" => "112", "dislikeCount" => "8",
         "favoriteCount" => "0", "likeCount" => "727", "viewCount" => "72789"}}]
  """

  @spec list(Map, String.t) :: Map #HTTPoison.Response{}
  def list(filters, part) do
    get_request("videos", Map.merge(filters, %{part: part}))
    |> parse_json_body
  end
end
