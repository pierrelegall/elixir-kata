defmodule Kata.Fibonacci do
  @moduledoc """
  Hold the fibonacci function.
  """

  @doc """
  The so-called fibonacci.
  """
  @spec fibonacci(non_neg_integer) :: non_neg_integer
  def fibonacci(n)

  def fibonacci(0), do: 0
  def fibonacci(1), do: 1

  def fibonacci(n) when is_integer(n) and n > 0 do
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end
