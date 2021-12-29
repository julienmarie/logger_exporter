defmodule LoggerExporter.MixProject do
  use Mix.Project

  def project do
    [
      app: :logger_exporter,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:jason, "~> 1.2"},
      {:finch, "~> 0.8"},
      {:telemetry, "~> 0.4.2 or ~> 1.0"}
    ]
  end
end
