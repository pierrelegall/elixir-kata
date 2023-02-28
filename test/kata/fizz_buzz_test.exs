defmodule Kata.FizzBuzz.Test do
  use ExUnit.Case

  import Kata.FizzBuzz

  describe "&fizz_buzz/1:" do
    @range 1..100

    test "non multiples of 3 and 5 returns the number as a string" do
      for n <- @range, rem(n, 3) != 0, rem(n, 5) != 0 do
        assert fizz_buzz(n) == Integer.to_string(n)
      end
    end

    test "multiples of 3 but not of 5 returns Fizz" do
      for n <- @range, rem(n, 3) == 0, rem(n, 5) != 0 do
        assert fizz_buzz(n) == "Fizz"
      end
    end

    test "multiples of 5 but not of 3 returns Fizz" do
      for n <- @range, rem(n, 3) != 0, rem(n, 5) == 0 do
        assert fizz_buzz(n) == "Buzz"
      end
    end

    test "multiples of 3 and 5 returns Fizz" do
      for n <- @range, rem(n, 3 * 5) == 0 do
        assert fizz_buzz(n) == "FizzBuzz"
      end
    end
  end
end
