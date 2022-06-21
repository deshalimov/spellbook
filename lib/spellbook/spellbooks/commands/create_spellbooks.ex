defmodule Spellbook.Spellbooks.Commands.CreateSpell do
  alias Spellbook.Spellbooks.Entities.Spell
  alias Spellbook.Repo

  def process(attrs) do
    %Spell{}
    |> Spell.create_changeset(attrs)
    |> Repo.insert()
  end
end

# {a, b} = Spellbook.Accounts.get_user(1)
# Spellbook.Spellbooks.Commands.CreateSpell.process(%{name: "kek", level: 1, schools: "lol", components: "hah", time: "12 lol", durations: "koko", area: 2, user_id: b.id})
