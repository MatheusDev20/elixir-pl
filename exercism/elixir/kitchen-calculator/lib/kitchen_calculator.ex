defmodule KitchenCalculator do

  def get_volume(vol_tuple) do
    elem(vol_tuple, 1)
  end

  def to_milliliter({:cup, volume}) do
    {:milliliter, volume * 240.0 }
  end

  def to_milliliter({:tablespoon, volume}) do
    {:milliliter, volume * 15.0 }
  end

  def to_milliliter({:teaspoon, volume}) do
    {:milliliter, (volume * 5.0) }
  end

  def to_milliliter({:fluid_ounce, volume}) do
    {:milliliter, volume * 30.0 }
  end

  def to_milliliter({:milliliter, volume}) do
    {:milliliter, volume }
  end


  def from_milliliter({:milliliter, volume}, :cup = unit) do
    {unit, volume / 240.0 }
  end


  def from_milliliter({:milliliter, volume}, :tablespoon = unit) do
    {unit, volume / 15.0 }
  end

  def from_milliliter({:milliliter, volume}, :teaspoon = unit) do
    {unit, volume / 5.0 }
  end

  def from_milliliter({:milliliter, volume}, :fluid_ounce = unit) do
    {unit, volume / 30.0 }
  end

  def from_milliliter({:milliliter, volume}, :milliliter = unit) do
    {unit, volume }
  end

  def convert({from_unit, volume}, to_unit) do
    # Take the volume from the unit and convert it to milliliter
    volume = get_volume(to_milliliter({from_unit, volume}))
    from_milliliter({:milliliter, volume}, to_unit)
  end

end
