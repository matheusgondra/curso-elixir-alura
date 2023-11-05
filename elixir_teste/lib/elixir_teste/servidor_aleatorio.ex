defmodule ElixirTeste.ServidorAleatorio do
  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: :servidor_aleatorio)
  end

  def init(:ok) do
    IO.puts("Fazendo requisição")
    get_body = fn data -> data.body end
    inital_state = "https://api.github.com/users/matheusgondra"
      |> HTTPoison.get!
      |> get_body.()
      |> Jason.decode!

    {:ok, inital_state}
  end

  def handle_cast(:escreve, state) do
    ElixirTeste.EscreveNumeroAleatorio.escreve()
    name = state["name"]
    IO.puts("Hello, #{name}!")
    {:noreply, state}
  end
end
