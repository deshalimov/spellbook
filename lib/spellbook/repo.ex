defmodule Spellbook.Repo do
  use Ecto.Repo,
    otp_app: :spellbook,
    adapter: Ecto.Adapters.Postgres
    def fetch_one(query) do
      case __MODULE__.one(query) do
        nil ->
          {:error, :not_found}

        value ->
          {:ok, value}
      end
    end

    def find(query, id) do
      case __MODULE__.get(query, id) do
        %_{} = schema ->
          {:ok, schema}

        nil ->
          {:error, :not_found}
      end
    end

    def find_by(query, by) do
      case __MODULE__.get_by(query, by) do
        %_{} = schema ->
          {:ok, schema}

        nil ->
          {:error, :not_found}
      end
    end
  end
