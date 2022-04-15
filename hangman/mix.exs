defmodule Hangman.MixProject do
  use Mix.Project

  def project do
    [
      app: :hangman,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      #added dictionary dependency using path: tells mix that it can
      #find this dependency in local file system, in a dictionary
      #parallel to the current application
      {:dictionary, path: "../dictionary"},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
    ]
  end
end
