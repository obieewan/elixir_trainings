defmodule FibonacciChallengeTest do
  use ExUnit.Case
  doctest FibonacciChallenge

  test "calculate fibonacci n = 10" do
    assert FibonacciChallenge.calc_fib(10) ==  55
  end

  test "calculate fibonacci n = 5" do
    assert FibonacciChallenge.calc_fib(5) ==  5
  end

  test "calculate fibonnaci n = 20 " do
    assert FibonacciChallenge.calc_fib(20) == 6765
  end

  test "calculate fibonacci n = 100" do
    assert FibonacciChallenge.calc_fib(100) == 354_224_848_179_261_915_075
  end


end
