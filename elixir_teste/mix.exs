defmodule ElixirTeste.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_teste,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :observer, :wx, :runtime_tools],
      mod: {ElixirTeste.Aplicacao, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:quantum, "~> 3.4"},
      {:httpoison, "~> 2.0"},
      {:jason, "~> 1.4"},
      {:mock, "~> 0.3.7"}
    ]
  end
end
