defmodule Spellbook.Damages.Queries.GetDamageTest do
  use Spellbook.DataCase

  alias Spellbook.Damages

  @tag :gtdmg
  test "process/1 get damage by id" do
    damage = insert(:damage)
    Damages.get_damage(damage.id)
    assert {:ok, result} = Damages.get_damage(damage.id)
    assert damage.id == result.id
  end
end
