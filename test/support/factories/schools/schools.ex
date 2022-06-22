defmodule Spellbook.Factories.Schools.SchoolFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person, Phone, Date}
      alias Spellbook.Schools.Entities.School

      def school_factory(attrs) do
        nameSchool = Map.get(attrs, :nameSchool, Lorem.word())

        %School{
          nameSchool: sequence(:nameSchool, &"#{&1}_#{nameSchool}")
        }
      end
    end
  end
end
