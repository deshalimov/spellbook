defmodule Spellbook.Spellbooks.Queries.ListSpells do
  alias Spellbook.Spellbooks.Entities.Spell
  alias Spellbook.Repo

  def process () do
    Repo.all(Spell)
  end
end
