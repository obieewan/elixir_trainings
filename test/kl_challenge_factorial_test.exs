defmodule KlChallengeFactorialTest do
  use ExUnit.Case
  doctest KlChallengeFactorial

  test "n = 5" do
    assert KlChallengeFactorial.factorial(5) == {:ok, 120}
  end

  test "error factorial" do
    assert KlChallengeFactorial.factorial("") == {:error, "Invalid"}
  end



end
