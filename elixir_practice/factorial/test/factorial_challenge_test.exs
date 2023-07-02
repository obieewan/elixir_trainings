defmodule FactorialChallengeTest do
  use ExUnit.Case
  doctest FactorialChallenge

  test " n = 0" do
    assert FactorialChallenge.factorial(0) == {:ok, 1}
  end

  test "n = 5" do
    assert FactorialChallenge.factorial(5) == {:ok, 120}
  end

  test "n = 10" do 
    assert FactorialChallenge.factorial(10) == {:ok, 3628800}
  end

  test "error factorial" do
    assert FactorialChallenge.factorial("") == {:error, "Invalid"}
  end
end
