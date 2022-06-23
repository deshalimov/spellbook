defmodule Spellbook.Accounts.Queries.UserByName do
  alias Spellbook.Accounts.Entities.User
  alias Spellbook.Repo

  import Ecto.Query, only: [from: 2]

  def process(params) do
    User
    |> by_user(params)
    |> Repo.all()
  end

  defp by_user(query, %{email: email}) do
    from users in query,
      where: users.email == ^email
  end

  defp by_user(query, _), do: query


end
