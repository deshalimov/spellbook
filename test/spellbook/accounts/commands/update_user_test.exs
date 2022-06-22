defmodule Spellbook.Accounts.Commands.UpdateUserTest do
  use Spellbook.DataCase

  alias Spellbook.Accounts

  @tag :updus
  test "process/1 update_user test" do
    user = insert(:user, %{email: "1updated@email.com"})
    attrs = %{email: "update@em.com"}
    assert {:ok, updated_user} = Accounts.update_user(user, attrs)
    assert updated_user.email.address == attrs.email
  end
end
