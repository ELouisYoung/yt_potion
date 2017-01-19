defmodule YtPotionTest do
  use ExUnit.Case
  doctest YtPotion

  test "gets current configurations" do
    config = YtPotion.config
    assert Keyword.has_key?(config, :yt_api_key)
  end
end
