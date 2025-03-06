defmodule MixProject do
  use Mix.Project

  def project do
    [
      app: :tpi_cli,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      escript: escript(),
      deps: deps()
    ]
  end

  defp escript do
    [
      main_module: Main,
      name: :tpi,
      path: "tpi"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end
