defmodule Spellbook.Schools.Queries.GetSchool do
  alias Spellbook.Repo
  alias Spellbook.Schools.Entities.School

  def process(id) do
    Repo.find(School, id)
  end
end
