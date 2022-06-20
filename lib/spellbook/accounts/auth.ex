# Авторизация
defmodule Spellbook.Accounts.Auth do
  alias Spellbook.Accounts.Entities.User
  alias Spellbook.Accounts.Services.Guardian

  def sign_user(%User{} = user), do: Guardian.sign(user)
end
