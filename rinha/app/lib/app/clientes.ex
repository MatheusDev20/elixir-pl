defmodule App.Clientes do

  @moduledoc """
  The Clientes context.
  """
  import Ecto.Query, warn: false
  alias App.Clientes.Cliente
  alias App.Repo


  def list_clientes do
    Repo.all(Cliente)
  end

end
