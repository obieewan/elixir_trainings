defmodule Dictionary.Impl.WordList do

  @type t :: list(String)

  @spec word_list() :: t
  def word_list do
    "assets/words.txt"                         #Changing word list to module attribute
    |> File.read!                             
    |> String.split(~r/\n/, trim: true)
  end


  @spec random_word(t) :: String.t
  def random_word(word_list) do                                  # Chooses a random word from word list
   word_list 
    |>Enum.random()                                    # Picks random word
  end


end
