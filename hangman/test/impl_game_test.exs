defmodule HangmanImplGameTest do
  use ExUnit.Case

  alias Hangman.Impl.Game

  test "new game returns structure" do
    game = Game.new_game

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end


  test "new game returns correct word in lower case  a to z" do
    game = Game.new_game("combat")

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert game.letters    == ["c", "o", "m", "b", "a", "t"]
    assert Enum.all?(game.letters, fn codepoint -> String.match?(codepoint, ~r/[a-z]/) end)
  end

  test "state doesn't change if a game is won" do
    game = Game.new_game("combat")
           |> IO.inspect
    game = Map.put(game, :game_state, :won)
           |>IO.inspect
    { new_game, _tally} = Game.make_move(game, "x")

    assert new_game == game
  end




end

