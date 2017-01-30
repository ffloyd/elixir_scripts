defmodule My do
  def mapsum([], _func),           do: 0
  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)

  def max([]),            do: nil
  def max([head | tail]), do: _max(head, tail)

  defp _max(x, []),                     do: x
  defp _max(x, [y | tail]) when x >= y, do: _max(x, tail)
  defp _max(x, [y | tail]) when x < y,  do: _max(y, tail)

  def caesar([], _shift),           do: []
  def caesar([head | tail], shift), do: [_caesar_char(head, shift) | caesar(tail, shift)]

  defp _caesar_char(char, shift) when char + shift > 122, do: (char + shift - 122) + 97 - 1
  defp _caesar_char(char, shift), do: char + shift


  def span(from, to) when from == to, do: [from]
  def span(from, to) when from <  to, do: [from | span(from + 1, to)]
end

IO.puts "mapsum calls:"
IO.inspect My.mapsum([1, 2, 3], &(&1 + &1))

IO.puts "\nmax calls:"
IO.inspect My.max([1, 2, 3, 4, 5])

IO.puts "\ncaesar calls:"
IO.inspect My.caesar('ryvkve', 13)

IO.puts "\nspan calls:"
IO.inspect My.span(10, 20)
