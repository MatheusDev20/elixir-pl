defmodule AppWeb.ClientesController do

  use AppWeb, :controller
  alias App.Clientes
  # alias App.Clientes.Cliente

  def index(conn, _params) do
    clientes = Clientes.list_clientes()
    render(conn, :index, clientes: clientes)
  end
end
