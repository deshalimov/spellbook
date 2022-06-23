defmodule SpellbookWeb.V1.UserController do
  use SpellbookWeb, :controller

  alias Spellbook.Accounts
  alias Spellbook.Accounts.Auth

  action_fallback(SpellbookWeb.FallbackController)

  defmodule CreateUserParams do
    use Params.Schema, %{
      email!: :string,
      password!: :string
    }
  end

  def create(conn, attrs) do
    with {:ok, attrs} <- ApplyParams.do_apply(CreateUserParams, attrs),
         {:ok, user} <- Accounts.create_user(attrs),
         {:ok, access_token, refresh_token} <- Auth.sign_user(user) do
      conn
      |> put_status(:created)
      |> render("create.json", %{
        user: user,
        access_token: access_token,
        refresh_token: refresh_token
      })
    end
  end
end
