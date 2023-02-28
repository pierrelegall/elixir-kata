defmodule Kata.FizzBuzz do
  def fizz_buzz(n) do
    case {rem(n, 3), rem(n, 5)} do
      {0, 0} -> "FizzBuzz"
      {0, _} -> "Fizz"
      {_, 0} -> "Buzz"
      {_, _} -> Integer.to_string(n)
    end
  end
end
