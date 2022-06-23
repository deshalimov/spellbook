defmodule Spellbook.Spellbooks.Entities.Spell do
  use Ecto.Schema

  import Ecto.Changeset

  alias Spellbook.Accounts.Entities.Spell
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
    :school_id,
    :components,
    :time,
    :durations,
    :area,
    :damage_id,
  ]

  schema "spellist" do

    field :name,       :string
    field :level,      :integer
    field :components, :string
    field :time,       :string
    field :durations,  :string
    field :area,       :integer

    belongs_to :damage, Damage
    belongs_to :school, School

    many_to_many :users, Spellbook.Accounts.Entities.User, join_through: "spellbook_user"
    timestamps()
  end

  def create_changeset(%__MODULE__{} = spell, attrs) do
    spell
    #|> Repo.preload(:items)
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> validate_format(:name, ~r/^[a-zA-Z ]*$/, message: "invalid_format_name")
    |> validate_number(:level, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    |> validate_format(:components, ~r/^[A-Z, ]*[A-Z]$/, message: "invalid_format_components")
    |> validate_format(:time, ~r/^[0-9 ]*[a-z]*$/, message: "invalid_format_time")
    |> validate_format(:durations, ~r/^[a-zA-Z\s]*$/, message: "invalid_format_durations")
    |> validate_number(:area, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    |> assoc_constraint(:school)
    |> assoc_constraint(:damage)
  end

  # В данном случаем для простого CRUD нет необходимости разделять changeset,
  # но в более сложных случаях это правильный сценарий.
  def update_changeset(%__MODULE__{} = spell, attrs) do
    spell
    #|> Repo.preload(:items)
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> validate_format(:name, ~r/^[a-zA-Z ]*$/, message: "invalid_format_name")
    |> validate_number(:level, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    |> validate_format(:components, ~r/^[A-Z, ]*[A-Z]$/, message: "invalid_format_components")
    |> validate_format(:time, ~r/^[0-9 ]*[a-z]*$/, message: "invalid_format_time")
    |> validate_format(:durations, ~r/^[a-zA-Z\s]*$/, message: "invalid_format_durations")
    |> validate_number(:area, less_than_or_equal_to: 20, greater_than_or_equal_to: 1)
    |> assoc_constraint(:school)
    |> assoc_constraint(:damage)
  end
 end
