defmodule Spellbook.Schools.Queries.ListSchools do
  alias Spellbook.Schools.Entities.School
  alias Spellbook.Repo

  def process do
    Repo.all(School)
  end
end
