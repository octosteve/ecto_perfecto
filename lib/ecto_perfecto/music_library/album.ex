defmodule EctoPerfecto.MusicLibrary.Album do
  use Ecto.Schema

  schema "albums" do
    field :title, :string
    belongs_to :artist, EctoPerfecto.MusicLibrary.Artist
  end
end
