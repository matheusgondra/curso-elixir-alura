defmodule MeuModulo.Math do
  def soma(a, b), do: a + b

  def multiplica(a, b), do: a * b

  def zero?(0), do: true
  def zero?(x) when(is_integer(x)), do: false
end
