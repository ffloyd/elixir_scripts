defmodule Funcmod do
  def sum(1), do: 1
  def sum(n), do: n + sum(n - 1)

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

IO.puts Funcmod.sum 10
IO.puts Funcmod.sum 3

IO.puts Funcmod.gcd(10, 15)
IO.puts Funcmod.gcd(60, 15)
IO.puts Funcmod.gcd(11, 17)
