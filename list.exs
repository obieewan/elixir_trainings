defmodule Lists do

# [] = 0
# [ 1, 3, 5 ]  => 3

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

#sum [] = 0
#sum [1, 3,5] => 9

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

#[1 ,2, 3] => [1 , 4, 9]   makes squares of list

  def square([]), do: []
  def square([ head | tail]) do
    [ head * head | square(tail) ] 
  end


  # doubles entry

  def double([]), do: []
  def double([head | tail]), do: [head*2 | double(tail)]

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func)] 
   

    
end
