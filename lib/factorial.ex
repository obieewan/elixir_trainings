defmodule KlChallengeFactorial do


  def factorial(n) when is_number(n) do
    cal_fact(n, 1)
  end

  def factorial(_n), do: {:error, "Invalid"}


  defp cal_fact(0, store) do
    {:ok, store}
  end

  defp cal_fact(n, store) when n > 0 do
    new_acc = n - 1
    cal_fact(new_acc, n * store)
  end


end
