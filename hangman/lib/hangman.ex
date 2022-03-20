defmodule Hangman do # API MODULE

  alias Hangman.Impl.Game, as: Game
  @type state :: :initiallizing | :won | :lost | :good_guess | :bad_guess | :already_used
  @type game :: any
  @type tally :: %{
    turns_left: integer,
    game_state: state,
    letters: list(String.t),
    used: list(String.t)
  }

  @spec new_game() :: game
  defdelegate new_game, to: Game
  # delegated new_game to Impl module 
  # to get rid of impl code in an API


  #make move takes the existing game and returns to new_game state and tally
  @spec make_move(game, String.t) :: {game, tally}
  def make_move(_game, _guess) do 
  end


end
