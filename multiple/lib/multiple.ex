defmodule Multiple do

  #finding sum of multiples using with
  def multiple(multiple, number_of) do
    with {:ok, list} <- compute_multiple(multiple, number_of),
         {:ok, sum} <- sum_multiple(list) do
      {:ok, sum}
    else
      :error -> {:error, "Invalid"}
    end
  end

  #returns list of multiple 
  def compute_multiple(multiple, number_of) when is_number(number_of) and is_number(multiple) do
    compute_multiple(multiple, number_of, 0, [])
  end

  #returns error if input are not numbers
  def compute_multiple(_multiple, _number_of) do
    :error
  end

  defp compute_multiple(_multiple, 0, _num_acc, list) do
     {:ok, Enum.reverse(list)}
  end

  defp compute_multiple(multiple, number, num_acc, list) when multiple > 0 do
    new_val = multiple +  num_acc
    compute_multiple(multiple, number - 1, new_val, [ new_val | list])
  end

  def sum_multiple(list) when is_list(list) do
    {:ok, Enum.sum(list)}
  end

  def sum_multiple(_list) do
    :error
  end

end
