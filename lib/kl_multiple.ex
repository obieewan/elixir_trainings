defmodule KlMultiple do

  #returns
  def multiple(number, multiple) do
    with {:ok, list} <- compute_multiple(number, multiple),
         {:ok, sum} <- sum_multiple(list) do
      {:ok, sum}
    else
      {:error, :not_a_number} -> :invalid
      {:error, :not_a_list} -> :invalid
    end
  end

  def compute_multiple(number, multiple) when is_number(number) and is_number(multiple) do
    multiple_calc(number, multiple, 0, [])
  end

  defp multiple_calc(number, 0, num_acc, list) do
    {:ok, list} = {:ok, Enum.reverse(list)}
  end

  defp multiple_calc(number, multiple, num_acc, list) when multiple > 0 do
    new_val = number +  num_acc
    multiple_calc(number, multiple - 1, new_val, [ new_val | list])
  end


  def compute_multiple(_number, _multiple) do
    {:error, :not_a_number}
  end


  def sum_multiple(list) when is_list(list) do
    {:ok, Enum.sum(list)}
  end

  def sum_multiple(_list) do
    {:error, :not_a_list}
  end

end
