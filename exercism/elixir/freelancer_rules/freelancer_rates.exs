defmodule FreelancerRates do
  @doc """
  Calculates the hourly rate for a freelancer
  """
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(service_value, discount) do
    service_value - (service_value * discount / 100.0)
  end

  def monthly_rate(hourly_rate, discount) do
    ceil(apply_discount(daily_rate(hourly_rate), discount) * 22)
  end

  def days_in_budget(budget, hourly_rate, discount) do
     Float.floor(budget / apply_discount(daily_rate(hourly_rate), discount), 1)
  end
end
