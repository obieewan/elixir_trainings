defmodule Physics.ConverterTwo do

  def to_light_seconds({unit, val}, precision: precision) do
    case unit do
      :miles -> from_miles(val)
      :meters -> from_meters(val)
      :feet -> from_feet(val)
      :inches -> from_inches(val) 
    end
    |> round_to(precison)
  end

  defp from_miles(val), do: val * 5.36819e-6
  defp from_meters(val), do:  val * 3.33563862036e-9
  defp from_feet(val), do: val * 1.016702651148816604e-9
  defp from_inches(val), do: val * 8.47252209534715723e-11


  defp round_to(val, precision), do: Float.round(val, precision)
end

