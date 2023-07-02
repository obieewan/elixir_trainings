defmodule NumberCompare do
  #compares numbers which is greater and returns error
  #if inputs are not numbers
  #using case
  def greater(number, other_number) when is_number(number) and is_number(other_number) do
    case check_greater(number, other_number) do
      true -> {:ok, number}
      false -> {:ok, other_number}
    end
  end

#catchall
  def greater(_number, _other_number) do
    {:error, "Invalid"}
  end

  #check boolean returns true or false
  defp check_greater(number, other_number) do
    number >= other_number
  end
  
end


