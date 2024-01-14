{a,b,c} = {:a, :b, :c}

IO.puts(a)
IO.puts(b)
IO.puts(c)


# Pattern matching on a specific value "atom :ok" of the list"
{:ok, result} = {:ok, 13}

IO.puts(result)
