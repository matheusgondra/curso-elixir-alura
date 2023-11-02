defmodule MeuModulo do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias MeuModulo.Math, as: MyMath

  require Integer

  def ola_mundo do
	  inspect(MyMath.soma(1, 2))
  end

  def exibe_se_eh_par(num) do
    puts("O número #{num} é par? #{Integer.is_even(num)}")
  end

  defp inspect(param) do
    puts("Começando a inspeção")
    puts(param)
    puts("Terminando a inspeção")
  end
end
