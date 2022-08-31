defmodule Calculadora do
  require Integer

  # Primeira questão
  # Calcular a potência
  def potencia(_, 0), do: 1
  def potencia(n, p) when Integer.is_odd(p), do: n * potencia(n, p - 1)

  def potencia(n, p) do
    result = potencia(n, div(p, 2))
    result * result
  end

  # Calcular o fatorial de um número
  def fatorial(0), do: 1

  def fatorial(n) when n > 0 do
    Enum.reduce(1..n, &*/2)
  end

  # Calcular o percentual
  def percentual(n, p) do
    result = n * (p / 100)
    result
  end
end
