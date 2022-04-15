defmodule HangmanImplGameTest do
  use ExUnit.Case

  alias Hangman.Impl.Game

  test "new game returns structure" do
    game = Game.new_game

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "new game returns  correct word" do
    game = Game.new_game("combat")

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert game.letters == ["c", "o", "m", "b", "a", "t"]
    #checks that each element of the letters list is a lower-case
    assert Enum.all?(game.letters, fn codepoint -> String.match?(codepoint, ~r/^[a-z]+$/) end)
  end

  test "state doesn't change if a game is won or lost" do
    for state <- [:won, :lost] do
    game = Game.new_game("combat")
    game = Map.put(game, :game_state, state)
    { new_game, _tally } = Game.make_move(game, "x")

    assert new_game == game
    end
  end

  test "a duplicate letter is reported" do
    game =  Game.new_game()
    {game, _tally} = Game.make_move(game, "x")
    assert game.game_state != :already_used

    {game, _tally} = Game.make_move(game, "y")
    assert game.game_state != :already_used
    
    {game, _tally} = Game.make_move(game, "x")
    assert game.game_state == :already_used
  end
    
  test "record letters used" do
    game = Game.new_game()
    {game, _tally} = Game.make_move(game, "x")
    {game, _tally} = Game.make_move(game, "y")
    {game, _tally} = Game.make_move(game, "x")
    assert MapSet.equal?(game.used, MapSet.new(["x", "y"]))
  end

    

end
