defmodule Dictionary do

  def word_list do
    File.read!("assets/words.txt")                    #Reads file from assets
    |>String.split(~r/\n/, trim: true)                # Splits words dictionary inside word.txt excludes empty string
  end


  def random_word do                                  # Chooses a random word from word list
    word_list
    |>Enum.random
  end

 
end



