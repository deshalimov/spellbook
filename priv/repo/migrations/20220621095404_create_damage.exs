defmodule Spellbook.Repo.Migrations.CreateDamage do
  use Ecto.Migration

  def change do
    create table(:damages) do
      add :nameDamage, :string

      timestamps()
    end

    create unique_index(:damages, [:nameDamage])
  end
end
