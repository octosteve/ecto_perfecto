defmodule EctoPerfecto.Album do
  use Ecto.Schema

  schema "albums" do
    field :title, :string
    belongs_to :artist, EctoPerfecto.Artist
  end
end
