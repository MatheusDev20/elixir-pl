defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    # prepend using head-tail pattern
    [language | list]
  end

  def remove(list) do
    [_ | tail] = list
    tail
  end

  def first(list) do
    [first | _] = list
    first
  end

  def count(list) do
    Kernel.length(list)
  end

  # Using cond

  # def functional_list?(list) do
  #   cond do
  #     list === [] -> false
  #     hd(list) === "Elixir" -> true
  #     true -> functional_list2?(tl(list))
  #   end
  # end

  # Pattern Matching in function clauses
  def functional_list?([]), do: false
  def functional_list?(["Elixir" | _tail]), do: true
  def functional_list?([_head | tail]), do: functional_list?(tail)

  def sum_list(list) do
    cond do
      list == [] -> 0
      true -> hd(list) + sum_list(tl(list))
    end
  end
end

list = ["Elixir", "Ruby", "Python"]
list1 = ["Javascript", "Clojure", "Scheme", "OCAML"]

# IO.inspect(LanguageList.remove(list))
# IO.inspect(LanguageList.first(list))
# IO.inspect((LanguageList.count(list)))

IO.inspect(LanguageList.sum_list([1, 2, 3, 4, 5]))
IO.inspect(LanguageList.functional_list?(list))
