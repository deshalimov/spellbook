defmodule Spellbook.Schools.Commands.DeleteSchool do
  alias Spellbook.Schools.Entities.School
  alias Spellbook.Repo

  def process(%School{} = school) do
    Repo.delete(school)
  end
end
