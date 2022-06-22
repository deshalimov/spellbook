defmodule Spellbook.Damages.Commands.DeleteDamageTest do
  use Spellbook.DataCase

 alias Spellbook.Damages

 @tag :dldmg
 test "process/1 delete_damage test" do
   damage = insert(:damage)
   assert {:ok, _result} = Damages.delete_damage(damage)
   assert {:error, :not_found} = Damages.get_damage(damage.id)
 end
end
