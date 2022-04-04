defmodule LittleIndian.Song do

  def indian(n), do: do_indian(n, 1)

  def indian_each(n) do
    Enum.each(1..n, fn number ->
      IO.puts say(number)
    end)
  end

  # private
  
  defp do_indian(n, acc) when n <= 10 and n > 0 do
    IO.puts say(acc)
    do_indian(n-1, acc+1)
  end
  defp do_indian(_n, _acc), do: :ok

  defp say(1), do: "1 little indian"
  defp say(n), do: "#{n} little indians"
end
