defmodule Chop do
  def guess(actual, range = low..high) do
    candidate = div(low + high, 2)

    IO.puts "Is it #{candidate}?"
    _guess(actual, candidate, range)
  end

  defp _guess(actual, actual, _), do: IO.puts "Yay! It's #{actual}!"

  defp _guess(actual, candidate, _low..high) when candidate < actual,
    do: guess(actual, (candidate + 1)..high)

  defp _guess(actual, candidate, low.._high) when candidate > actual,
    do: guess(actual, low..(candidate - 1))
end

Chop.guess 273, 0..1000
