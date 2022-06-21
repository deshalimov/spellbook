defmodule Spellbook.Repo.Migrations.CreateSchools do
  use Ecto.Migration

  def change do
    create table(:schools) do
      add :nameSchool, :string

      timestamps()
    end

    create unique_index(:schools, [:nameSchool])
  end
end
