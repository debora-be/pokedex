defmodule Pokedex.Repo do
  use Ecto.Repo,
    otp_app: :pokedex,
    adapter: ClickhouseEcto
end
