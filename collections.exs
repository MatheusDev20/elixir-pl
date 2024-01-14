# List and Tuples


# Lists
# list = [1, 2, 3, 4, 5]
# list2 =  [6, 7, true, :random]
list = [0] ++ [1,2,3]
IO.puts(list)

# Immutable data structures, perform operations always return a new list.
concat = list ++ list2
IO.puts(concat)
# Stored as Linked Lists in memory so to perform a whole traversial is a linear operation O(n)


### Concatenation is a operation that depends on the size of the left hand list, cause it need to traversal all the list elements.

[0] ++ [1,2,3,4,5] # Cheap in time
[0,1,2,3,4,5] ++ [9] # Expensive time


# Tuples

# Also immutable Data structure, used to store elements with fixed size
# Expensive to add elements since another copy of the whole tuple needs to be created to mantain the immutability

# tup1 = {:ok, "Hello"}
# IO.puts(tup1)

buffer = File.read("./read_from_elixir.txt")
IO.puts(elem(buffer, 1))
