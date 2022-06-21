defmodule Spellbook.Damages.Commands.CreateDamage do
  alias Spellbook.Damages.Entities.Damage
  alias Spellbook.Repo

  def process(attrs) do
    %Damage{}
    |> Damage.create_changeset(attrs)
    |> Repo.insert()
  end
end
