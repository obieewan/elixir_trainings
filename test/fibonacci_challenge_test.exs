defmodule FibonacciChallengeTest do
  use ExUnit.Case
  doctest FibonacciChallenge

  test "calculate fibonacci n = 10" do
    assert FibonacciChallenge.calc_fib(10) ==  55
  end

  test "calculate fibonacci n = 5" do
    assert FibonacciChallenge.calc_fib(5) ==  5
  end


end
