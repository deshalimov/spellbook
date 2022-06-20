defmodule Spellbook.Accounts.Commands.CreateUser do
  alias Spellbook.Accounts.Entities.User
  alias Spellbook.Repo

  def process(attrs) do
    %User{}
    |> User.create_changeset(attrs)
    |> Repo.insert()
  end
end
