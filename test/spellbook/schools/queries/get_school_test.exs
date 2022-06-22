defmodule Spellbook.Schools.Queries.GetSchoolTest do
  use Spellbook.DataCase

  alias Spellbook.Schools

  @tag :gtsch
  test "process/1 get school by id" do
    school = insert(:school)
    Schools.get_school(school.id)
    assert {:ok, result} = Schools.get_school(school.id)
    assert school.id == result.id
  end
end
