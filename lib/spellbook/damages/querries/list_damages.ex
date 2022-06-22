defmodule Spellbook.Damages.Queries.ListDamages do
  alias Spellbook.Damages.Entities.Damage
  alias Spellbook.Repo

  def process do
    Repo.all(Damage)
  end
end
