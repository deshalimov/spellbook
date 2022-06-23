# Spellbook

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Commands:

Create school
* Spellbook.Schools.Commands.CreateSchool.process(%{nameSchool: "Evocation"})

Create user
* Spellbook.Accounts.Commands.CreateUser.process(%{email: "123@gmail.com", password: "12432dadw431"})

Create damage
* Spellbook.Damages.Commands.CreateDamage.process(%{nameDamage: "Damage"})

!!! Create spell
* Spellbook.Spellbooks.Commands.CreateSpell.process(%{name: "Hello wds", level: 1, school_id: d.id , components: "S, D, A", time: "12 lol", durations: "koko", area: 2, damage_id: f.id})

Create spelllist for users:

Get user:
* {a, b} = Spellbook.Accounts.get_user(1)

Get school:
* {c, d} = Spellbook.Schools.Queries.GetSchool.process(1)

Get damage:
* {e, f} = Spellbook.Damages.Queries.GetDamage.process(1)

Get spell:
* {g, h} = Spellbook.Spellbooks.Queries.GetSpell.process(1)


Many to many:
* Spellbook.CommandSpellbook.AddSpell.process(%{users_id: b.id, spellist_id: h.id})