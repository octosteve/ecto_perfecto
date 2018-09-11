defmodule EctoPerfecto.MusicLibrary.Artist do
  use Ecto.Schema
  import Ecto.Query, only: [from: 2]

  schema "artists" do
    field :name, :string
    has_many :albums, EctoPerfecto.MusicLibrary.Album
  end

  def search(name) do
    from a in __MODULE__,
      where: ilike(a.name, ^"%#{name}%")
  end
end
