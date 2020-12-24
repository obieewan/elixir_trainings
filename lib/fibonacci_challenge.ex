defmodule FibonacciChallenge do


  def calc_fib(0) do
    0
  end

  def calc_fib(1) do 
     1
  end

  def calc_fib(number) do
    calc_fib(number - 1) + calc_fib(number - 2)
  end




end
