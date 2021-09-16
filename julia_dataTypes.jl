#=  Write a piece of code that creates variable of each of these common data types (where possible) and follows the
naming conventions =#

# something you can do but shouldn't
😎 = "this is a horrible variable name"
println("😎: "*😎)


# int
this_is_an_int = 5

println(this_is_an_int)

# string
this_is_a_string = "hi"
println(this_is_a_string)

# floating point number
this_is_a_float = 2.5
println(this_is_a_float)

# boolean
# true and false are all lowercase
x = 6
println(x > 10)

# array/list
# source: https://www.geeksforgeeks.org/arrays-in-julia/

# 1D array - very similar to python!
my_1D_array = [1,2,3,4]
println(my_1D_array)
s2 = my_1D_array[2] # counting starts at 1
s = string(s2)  # converting int to string
println("The second item in my array is "*s)

# an array is heterogenous
my_mixed_array = ["this", 1, "is", 2, "an", 3, "array"]
println(my_mixed_array)
println(my_mixed_array[7])

# 2D array
my_2D_array = [1 2 3; 4 5 6]
my_2D_array

# dictionary
# https://docs.julialang.org/en/v1/base/collections/#Base.Dict
# constructs a hash table with keys k and values v, keys are compared with isequal and hashed with hash

my_dict = Dict([("A",1), ("B", 2)])
println(my_dict)

my_dict2 = Dict([("A",1), ("B", 2), (3, "C")])
println(my_dict2)

# testing x = "5" + 6
# x = "5"+ 6 -- this does not work
# can feed the "5" to parse to get the number and then do the addition
# https://docs.julialang.org/en/v1/base/numbers/#Base.parse

y = "5"
z = parse(Int, y)
println(z)

x = z + 6
println(x)


# experimenting with doing things with different types
x = 4.5
y = 2
println(x + y)
println(x/y)

