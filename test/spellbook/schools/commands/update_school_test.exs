defmodule Spellbook.Schools.Commands.UpdateSchoolTest do
  use Spellbook.DataCase

  alias Spellbook.Schools

  @tag :upsch

  test "process/1 update_school test" do
    school = insert(:school, %{nameSchool: "School"})
    attrs = %{nameSchool: "Array"}
    assert {:ok, updated_school} = Schools.update_school(school, attrs)
    assert updated_school.nameSchool == attrs.nameSchool
  end
end
