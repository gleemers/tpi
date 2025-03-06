defmodule TpiWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TpiWebWeb.Telemetry,
      TpiWeb.Repo,
      {DNSCluster, query: Application.get_env(:tpi_web, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: TpiWeb.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: TpiWeb.Finch},
      # Start a worker by calling: TpiWeb.Worker.start_link(arg)
      # {TpiWeb.Worker, arg},
      # Start to serve requests, typically the last entry
      TpiWebWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TpiWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TpiWebWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
