defmodule MySum do
  def sum([]),            do: 0
  def sum([head | tail]), do: head + sum(tail)
end

list = [1, 2, 3, 4]

IO.puts "MySum.sum calls:"
IO.inspect MySum.sum(list)
IO.inspect MySum.sum([])

how_it_works = fn [head | tail] ->
  IO.inspect head
  IO.inspect tail
end

IO.puts "\nhow_it_works calls:"
how_it_works.([1])
how_it_works.([1, 2, 3])
