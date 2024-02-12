defmodule App.Clientes.Cliente do
  use Ecto.Schema
  import Ecto.Changeset

  schema "clientes" do
    field :nome, :string
    field :limite, :integer
    field :saldo_inicial, :integer

    # Generates inserted_at and updated_at columns
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(url, attrs) do
    url
    |> cast(attrs, [:nome, :limite, :saldo_inicial])
    |> validate_required([:nome, :limite, :saldo_inicial])
  end
end
