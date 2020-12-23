defmodule NumberCompare do
  #compares numbers which is greater and returns error
  #if inputs are not numbers
  def greater(number, other_number) do
    with {:ok, number, other_number} <- check_greater(number, other_number),
         {:ok, number} <- check_greater(number, other_number) do

      IO.puts "#{number} and #{other_number} are equal"
      IO.puts("#{number} is greater")
    else
      :error  -> IO.puts "Yahoo! Error!"
    end
  end

  #checks if the inputs are numbers when true
  #runs check fn 
  def check_greater(number, other_number) when is_number(number) and is_number(other_number) do
    case check_equals(number, other_number) do
      true -> {:ok, number, other_number}
      false -> case check_bool(number, other_number) do
                true -> {:ok, number}
                false -> {:ok, other_number}
      end
    end
  end

  def check_equals(number, other_number) when is_number(number) and is_number(other_number) do
    number == other_number
  end

  #catchall
  def check_greater(_number, _other_number) do
    :error
  end

  def check_equals(_number, _other_number) do
    :error
  end

  #check boolean returns true or false
   defp check_bool(number, other_number) do
    number > other_number
  end
end


