defmodule YtPotion.Video do
  import YtPotion

  def fetch_video_data(video_ids) do
    YtPotion.get_request("videos", %{id: video_ids, part: "statistics"})
  end
end
