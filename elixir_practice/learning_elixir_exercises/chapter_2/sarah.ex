defmodule Sarah do

  def total_cost(bread, milk, cake) do
    total = (bread * 0.10) + (milk * 2) + (cake * 15)

    IO.puts("Total cost is #{total} dollars")
  end


end


