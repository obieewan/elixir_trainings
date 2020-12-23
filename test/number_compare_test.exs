defmodule NumberCompareTest do
  use ExUnit.Case
  doctest NumberCompare

  test "check and returns greater number function caller" do
    assert NumberCompare.greater(10,5) == {:ok, 10}
  end

  test "check_greater function" do
    assert NumberCompare.check_greater(5,9) == {:ok, 9}
  end
end
