defmodule LittleIndian.Song do

  def indian(n), do: do_indian(n, 1)

  def indian_enum(n) do
    Enum.each(1..n, fn number -> IO.puts sing(number) end )
  end


  defp do_indian(n, acc) when n <= 10 and n > 0 do
    IO.puts sing(acc)
    do_indian(n-1, acc+1)
  end
  defp do_indian(_n, _acc), do: :ok

  defp sing(1), do: ~s{1 little indian}
  defp sing(n), do: ~s{#{n} little indians}


end
