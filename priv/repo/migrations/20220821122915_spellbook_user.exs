defmodule Spellbook.Repo.Migrations.SpellbookUser do
  use Ecto.Migration

    def change do
      create table(:list_user) do
        add :users_id, references(:users)
        add :spellist_id, references(:spellist)

        timestamps()
    end

    create unique_index(:list_user,[:users_id,:spellist_id])
  end
end
