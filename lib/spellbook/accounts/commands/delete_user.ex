defmodule Spellbook.Accounts.Commands.DeleteUser do
  alias Spellbook.Accounts.Entities.User
  alias Spellbook.Repo

  def process(%User{} = user) do
    Repo.delete(user)
  end
end
