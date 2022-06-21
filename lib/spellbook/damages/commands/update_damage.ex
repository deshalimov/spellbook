defmodule Spellbook.Damages.Commands.UpdateDamage do
  alias Spellbook.Damages.Entities.Damage
  alias Spellbook.Repo

  def process(%Damage{} = damage, attrs) do
    damage
    |> Damage.update_changeset(attrs)
    |> Repo.update()
  end
end
