defmodule Spellbook.Schools do
  alias Spellbook.Schools.Commands.{
    CreateSchool,
    DeleteSchool,
    UpdateSchool
  }

  alias Spellbook.Schools.Queries.{
    GetSchool,
    ListSchools
  }

  # Commands
  defdelegate create_school(attrs), to: CreateSchool, as: :process
  defdelegate delete_school(school), to: DeleteSchool, as: :process
  defdelegate update_school(school, attrs), to: UpdateSchool, as: :process

  # Queries
  defdelegate get_school(id), to: GetSchool, as: :process
  defdelegate list_schools(), to: ListSchools, as: :process
end
