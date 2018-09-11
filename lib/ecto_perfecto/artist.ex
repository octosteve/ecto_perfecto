defmodule EctoPerfecto.Artist do
  use Ecto.Schema

  schema "artists" do
    field :name, :string
    has_many :albums, EctoPerfecto.Album
  end
end
