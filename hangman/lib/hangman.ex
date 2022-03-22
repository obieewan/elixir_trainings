defmodule Hangman do # API MODULE

  alias Hangman.Impl.Game
  alias Hangman.Type

  @opaque game  :: Game.t
  

  @spec new_game() :: game
  defdelegate new_game, to: Game
  # delegated new_game to Impl Game module 
  # to get rid of impl code in an API


  #make move takes the existing game and returns to new_game state and tally
  @spec make_move(game, String.t) :: {game, Type.tally}
  defdelegate make_move(game, guess), to: Game



end
