defmodule Dictionary do


  @spec start() :: :ok
  def start() do
    random_word()
  end

  defdelegate random_word(), to: Dictionary.Impl.WordList
 
end



