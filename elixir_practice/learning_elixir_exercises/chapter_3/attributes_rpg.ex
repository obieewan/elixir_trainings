defmodule Attributes do

  def attri_sum(%{strength: strength, dexterity: dexterity, intelligence: intelligence}) do
    (strength * 2) + (dexterity * 3) + (intelligence * 3)
  end

end

