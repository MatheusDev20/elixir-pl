defmodule App.Repo.Migrations.CreateClientes do
  use Ecto.Migration

  def change do
    create table(:clientes) do
      add :limite, :integer
      add :saldo_inicial, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
