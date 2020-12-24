defmodule FibonacciChallenge do
  

  def fib(index) do
    fib(index, 0, 1)
  end

  defp fib(index, _prev, next) when index < 0 do
   next 
  end

  defp fib(index, prev , next) do
    new_index = index - 1 
    new_prev = prev + next
    fib(new_index, new_prev, prev)
  end
end
