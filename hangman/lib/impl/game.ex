defmodule Hangman.Impl.Game do

  alias Dictionary, as: Dictionary

  @type t :: %Hangman.Impl.Game{
    turns_left: integer,
    game_state: Hangman.state,
    letters: list(String.t),
    used: Mapset.t(String.t),
  }
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: [],
    used: MapSet.new()
  )

  def new_game do
    %Hangman.Impl.Game{
      letters: Dictionary.random_word |> String.codepoints
    }
  end



end
