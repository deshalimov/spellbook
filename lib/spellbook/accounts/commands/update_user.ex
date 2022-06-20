defmodule Spellbook.Accounts.Commands.UpdateUser do
  alias Spellbook.Accounts.Entities.User
  alias Spellbook.Repo

  def process(%User{} = user, attrs) do
    user
    |> User.update_changeset(attrs)
    |> Repo.update()
  end
end
