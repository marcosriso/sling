defmodule Sling.Mixfile do
  use Mix.Project

  def project do
    [app: :sling,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
    [applications: [:mongodb, :poolboy]]
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
    [
        {:mongodb, ">= 0.0.0"},
        {:poolboy, ">= 0.0.0"},
        {:json, "~> 0.3.0"}
    ]
  end
end
