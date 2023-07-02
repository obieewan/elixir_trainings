defmodule MatchstickFactory do
  @big 50
  @medium 20
  @small 5

  def boxes(matchstick)do
    big = div(matchstick, @big)
    remaining = rem(matchstick, @big)

    medium = div(matchstick, @medium)
    remaining = rem(matchstick, @medium)

    small = div(matchstick, @small)
    remaining = rem(matchstick, @small)

    %{
      big: big,
      medium: medium,
      small: small,
      remaining_matchstick: remaining,
    }
  end
end


