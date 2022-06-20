defmodule Spellbook.Spellbooks.Queries.GetSpellbook do
  alias Spellbook.Repo
  alias Spellbook.Spellbooks.Entities.Spellbook

  def process(id) do
    Repo.find(Spellbook, id)
  end
end
