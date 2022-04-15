defmodule Hangman.Impl.Game do

  alias Hangman.Type

  #type struct. it is conventional for a module that defines a structure
  #to export a type named t describing that struct
  #
  #it is not included in type module because it is private only the implementation 
  #need to know about all need in Type module are only the inside and outside
  @type t ::  %__MODULE__{
    turns_left: integer,
    game_state: Type.state,
    letters:    list(String.t),
    used:       MapSet.t(String.t),
  }
  

  #created a struct to hold the internal game state
  #defstruct function declares a new structure, naming fields
  #and (optionally) giving each an initial value.
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters:    [],
    used:       MapSet.new()
  )

  ###################################################################### 
  #spec returns the type of module
  @spec new_game() :: t
  #calls new_game function an pass in the random word from dictionary
  def new_game do
    new_game(Dictionary.random_word)
  end

  #spec takes a string and returns a module type
  @spec new_game(String.t) :: t
  #takes a word as a parameter and stores it in letters in list of codepoints
  def new_game(word) do
    %__MODULE__{
      letters: word |> String.codepoints
      }
  end
  ######################################################################

  #make move function accepts game state either won or lost
  @spec make_move(t, String.t) :: {t, Type.tally}
  def make_move(game = %{ game_state: state}, _guess) when state in [:won, :lost] do
    { game, tally(game)}
  end

  defp tally(game) do
    %{
      turns_left: game.turns_left,
      game_state: game.game_state,
      letters: [],
      used: game.used |> MapSet.to_list |> Enum.sort
    }
  end


end
