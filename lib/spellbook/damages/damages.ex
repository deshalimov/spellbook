defmodule Spellbook.Damages do
  alias Spellbook.Damages.Commands.{
    CreateDamage,
    DeleteDamage,
    UpdateDamage
  }

  # Commands
  defdelegate create_damage(attrs), to: CreateDamage, as: :process
  defdelegate delete_damage(damage), to: DeleteDamage, as: :process
  defdelegate update_damage(damage, attrs), to: UpdateDamage, as: :process

  # Queries
  defdelegate get_damage(id), to: GetDamage, as: :process
  # defdelegate list_damages(), to: ListDamages, as: :process
end
