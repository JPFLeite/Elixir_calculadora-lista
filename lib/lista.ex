defmodule Lista do
  # Segunda Questão
  lista1 = [2, 5, 0, 88, 1];
  lista2 = [2, 1, 468, 46];

  # Retorna o maior valor da lista e seu index
  def maiorValor(lista) do
    maior = Enum.max(lista)
    index = Enum.find_index(lista, fn x -> x == Enum.max(lista) end)
    {maior, index}
  end


  # Terceira Questão
  listaTupla = [{"Pablo", 21}, {"Elder", 15}, {"Cassimiro", 53}]

  # Retorna o nome da pessoa mais jovem
  def maisJovem(listaTupla) do
    nome = Enum.map(listaTupla, fn x -> elem(x, 0) end)
    idade = Enum.map(listaTupla, fn x -> elem(x, 1) end)
    maisJovemIdade = Enum.min(idade)
    maisJovemIndex = Enum.find_index(idade, fn x -> x == maisJovemIdade end)
    pessoaMaisJovem = Enum.at(nome, maisJovemIndex)
  end

  # Quantidade de pessoas que possuem mais de 30 anos
  def maisDe30(listaTupla) do
    Enum.filter(listaTupla, fn x -> elem(x, 1) > 30 end)
    |> Enum.count()
  end

  # Pessoas com idade impar
  def idadeImpar(listaTupla) do
    Enum.filter(listaTupla, fn x -> rem(elem(x, 1), 2) == 1 end)
  end


  # Quarta Questão
  # Unir Listas
  def unirListas(lista1, lista2) do
    MapSet.union(MapSet.new(lista1), MapSet.new(lista2))
  end

  # Intersecção entre listas
  def intersecaoListas(lista1, lista2) do
    MapSet.intersection(MapSet.new(lista1), MapSet.new(lista2))
  end
end
