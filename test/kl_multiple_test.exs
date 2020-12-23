defmodule MultipleTest do
  use ExUnit.Case
  doctest Multiple

  test "returns {:ok, sum}" do
    assert Multiple.multiple(2,5) ==  {:ok, 30}
  end

  test "returns error if not number" do
    assert Multiple.multiple("",[]) == :invalid
  end

  test "returns sum of list" do
    assert Multiple.sum_multiple([2, 4, 6, 8, 10]) == {:ok, 30}
  end

  test "returns :not_a_number" do
    assert Multiple.compute_multiple("",[]) == {:error, :not_a_number}
  end

  test "multiple_calc" do
    assert Multiple.compute_multiple(2,5) == {:ok, [2, 4, 6, 8, 10]}
  end


end
