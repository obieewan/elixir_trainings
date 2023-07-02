defmodule Tax do


  def actual_retail_price(prices, tax, applied_tax) when is_number(tax) do
    Enum.map(prices, fn price ->
      applied_tax.(price, tax)
    end)
  end

  def apply(prices, tax, tax_price) when is_number(tax) do
    Enum.map(prices, fn number ->
      tax_price.(price, tax)
    end)
  end

  def tax_price(price, tax) do
    price * tax
  end

  def applied_tax(price, tax) do
    price + (price * tax)
  end

 

#  def apply_tax(list) do
#    list
#    |>Enum.map(&applied_tax/1)
#  end
#
#
#  def applied_tax(price) when is_number(price) do
#    price + tax(price)
#  end
#
#  defp tax(price) when is_number(price) do
#    price * 0.12
#  end
#

end








