defmodule App.Repo.Migrations.AddNameField do
  use Ecto.Migration

  def change do
    alter table(:clientes) do
      add :nome, :string
    end
  end
end
