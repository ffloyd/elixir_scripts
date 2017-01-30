IO.inspect Enum.map([1, 2, 3], &(&1 + 2))
Enum.each([1, 2, 3], &(IO.inspect &1))
