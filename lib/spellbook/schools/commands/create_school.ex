defmodule Spellbook.Schools.Commands.CreateSchool do
  alias Spellbook.Schools.Entities.School
  alias Spellbook.Repo

  def process(attrs) do
    %School{}
    |> School.create_changeset(attrs)
    |> Repo.insert()
  end
end
