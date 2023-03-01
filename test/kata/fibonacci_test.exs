defmodule Kata.FibonacciTest do
  use ExUnit.Case

  import Kata.Fibonacci

  describe "&fibonacci/1:" do
    test "returns 0 with n = 0" do
      assert fibonacci(0) == 0
    end

    test "returns 1 with n = 1" do
      assert fibonacci(1) == 1
    end

    test "returns fibonacci(n - 1) * fibonacci(n - 2)" do
      assert fibonacci(5) == 5
      assert fibonacci(10) == 55
      assert fibonacci(15) == 610
    end

    test "throw an error with if n is negative" do
      assert_raise FunctionClauseError, fn ->
        fibonacci(-1)
        fibonacci(-42)
      end
    end
  end
end
