defmodule Lists do

# [] = 0
# [ 1, 3, 5 ]  => 3

def len([]), do: 0
def len([_head | tail]), do: 1 + len(tail)

#sum [] = 0
#sum [1, 3,5] => 9

def sum([]), do: 0
def sum([head | tail]), do: head + sum(tail)

end
