defmodule Spellbook.Accounts.Queries.GetUser do
  @moduledoc """
  ShortDecription
  """
  alias Spellbook.Accounts.Entities.User
  alias Spellbook.Repo

  def process(id) do
    Repo.find(User, id)
  end
end
