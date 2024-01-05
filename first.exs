IO.puts("Hello from Elixir")

# Atoms are constants whose name is their own value (Symbol in Ruby)
:apple
:stuff

IO.puts(:apple)

IO.puts(trunc(3.14))

# Kernel functions defined at Kernel module can be accessed globally in the namespace i.e trunc/1

# boolean support Kernel functions and/2 or/2 not/1
not true

true and true

true or false

"Stuff" <> "Things"
# <>/2 String concatenation.

IO.puts("Example #{:interpolation} with an Atom")

vlr = "Value"
IO.puts("Interpol with #{vlr}")

# Str length by byte size "ê" = 2 bytes so this why the Output is 6
IO.puts(byte_size("Hellê"))
#  Actual lenght = 5
IO.puts(String.length(("Hellê")))
