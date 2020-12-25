defmodule NumberCompare do
  #compares numbers which is greater and returns error
  #if inputs are not numbers
  #using case
  def greater(number, other_number) when is_number(number) and is_number(other_number) do
    check_greater(number, other_number)
  end

#catchall
  def greater(_number, _other_number) do
    {:error, "Invalid"}
  end


  #checks if the inputs are numbers when true
  #runs check fn 
  def check_greater(number, other_number) do
       case check_bool(number, other_number) do
                true -> {:ok, number}
                false -> {:ok, other_number}
    end
  end

    #check boolean returns true or false
  defp check_bool(number, other_number) do
    number >= other_number
  end
  
end


