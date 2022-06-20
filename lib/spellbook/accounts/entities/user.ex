defmodule Spellbook.Accounts.Entities.User do
  use Ecto.Schema

  import Ecto.Changeset

  @required [:email, :password]

  schema "users" do
    field :email,         EmailEctoType
    field :password,      :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  def create_changeset(%__MODULE__{} = user, attrs) do
    user
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> unique_constraint(:email, message: "taken")
    |> validate_format(:password, ~r/^(?=.*\d)(?=.*[a-z])(?=.*[a-zA-Z]).{8,}/,
      message: "invalid_format"
    )
    |> put_password_hash()
  end

  # В данном случаем для простого CRUD нет необходимости разделять changeset,
  # но в более сложных случаях это правильный сценарий.
  def update_changeset(%__MODULE__{} = user, attrs) do
    user
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> unique_constraint(:email, message: "taken")
    |> validate_format(:password, ~r/^(?=.*\d)(?=.*[a-z])(?=.*[a-zA-Z]).{8,}/,
      message: "invalid_format"
    )
    |> put_password_hash()
  end

  defp put_password_hash(%{valid?: true, changes: %{password: password}} = changeset) do
    change(changeset, Argon2.add_hash(password))
  end

  defp put_password_hash(changeset), do: changeset
end
