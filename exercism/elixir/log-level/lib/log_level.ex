defmodule LogLevel do
  def to_label(level, legacy?) do
   cond do
      (level == 0 || level == 5) && legacy? -> :unknown
      level == 0 && !legacy? -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 && !legacy? -> :fatal
      true -> :unknown
   end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)
    cond do
      (label == :error || label == :fatal) -> :ops
      (label == :unknown  && legacy?) -> :dev1
      label == :unknown -> :dev2
      :true -> false
    end
  end
end
