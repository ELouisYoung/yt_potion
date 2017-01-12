defmodule YtPotion.Channel do
  import YtPotion

  def fetch_channel_data(channel_ids) do
    # channel_ids "UC0PEAMcRK7Mnn2G1bCBXOWQ,UCyMafjsLsswLvsd4u_ilprQ"
    YtPotion.get_request("channels", %{id: channel_ids, part: "statistics"})
  end
end
