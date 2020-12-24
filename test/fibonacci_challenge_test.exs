defmodule FibonacciChallengeTest do
  use ExUnit.Case
  doctest FibonacciChallenge

  test " check n = 0 " do
    assert FibonacciChallenge.fib(0) == 0
  end
  test " check n = 1" do
    assert FibonacciChallenge.fib(1) == 1
  end

  test "calculate fibonacci n = 10" do
    assert FibonacciChallenge.fib(10) ==  55
  end

  test "calculate fibonacci n = 5" do
    assert FibonacciChallenge.fib(5) ==  5
  end

  test "calculate fibonnaci n = 20 " do
    assert FibonacciChallenge.fib(20) == 6765
  end

  test "calculate fibonacci n = 100" do
    assert FibonacciChallenge.fib(100) == 354_224_848_179_261_915_075
  end


end
