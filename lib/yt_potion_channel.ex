defmodule YtPotion.Channel do
  import YtPotion
  import YtPotion.Parser

  @moduledoc """
  Provides methods to interact with the YouTube Channels API
  """

  @doc """

  Returns a list containing the YouTube API response; multiple list items are
  returned for multiple channel ids

  ##Examples

    iex > YtPotion.Channel.list(%{id: "UC0PEAMcRK7Mnn2G1bCBXOWQ,UCyMafjsLsswLvsd4u_ilprQ"}, "statistics")

    [%{"etag" => "\"gMxXHe-zinKdE9lTnzKu8vjcmDI/a0yiOkJ620GmX2fdgkVW4FBsTtA\"",
       "id" => "UCyMafjsLsswLvsd4u_ilprQ", "kind" => "youtube#channel",
       "statistics" => %{"commentCount" => "0", "hiddenSubscriberCount" => false,
         "subscriberCount" => "72062", "videoCount" => "0", "viewCount" => "0"}},
     %{"etag" => "\"gMxXHe-zinKdE9lTnzKu8vjcmDI/hKg27K5aE2YGAaYqeC7wN7hn8tk\"",
       "id" => "UC0PEAMcRK7Mnn2G1bCBXOWQ", "kind" => "youtube#channel",
       "statistics" => %{"commentCount" => "0", "hiddenSubscriberCount" => false,
         "subscriberCount" => "81529", "videoCount" => "105",
         "viewCount" => "21053562"}}]
  """

  @spec list(Map, String.t) :: Map #HTTPoison.Response{}
  def list(filters, part) do
    # channel_ids "UC0PEAMcRK7Mnn2G1bCBXOWQ,UCyMafjsLsswLvsd4u_ilprQ"
    get_request("channels", Map.merge(filters, %{part: part}))
    |> parse_json_body
  end
end
