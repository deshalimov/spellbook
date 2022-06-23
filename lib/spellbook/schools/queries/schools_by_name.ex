defmodule Spellbook.Schools.Queries.SchoolByName do
  alias Spellbook.Schools.Entities.School
  alias Spellbook.Repo

  import Ecto.Query, only: [from: 2]

  def process(params) do
    School
    |> by_schools(params)
    |> Repo.all()
  end

  defp by_schools(query, %{nameSchool: nameSchool}) do
    from schools in query,
      where: schools.nameSchool == ^nameSchool
  end

  defp by_schools(query, _), do: query
end
