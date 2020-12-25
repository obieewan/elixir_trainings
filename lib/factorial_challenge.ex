defmodule FactorialChallenge do


  def factorial(n) when is_number(n) do
    factorial(n, 1)
  end

  def factorial(_n), do: {:error, "Invalid"}


  defp factorial(0, store) do
    {:ok, store}
  end

  defp factorial(n, store) when n > 0 do
    new_acc = n - 1
    factorial(new_acc, n * store)
  end


end
