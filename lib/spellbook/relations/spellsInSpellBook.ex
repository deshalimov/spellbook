defmodule SpellsSpellbooks do
  use Ecto.Schema

  alias Spellbook.Accounts.Entities.User
  alias Spellbook.Spellbooks.Entities.Spell

  @primary_key false
  schema "list_user" do
    belongs_to :users, User
    belongs_to :spellist, Spell

    # Added bonus, a join schema will also allow you to set timestamps
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> Ecto.Changeset.cast(params, [:users_id, :spellist_id])
    |> Ecto.Changeset.validate_required([:users_id, :spellist_id])
  end
end
