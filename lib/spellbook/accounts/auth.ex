# Авторизация
defmodule Spellbook.Accounts.Auth do
  alias Spellbook.Accounts.Entities.User
  alias Spellbook.Accounts.Services.Guardian

  def sign_user(%User{} = user) do
    with {:ok, access_token, refresh_token} <- Guardian.sign(user) do
      {:ok, access_token, refresh_token}
    end
  end
end
