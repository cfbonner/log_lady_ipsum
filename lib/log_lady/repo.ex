defmodule LogLady.Repo do
  use Ecto.Repo,
    otp_app: :log_lady,
    adapter: Ecto.Adapters.Postgres
end
