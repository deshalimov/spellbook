defmodule Spellbook.CommandSpellbook.AddSpell do
  alias Spellbook.Repo
  alias SpellsSpellbooks

  def process(attrs) do
    %SpellsSpellbooks{}
    |> SpellsSpellbooks.changeset(attrs)
    |> Repo.insert()
  end
end
