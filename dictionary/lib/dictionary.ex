defmodule Dictionary do

  alias Dictionary.Impl.WordList

  @opaque t :: WordList.t

  @spec start() :: :ok
  defdelegate start, to: WordList, as: :word_list

  @spec random_word(t) :: String.t
  defdelegate random_word(word_list), to: WordList

 
end



