defmodule FibonacciChallengeTest do
  use ExUnit.Case
  doctest FibonacciChallenge

  test "greets the world" do
    assert FibonacciChallenge.hello() == :world
  end
end
