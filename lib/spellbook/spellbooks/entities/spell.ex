defmodule Spellbook.Spellbooks.Entities.Spell do
  use Ecto.Schema

  import Ecto.Changeset

  alias Spellbook.Accounts.Entities.Spell
  #alias Spellbook.Items.Entities.Item
  alias Spellbook.Repo

  # add(:name, :string)       # название
  # add(:level, :integer)     # уровень
  # add(:schools, :string)    # школа
  # add(:components, :string) # компоненты (V, S, M)
  # add(:time, :string)       # время (1 действие, 1 минута)
  # add(:durations, :string)  # продолжительность (раунд или 8 час или мгновенно)
  # add(:area, :integer)      # площадь поражения ( в футах или на себя)




  @required [
    :name,
    :level,
    :schools,
    :components,
    :time,
    :durations,
    :area,
    :user_id
  ]

  schema "spellist" do
    # field :name, EmailEctoType
    # field :password, :string, virtual: true
    # field :password_hash, :string

    field :name,       :string
    field :level,      :integer
    field :schools,    :string
    field :components, :string
    field :time,       :string
    field :durations,  :string
    field :area,       :integer
    belongs_to :user, User

    # Принадлежит классу User
    #belongs_to :user, User

    # Связь многие ко многим
    #many_to_many :items, Item, join_through: "charlists_items"

    timestamps()
  end

  def create_changeset(%__MODULE__{} = spell, attrs) do
    spell
    #|> Repo.preload(:items)
    |> cast(attrs, @required)
    # |> validate_required(@required)

    # |> validate_format(:name, less_than_or_equal_to: 30, greater_than_or_equal_to: 1)
    # #|> validate_format(:level, ~r/^[0-9]{1,20}$/, message: "invalid_format")
    # |> validate_format(:level, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    # |> validate_format(:schools, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    # |> validate_format(:components, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    # |> validate_format(:time, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    # |> validate_format(:durations, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    # |> validate_format(:area, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
     |> assoc_constraint(:user)
    # |> unique_constraint(:email, message: "taken")
    # |> validate_format(:password, ~r/^(?=.*\d)(?=.*[a-z])(?=.*[a-zA-Z]).{8,}/,
    #   message: "invalid_format"
    # )

  end

  # В данном случаем для простого CRUD нет необходимости разделять changeset,
  # но в более сложных случаях это правильный сценарий.
  def update_changeset(%__MODULE__{} = spell, attrs) do
    spell
    #|> Repo.preload(:items)
    |> cast(attrs, @required)
    |> validate_required(@required)

    |> validate_format(:name, less_than_or_equal_to: 30, greater_than_or_equal_to: 1)
    #|> validate_format(:level, ~r/^[0-9]{1,20}$/, message: "invalid_format")
    |> validate_format(:level, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    |> validate_format(:schools, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    |> validate_format(:components, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    |> validate_format(:time, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    |> validate_format(:durations, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    |> validate_format(:area, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    |> assoc_constraint(:user)
    # |> unique_constraint(:email, message: "taken")
    # |> validate_format(:password, ~r/^(?=.*\d)(?=.*[a-z])(?=.*[a-zA-Z]).{8,}/,
    #   message: "invalid_format"
    # )

  end

#   defp put_password_hash(%{valid?: true, changes: %{password: password}} = changeset) do
#     change(changeset, Argon2.add_hash(password))
#   end

#   defp put_password_hash(changeset), do: changeset
 end
