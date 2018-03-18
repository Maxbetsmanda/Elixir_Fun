#Hello World
IO.puts("Hello World, its Amanda!")


#Built-in Methods
IO.puts String.downcase "BOOOOM"


#Anonymous Functions
hello = fn(p) -> IO.puts "Hello #{p}" end

hello.("Elixir!!!")


# The '=' operator is similar to algebraic use/ matches left side with right side

card = 88       #Binds card to value of 88
bingo = fn      #Anonymous function that serves as an if/else statement
    (88)-> "BINGO!!!!" 
    (_)-> "NO WIN!, You Lose!!!!"       # '_' represents a value to be ignored in a pattern and cannot be used in expressions
end
   

IO.puts bingo.(88)
IO.puts bingo.(44)
IO.puts bingo.(12)
IO.puts bingo.(card)

# Bind to variables on left side using 'pin'/'^'
# Pattern Matching & Binding

# Tuples
{a, b, c} = {1, 2, 3}
IO.puts a            #outputs>>  1
IO.puts b            #outputs>>  2
IO.puts c            #outputs>>  3


#Lists     -lists have pointers     .....head | tail....
# Can also be used to prepend to a list









#.....IN IEX.......
[x, y, _] = [1, 2, "BAD String"]     
#outputs>> [1, 2, "BAD String"]

iex(3)> [:head, :tail]
#outputs>> [:head, :tail]

iex(4)> list = [:head, :tail]
#outputs>> [:head, :tail]

iex(5)> hd list
#outputs>> :head

iex(6)> tl list
#outputs>> [:tail]

iex(7)> [a | b]= list
#outputs>> [:head, :tail]

iex(8)> a
#outputs>> :head

iex(9)> b
#outputs>> [:tail]

iex(10)> list
#outputs>> [:head, :tail]

iex(11)> newList = [0 | list]
#outputs>> [0, :head, :tail]

iex(14)> Kernel.length newList
#outputs>> 3

iex(15)> length newList
#outputs>> 3

iex(17)> [97, 98, 99]
#outputs>> 'abc'

iex(18)> [1, 2, 3]
#outputs>> [1, 2, 3]

iex(19)> [333, 565, 90]
#outputs>> [333, 565, 90]

iex(20)> [100, 101, 102]
#outputs>> 'def'

iex(21)> 'def' == "def"
#outputs>> false


# Keyword Lists - Lists of tuple pairs with atom at beginning

iex(22)> k = [{:a, 1}, {:b, 2}]
#outputs>> [a: 1, b: 2]

iex(23)> [{:a, 1}, {:b, 2}] == [a: 1, b: 2]
#outputs>> true

iex(26)> [a: 1, b: 2] ++ [c: 3]
#outputs>> [a: 1, b: 2, c: 3]

iex(27)> [head | tail] = [a: 1, b: 2]
#outputs>> [a: 1, b: 2]

iex(28)> head
#outputs>> {:a, 1}

iex(29)> tail
#outputs>> [b: 2]

# Retrieving value with Keyword Lists
    # Rarely used for pattern matching, length and items must matches
    # Used for passing options to functions

iex(31)> Keyword.get([a: 1,b: 2], :b)
#outputs>> 2

iex(32)> [a: 1, b: 2][:b]
#outputs>> 2

iex(33)> cook = fn(heat, foods) -> Keyword.values(foods) |> Enum.map(&(heat <> &1)) end
#Function<12.99386804/2 in :erl_eval.expr/5>

iex(34)> cook.("Fried", [meat: "sausage", veg: "beans"])
#outputs>> ["Friedsausage", "Friedbeans"]

iex(35)> cook.("Fried", meat: "sausage", veg: "beans")
#outputs>> ["Friedsausage", "Friedbeans"]

iex(36)> cook.("Fried ", meat: "sausage", veg: "beans")
#outputs>> ["Fried sausage", "Fried beans"]

iex(37)> if false, do:  :this, else: :that
#outputs>> :that

iex(38)> if true, do:  :this, else: :that
#outputs>> :this


#   iex(39)> if (true, [do:  :this, else: :that])
#   ** (SyntaxError) iex:39: unexpected parentheses. If you ar
#   e making a function call, do not insert spaces between the
#   function name and the opening parentheses. Syntax error b
#   efore: '('

iex(39)> if(true, [do:  :this, else: :that])
#outputs>> :this



**** REVIEW MAPs
# Maps are a type of Dictionary (order is not important)
# Inherit from Dict module
# Modules in Maps.....get...to_list ****

iex(41)> Dict
Dict
iex(42)> map = %{:a => 1, :b => 2}
%{a: 1, b: 2}
iex(43)> %{"hello => :world}...(43)>
...(43)> %{"hello => :world}
** (SyntaxError) iex:45: syntax error before: hello

iex(43)> %{"hello" => :world}
%{"hello" => :world}
iex(44)> %{fn -> "boom" end => "boom"}
%{#Function<20.99386804/0 in :erl_eval.expr/5> => "boom"}
iex(45)> Map.keys
** (UndefinedFunctionError) function Map.keys/0 is undefine
d or private. Did you mean one of:

      * keys/1

    (elixir) Map.keys()
iex(45)> Map.keys %{fn -> "boom" end => "boom"}
[#Function<20.99386804/0 in :erl_eval.expr/5>]
iex(46)> map
%{a: 1, b: 2}
iex(47)> map[:b]
2
iex(48)> map[:z]
nil
**** MODULES