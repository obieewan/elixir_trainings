defmodule HangmanImplGameTest do
  use ExUnit.Case
  alias Hangman.Impl.Game



  test "new game returns a structure" do
    game = Game.new_game

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "new game returns correct word" do
    game = Game.new_game("combat")

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert game.letters == ["c", "o", "m", "b", "a", "t"]
    #test each element is in lower case character ("a" to "z")
    assert Enum.all?( game.letters, fn codepoint -> String.match?(codepoint, ~r/[a-z]/) end)
  
  end
  



end

