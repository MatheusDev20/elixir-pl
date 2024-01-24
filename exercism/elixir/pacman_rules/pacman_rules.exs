defmodule PacmanRules do
  @doc """
  Pac Man Rules"
  """
  def eat_ghost?(active_power_pellet?, touching_ghost?) do
    active_power_pellet? and touching_ghost?
  end

  def score?(touching_power_pellet?, touching_dot?) do
    touching_dot? or touching_power_pellet?
  end


  def lose?(has_power_pellect?, is_touching_ghost?) do
    is_touching_ghost? and !has_power_pellect?
  end

  def win?(eaten_all_dots?, has_power_pellet, is_touching_ghost) do
    eaten_all_dots? and !lose?(has_power_pellet, is_touching_ghost)
  end


end
