use Mix.Config

config :ecto_perfecto, EctoPerfecto.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: "ecto://postgres:postgres@localhost:1337/ecto_perfecto"

config :ecto_perfecto, :ecto_repos, [EctoPerfecto.Repo]

#     import_config "#{Mix.env()}.exs"
