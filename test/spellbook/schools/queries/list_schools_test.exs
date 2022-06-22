defmodule Spellbook.Schools.Queries.ListSchoolsTest do
  use Spellbook.DataCase

  alias Spellbook.Schools

  @tag :gtlstsch
  test "process/1 list_schools test" do
    insert_list(10, :school)
    result = Schools.list_schools()
    assert length(result) == 10
  end
end
