defmodule YtPotion.Mixfile do
  use Mix.Project

  def project do
    [app: :yt_potion,
     version: "0.1.2",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     deps: deps(),
     package: package()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README", "LICENSE*"],
      maintainers: ["Bruce Park"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/treble37/yt_potion"}
    ]
  end

  defp description do
    """
    YouTube v3 Data API Wrapper
    """
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev},
     {:httpoison, "~> 0.10.0"},
     {:json, "~> 1.0"}]
  end
end
