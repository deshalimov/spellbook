defmodule Spellbook.Spellbooks.Queries.SpellByParams do
  alias Spellbook.Spellbooks.Entities.Spell
  alias Spellbook.Repo
  import Ecto.Query, only: [from: 2]

  def process(params) do
    Spell
    |> by_name(params)
    |> by_level(params)
    |> by_school(params)
    |> by_components(params)
    |> by_time(params)
    |> by_durations(params)
    |> by_area(params)
    |> by_damage_id(params)
    |> Repo.all()
  end

  defp by_name(query, %{name: name}) do
    from spellist in query,
      where: spellist.name == ^name
  end

  defp by_name(query, _), do: query

  defp by_level(query, %{level: level}) do
    from spellist in query,
      where: spellist.level == ^level
  end

  defp by_level(query, _), do: query

  defp by_school(query, %{school_id: school_id}) do
    from spellist in query,
      where: spellist.school_id == ^school_id
  end

  defp by_school(query, _), do: query

  defp by_components(query, %{components: components}) do
    from spellist in query,
      where: spellist.components == ^components
  end

  defp by_components(query, _), do: query

  defp by_time(query, %{time: time}) do
    from spellist in query,
      where: spellist.time == ^time
  end

  defp by_time(query, _), do: query
  #
  defp by_durations(query, %{durations: durations}) do
    from spellist in query,
      where: spellist.durations == ^durations
  end

  defp by_durations(query, _), do: query

  defp by_area(query, %{area: area}) do
    from spellist in query,
      where: spellist.area == ^area
  end

  defp by_area(query, _), do: query

  defp by_damage_id(query, %{damage_id: damage_id}) do
    from spellist in query,
      where: spellist.damage_id == ^damage_id
  end

  defp by_damage_id(query, _), do: query

end
