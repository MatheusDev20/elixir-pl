defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name) |> String.first()
  end

  def initial(name) do
    str = first_letter(name) |> String.upcase()
    str <> "."
  end

  def initials(full_name) do
    String.split(full_name, " ")
    |> Enum.reduce("", fn x, acc -> acc <> " " <> initial(x) end)
    |> String.trim()
  end

  def pair(full_name1, full_name2) do
    1 = initials(full_name1)
    i2 = initials(full_name2)
    """
           ******       ******
         **      **   **      **
       **         ** **         **
      **            *            **
      **                         **
      **     #{i1}  +  #{i2}     **
       **                       **
         **                   **
           **               **
             **           **
               **       **
                 **   **
                   ***
                    *
    """
  end
end

IO.inspect(HighSchoolSweetheart.pair("John Doe", "Jane Doe"))
