defmodule Spellbook.Damages.Queries.GetDamage do
  alias Spellbook.Repo
  alias Spellbook.Damages.Entities.Damage

  def process(id) do
    Repo.find(Damage, id)
  end
end
