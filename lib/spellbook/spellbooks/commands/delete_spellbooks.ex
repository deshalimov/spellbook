defmodule Spellbook.Spellbooks.Commands.DeleteSpell do
  alias Spellbook.Spellbooks.Entities.Spell
  alias Spellbook.Repo

  def process(%Spell{} = spell) do
    Repo.delete(spell)
  end
end
