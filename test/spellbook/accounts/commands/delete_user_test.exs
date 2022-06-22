defmodule Spellbook.Accounts.Commands.DeleteUserTest do
   use Spellbook.DataCase

  alias Spellbook.Accounts

  @tag :dlus
  test "process/1 delete_user test" do
    user = insert(:user)
    assert {:ok, _result} = Accounts.delete_user(user)
    assert {:error, :not_found} = Accounts.get_user(user.id)
  end
end
