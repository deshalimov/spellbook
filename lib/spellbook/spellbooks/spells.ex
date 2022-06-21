defmodule Spellbook.Spellbooks do
  alias Spellbook.Accounts.Commands.{
    CreateSpell,
    DeleteSpell,
    UpdateSpell
  }

  alias Spellbook.Spellbooks.Queries.{
    GetSpell,
    ListSpells
  }

  # Commands
  defdelegate create_spell(attrs), to: CreateSpell, as: :process
  defdelegate delete_spell(spell), to: DeleteSpell, as: :process
  defdelegate update_spell(spell, attrs), to: UpdateSpell, as: :process

  # Queries
  defdelegate get_spell(id), to: GetSpell, as: :process
  # defdelegate list_spells(), to: ListSpells, as: :process
end
