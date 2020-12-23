defmodule KlMultiple do

  #returns
  def multiple(multiple, number) do
    with {:ok, list} <- compute_multiple(multiple, number),
         {:ok, sum} <- sum_multiple(list) do
      {:ok, sum}
    else
      {:error, :not_a_number} -> :invalid
      {:error, :not_a_list} -> :invalid
    end
  end

  def compute_multiple(multiple, number) when is_number(number) and is_number(multiple) do
    multiple_calc(multiple, number, 0, [])
  end

  defp multiple_calc(multiple, 0, num_acc, list) do
     {:ok, Enum.reverse(list)}
  end

  defp multiple_calc(multiple, number, num_acc, list) when multiple > 0 do
    new_val = multiple +  num_acc
    multiple_calc(multiple, number - 1, new_val, [ new_val | list])
  end


  def compute_multiple(_multiple, _number) do
    {:error, :not_a_number}
  end


  def sum_multiple(list) when is_list(list) do
    {:ok, Enum.sum(list)}
  end

  def sum_multiple(_list) do
    {:error, :not_a_list}
  end

end
