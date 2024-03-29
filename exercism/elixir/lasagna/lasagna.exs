defmodule Lasagna do

  def expected_minutes_in_oven() do
    40
  end


  def remaining_minutes_in_oven(time_in_oven) do
      if time_in_oven > 40 do
        "Your lasagna is done, better hurry up!"
      end
    expected_minutes_in_oven() - time_in_oven
  end

  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  def total_time_in_minutes(layers, time_in_oven) do
    preparation_time_in_minutes(layers) + time_in_oven
  end

  def alarm() do
    "Ding!"
  end

end
