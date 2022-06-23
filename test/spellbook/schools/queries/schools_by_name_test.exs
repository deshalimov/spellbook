defmodule Spellbook.Schools.Queries.SchoolByNameTest do
  use Spellbook.DataCase

  alias Spellbook.Schools

  test "process/1 get_school_by_name test" do
    sch = insert(:school)
    result = Spellbook.Schools.Queries.SchoolByName.process(%{nameSchool: sch.nameSchool})
    assert sch == result
  end
end
