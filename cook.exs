# Named Functions
 # Multi-Line Function
defmodule Cook do
    def boil(food) do
        f = "Boil #{food}"
        String.upcase(f)
    end

    def shrimp, do: boil("shrimp")   # Single-Line Function
    
end

IO.inspect Cook.boil("steak")
IO.inspect Cook.shrimp

*** Module Practice ****

***** ADD Notes *****
********************* Review from Section 6 Lecture 17 **************

