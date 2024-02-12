defmodule GuessingGame do
  def compare(secret_number, guess) do
    # Please implement the compare/2 function
  end
  def compare(secret_number, guess) when secret_number === guess do "Correct" end
  def compare(secret_number, guess) when secret_number < guess do "Too High" end
  def compare(secret_number, guess) when secret_number > guess do "Too low" end

end

IO.inspect(GuessingGame.compare(5,5))
