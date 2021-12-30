defmodule Rocketry.Converter do

  def nearest_tenth(val) do
    Float.ceil val, 1
  end


  def to_km(velocity) do
    velocity / 1000
  end

  def to_light_seconds({:miles, miles}, precision \\ 5) do
    (miles * 5.36819e-6) 
    |> round_to(precision)
  end

  def to_light_seconds({:meters, meters}, precision \\ 5) do
    (meters * 3.335638620368e-9)
    |> round_to(precision)
  end

  def rounded_to_nearest_tenth(val) do
    Float.ceil(val,1)
  end

  defp round_to(val, precision) when is_float(val) do
    Float.round(val, precision)
  end

  defp round_up(val) when is_float(val) do
    Float.ceil(val, 5)
  end

  defp round_down(val) when is_float(val), do: trunc(val)


end

