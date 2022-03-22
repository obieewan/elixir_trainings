defmodule HangmanImplGameTest do
  use ExUnit.Case
  alias Hangman.Impl.Game



  test "new game returns a structure" do
    Game.new_game

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert len(game.letters) > 0
  end



end

