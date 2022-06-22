defmodule Spellbook.Factories.Damages.DamageFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person, Phone, Date}
      alias Spellbook.Damages.Entities.Damage

      def damage_factory(attrs) do
        nameDamage = Map.get(attrs, :nameDamage, Lorem.word())

        %Damage{
          nameDamage: sequence(:nameDamage, &"#{&1}_#{nameDamage}")
        }
      end
    end
  end
end
