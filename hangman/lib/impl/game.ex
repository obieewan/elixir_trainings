defmodule Hangman.Impl.Game do


  #type struct. it is conventionaol for a module that defines a structure
  #to export a type named t describing that struct
  @type t ::  %__MODULE__{
    turns_left: integer,
    game_state: Hangman.state,
    letters: list(String.t),
    used: MapSet.t(String.t),
  }
  

  #created a struct to hold the internal game state
  #defstruct function declares a new structure, naming fields
  #and (optionally) giving each an initial value.
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: [],
    used: MapSet.new()
  )


  #calls new_game function an pass in the random word from dictionary
  def new_game do
    new_game(Dictionary.random_word)
  end

  #takes a word as a parameter
  def new_game(word) do
    %__MODULE__{
      letters: word |> String.codepoints
      }
  end



end
