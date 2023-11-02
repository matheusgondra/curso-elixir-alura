defmodule MeuModulo.Loop do

  def tabuada(multiplicador), do: tabuada([], multiplicador, 1)

  defp tabuada(list, _, 11), do: {:ok, Enum.reverse(list)}
  defp tabuada(lista, produto1, produto2) do
    IO.puts("#{produto1} x #{produto2} = #{produto1 * produto2}")
    lista = [produto1 * produto2 | lista]
    tabuada(lista, produto1, produto2 + 1)
  end
end
