defmodule Spellbook.Accounts.Queries.ListUsersTest do
  use Spellbook.DataCase

  alias Spellbook.Accounts

  @tag :gtlstus
  test "process/1 list_users test" do
    insert_list(10, :user)
    result = Accounts.list_users()
    assert length(result) == 10
  end
end
