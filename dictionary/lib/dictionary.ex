defmodule Dictionary do

  @word_list "assets/words.txt"                         #Changing word list to module attribute
    |> File.read!                             
    |> String.split(~r/\n/, trim: true)


  def random_word do                                  # Chooses a random word from word list
   @word_list 
    |>Enum.random()                                    # Picks random word
  end

 
end



