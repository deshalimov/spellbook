defmodule Spellbook.Damages.Commands.UpdateDamageTest do
  use Spellbook.DataCase

  alias Spellbook.Damages

  @tag :updmg

  test "process/1 update_damage test" do
    damage = insert(:damage, %{nameDamage: "Damage"})
    attrs = %{nameDamage: "Array"}
    assert {:ok, updated_damage} = Damages.update_damage(damage, attrs)
    assert updated_damage.nameDamage == attrs.nameDamage
  end
end
