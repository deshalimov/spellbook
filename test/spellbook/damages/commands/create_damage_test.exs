defmodule Spellbook.Damages.Commands.CreateDamageTest do
  use Spellbook.DataCase

  alias Spellbook.Damages

  @tag :crtdmg
  test "process/1 create_damage test" do
    assert {:ok, create_damage} = Damages.create_damage(%{nameDamage: "Damage"})
    {status, get_damage} = Damages.get_damage(create_damage.id)
    assert get_damage.id == create_damage.id
  end
end
