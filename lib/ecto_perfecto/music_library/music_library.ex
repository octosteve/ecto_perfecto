defmodule EctoPerfecto.MusicLibrary do
  # https://hexdocs.pm/ecto/Ecto.Query.API.html
  alias EctoPerfecto.Repo
  alias EctoPerfecto.MusicLibrary.Artist
  def get_all_artists do
    Artist
    |> Repo.all
    |> Repo.preload(:albums)
  end

  def search_artist_by_name(name: name) do
    Artist.search(name)
    |> Repo.all
    |> Repo.preload(:albums)
  end
end
