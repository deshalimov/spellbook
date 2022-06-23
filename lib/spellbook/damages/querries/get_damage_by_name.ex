defmodule Spellbook.Damages.Queries.DamageByName do
  alias Spellbook.Damages.Entities.Damage
  alias Spellbook.Repo

  import Ecto.Query, only: [from: 2]

  def process(params) do
    Damage
    |> by_damage(params)
    |> Repo.all()
  end

  defp by_damage(query, %{nameDamage: nameDamage}) do
    from damages in query,
      where: damages.nameDamage == ^nameDamage
  end

  defp by_damage(query, _), do: query

end
