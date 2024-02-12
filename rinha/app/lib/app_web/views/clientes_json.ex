defmodule AppWeb.ClientesJSON do

  alias App.Clientes.Cliente

  def index(%{clientes: clientes}) do
    for(cliente <- clientes, do: IO.inspect(String.length(cliente.nome)))
    %{data: for(cliente <- clientes, do: data(cliente))}
  end

  defp data(%Cliente{} = cliente) do
    %{
      id: cliente.id,
      nome: cliente.nome,
    }
  end
end
