defmodule Spellbook.Damages.Entities.Damage do
  use Ecto.Schema

  import Ecto.Changeset

  alias Spellbook.Spellbooks.Entities.Spell

  @required [:nameDamage]

  schema "damages" do
    field :nameDamage, :string

    has_many :spellist, Spell

    timestamps()
  end

  @doc false
  def create_changeset(%__MODULE__{} = damage, attrs) do
    damage
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> validate_format(:nameDamage, ~r/^[a-zA-Z]*$/, message: "invalid_format")
    |> unique_constraint(:damage, message: "Such a damage already exists")
  end

  def update_changeset(%__MODULE__{} = damage, attrs) do
    damage
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> validate_format(:nameDamage, ~r/^[a-zA-Z]*$/, message: "invalid_format")
    |> unique_constraint(:damage, message: "Such a damage already exists")
  end
end
