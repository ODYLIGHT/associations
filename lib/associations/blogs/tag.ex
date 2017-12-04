defmodule Associations.Blogs.Tag do
  use Ecto.Schema
  import Ecto.Changeset
  alias Associations.Blogs.Tag


  schema "tags" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Tag{} = tag, attrs) do
    tag
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
