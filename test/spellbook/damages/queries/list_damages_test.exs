defmodule Spellbook.Damages.Queries.ListDamagesTest do
  use Spellbook.DataCase

  alias Spellbook.Damages

  @tag :gtlstus
  test "process/1 list_damages test" do
    insert_list(10, :damage)
    result = Damages.list_damages()
    assert length(result) == 10
  end
end
