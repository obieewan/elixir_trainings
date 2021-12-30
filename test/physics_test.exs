defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics



  test "escape velocity of earth is correct" do
    ev = Physics.Rocketry.escape_velocity :earth
  end

  test "escape velocity of planet X is correct" do
    %{mass: 4.0e22, radius: 6.21e6}
    |> Physics.Rocketry.escape_velocity
  end


end
