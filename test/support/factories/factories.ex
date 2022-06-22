defmodule Spellbook.Factories do
  use ExMachina.Ecto, repo: Spellbook.Repo

  use Spellbook.Factories.{
    Accounts.UserFactory
  }
end
