defmodule Hangman.Impl.Game do

  alias Dictionary, as: Dictionary
  alias Hangman.Type

  @type t :: %__MODULE__{
    turns_left: integer,
    game_state: Type.state,
    letters:    list(String.t),
    used:       Mapset.t(String.t),
  }
  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters:    [],
    used:       MapSet.new()
  )

  #spec for new_game returns type of module
  @spec new_game() :: t
  def new_game do
    new_game(Dictionary.random_word)
  end

  @spec new_game(String.t) :: t
  def new_game(word) do
    %__MODULE__{
      letters: word |> String.codepoints
    }
  end



end
