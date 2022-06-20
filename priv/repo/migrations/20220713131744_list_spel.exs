defmodule Spellbook.Repo.Migrations.ListSpel do
  use Ecto.Migration

  def change do
    create table(:spellist) do
      add(:name, :string)       # название
      add(:level, :integer)     # уровень
      add(:schools, :string)    # школа
      add(:components, :string) # компоненты (V, S, M)
      add(:time, :string)       # время (1 действие, 1 минута)
      add(:durations, :string)  # продолжительность (раунд или 8 час или мгновенно)
      add(:area, :integer)      # площадь поражения ( в футах или на себя)
      add(:user_id, references(:users))


      timestamps()
  end
  create unique_index(:spellist, [:name])
end
end

#
