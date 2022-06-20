defmodule Spellbook.Accounts.Queries.ListUsers do
  alias Spellbook.Accounts.Entities.User
  alias Spellbook.Repo

  def process do
    Repo.all(User)
  end
end
