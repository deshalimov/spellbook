defmodule Spellbook.Damages.Commands.DeleteDamage do
  alias Spellbook.Damages.Entities.Damage
  alias Spellbook.Repo

  def process(%Damage{} = damage) do
    Repo.delete(damage)
  end
end
