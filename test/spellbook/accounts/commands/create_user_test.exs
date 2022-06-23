defmodule Spellbook.Accounts.Commands.CreateUserTest do
  use Spellbook.DataCase

  alias Spellbook.Accounts

  @tag :crtus
  test "process/1 create_user test" do
    assert {:ok, create_user} = Accounts.create_user(%{email: "123@gmail.com", password: "12432dadw431"})
    {status, get_user} = Accounts.get_user(create_user.id)
    assert get_user.id == create_user.id
  end
end
