defmodule Spellbook.Schools.Entities.School do
  use Ecto.Schema
  import Ecto.Changeset

  @required [:nameSchool]

  schema "schools" do
    field :nameSchool, :string

    timestamps()
  end

  @doc false
  def create_changeset(%__MODULE__{} = school, attrs) do
    school
    |> cast(attrs, @required)
    |> validate_format(:nameSchool, ~r/^[a-zA-Z]*$/, message: "invalid_format")
    |> unique_constraint(:school, message: "Such a school already exists")
  end

  def update_changeset(%__MODULE__{} = school, attrs) do
    school
    |> cast(attrs, @required)
    |> validate_format(:nameSchool, ~r/^[a-zA-Z]*$/, message: "invalid_format")
    |> unique_constraint(:school, message: "Such a school already exists")
  end
 # Spellbook.Schools.Commands.CreateSchool.process(%{nameSchool: "Evocation"})
end
