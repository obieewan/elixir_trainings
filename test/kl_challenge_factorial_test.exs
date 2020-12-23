defmodule KlChallengeFactorialTest do
  use ExUnit.Case
  doctest KlChallengeFactorial

  test "n = 5" do
    assert KlChallengeFactorial.fact(5) == 120
  end

end
