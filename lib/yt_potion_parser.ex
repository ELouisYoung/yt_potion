defmodule YtPotion.Parser do
  def parse_json_body({status, response} = {_, %HTTPoison.Response{}}) do
    { _, json_data } = JSON.decode(response.body)
    json_data
  end
end
