defmodule Spellbook.Spellbooks.Commands.UpdateSpell do
  alias Spellbook.Spellbooks.Entities.Spell
  alias Spellbook.Repo

  def process(%Spell{} = spell, attrs) do
    spell
    |> Spell.update_changeset(spell)
    |> Repo.update()
  end
end
