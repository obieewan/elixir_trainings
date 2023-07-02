defmodule IncomeTax do

  def tax(amount) when is_number(amount) do
    applied_tax(amount)
  end

  def tax(_amount) do
    :error
  end

  def applied_tax(amount) when amount <= 2000 do
    0
  end

  def applied_tax(amount) when amount <= 3000 do
    amount * 0.05
  end

  def applied_tax(amount) when amount <= 6000 do
    amount * 0.1
  end

  def applied_tax(amount) when amount > 6000 do
    amount * 0.15
  end
end


