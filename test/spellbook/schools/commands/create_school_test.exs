defmodule Spellbook.Schools.Commands.CreateSchoolTest do
  use Spellbook.DataCase

  alias Spellbook.Schools

  @tag :crtsch
  test "process/1 create_school test" do
    assert {:ok, create_school} = Schools.create_school(%{nameSchool: "Evocation"})
    {status, get_school} = Schools.get_school(create_school.id)
    assert get_school.id == create_school.id
  end
end
