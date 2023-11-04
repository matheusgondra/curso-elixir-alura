defmodule MeuModulo.Arquivos do
  def ler(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error, :enoent} -> "Arquivo não encontrado"
      {:error, :eacces} -> "Sem permissão de leitura"
      _ -> "Erro desconhecido"
    end
  end
end
