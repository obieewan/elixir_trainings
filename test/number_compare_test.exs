defmodule NumberCompareTest do
  use ExUnit.Case
  doctest NumberCompare

  test "check and returns greater number function caller" do
    assert NumberCompare.greater(10,5) == {:ok, 10}
  end

  test "check return on 2nd arg greater" do 
    assert NumberCompare.greater(4,9) == {:ok, 9}
  end

  test "returns number even equal" do
    assert NumberCompare.greater(4,4) == {:ok, 4}
  end

  test "check_greater function" do
    assert NumberCompare.check_greater(5,9) == {:ok, 9}
  end

  test "check_greater error return" do
    assert NumberCompare.check_greater("",[]) == :error
  end

end
