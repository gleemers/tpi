defmodule TpiWeb.Repo do
  use Ecto.Repo,
    otp_app: :tpi_web,
    adapter: Ecto.Adapters.Postgres
end
