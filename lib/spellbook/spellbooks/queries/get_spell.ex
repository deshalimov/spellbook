defmodule Spellbook.Spellbooks.Queries.GetSpell do
  alias Spellbook.Repo
  alias Spellbook.Spellbooks.Entities.Spell

  def process(id) do
    Repo.find(Spell, id)
  end
end
