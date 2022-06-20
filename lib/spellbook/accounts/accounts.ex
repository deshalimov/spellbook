defmodule Spellbook.Accounts do
  alias Spellbook.Accounts.Commands.{
    CreateUser,
    DeleteUser,
    UpdateUser
  }

  alias Spellbook.Accounts.Queries.{
    GetUser,
    ListUsers
  }

  # Commands
  defdelegate create_user(attrs), to: CreateUser, as: :process
  defdelegate delete_user(user), to: DeleteUser, as: :process
  defdelegate update_user(user, attrs), to: UpdateUser, as: :process

  # Queries
  defdelegate get_user(id), to: GetUser, as: :process
  defdelegate list_users(), to: ListUsers, as: :process
end
