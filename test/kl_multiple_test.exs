defmodule KlMultipleTest do
  use ExUnit.Case
  doctest KlMultiple

  test "returns {:ok, sum}" do
    assert KlMultiple.multiple(2,5) ==  {:ok, 30}
  end

  test "returns error if not number" do
    assert KlMultiple.multiple("",[]) == :invalid
  end

  test "returns sum of list" do
    assert KlMultiple.sum_multiple([2, 4, 6, 8, 10]) == {:ok, 30}
  end

  test "returns :not_a_number" do
    assert KlMultiple.compute_multiple("",[]) == {:error, :not_a_number}
  end

  test "multiple_calc" do
    assert KlMultiple.compute_multiple(2,5) == {:ok, [2, 4, 6, 8, 10]}
  end


end
