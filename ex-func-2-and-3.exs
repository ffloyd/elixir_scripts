fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, x) -> x
end

fizz_buzz_2 = fn
  n -> fizz_buzz.(rem(n, 3), rem(n, 5), n)
end

IO.puts fizz_buzz_2.(10)
IO.puts fizz_buzz_2.(11)
IO.puts fizz_buzz_2.(12)
IO.puts fizz_buzz_2.(13)
IO.puts fizz_buzz_2.(14)
IO.puts fizz_buzz_2.(15)
IO.puts fizz_buzz_2.(16)
IO.puts fizz_buzz_2.(17)
