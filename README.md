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


  commands:

1. Create spell
# {a, b} = Spellbook.Accounts.get_user(1)
# Spellbook.Spellbooks.Commands.CreateSpell.process(%{name: "kek", level: 1, school_id: d.id , components: "hah", time: "12 lol", durations: "koko", area: 2, damage: "damag", user_id: b.id})

2. Create school
# Spellbook.Schools.Commands.CreateSchool.process(%{nameSchool: "Evocation"})

3. Create user
# Spellbook.Accounts.Commands.CreateUser.process(%{email: "123@gmail.com", password: "12432431"})

4. Get school
# {c, d} = Spellbook.Schools.Queries.GetSchool.process(1)
