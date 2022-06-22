defmodule Spellbook.Schools.Commands.DeleteSchoolTest do
  use Spellbook.DataCase

 alias Spellbook.Schools

 @tag :dlsch
 test "process/1 delete_school test" do
   school = insert(:school)
   assert {:ok, _result} = Schools.delete_school(school)
   assert {:error, :not_found} = Schools.get_school(school.id)
 end
end
