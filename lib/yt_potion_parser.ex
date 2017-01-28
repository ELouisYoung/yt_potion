defmodule YtPotion.Parser do
  def parse_json_body({status, response} = {_, %HTTPoison.Response{}}) do
    { _, json_data } = JSON.decode(response.body)
    parse_items_response(json_data)
  end

  def parse_items_response(json_data = %{"error" => _params}) do
    {_, json_data } = JSON.encode(json_data)
    raise_http_error("YT API error: #{json_data}")
  end

  def parse_items_response(json_data = %{"items" => _params}), do: json_data["items"]

  defp raise_http_error(message) do
    raise %HTTPoison.Error{id: nil, reason: message}
  end
end
