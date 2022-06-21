defmodule Spellbook.Schools.Commands.UpdateSchool do
  alias Spellbook.Schools.Entities.School
  alias Spellbook.Repo

  def process(%School{} = school, attrs) do
    school
    |> School.update_changeset(attrs)
    |> Repo.update()
  end
end
