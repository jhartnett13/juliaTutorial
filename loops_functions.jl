# Loops

# While Loops
i = 1;

while i <= 5
    println(i)
    global i += 1
end

# For loops

for j = 1:5
    println(j + 5)
end

for k in ["cat", "dog", 17]
    println(k)
end

function test(x, y)
    println(x)
    y + 1
end

test("hi", 2)

# Functions

# Takes in 2 numbers, multiplies them, returns output
mult(x, y) = x * y
println(mult(3,5))

# Recursive function - factorial
function fac(x)
    if x == 1
        return x
    else
        return x*fac(x-1)
    end
end

println(f(7))

# Takes in a string, splits it, returns both strings

function get_strings(s, t)
    s1, s2 = split(s, t)  # https://www.geeksforgeeks.org/splitting-string-into-array-of-substrings-in-julia-split-and-rsplit-method/
    return s1,s2
end

b,e = get_strings("hello", "e")
println(b)
println(e)

# call your functions and save the results in variables
😎 = fac(55)
println(😎)

# write a function that tests whether your language is pass-by-reference or pass-by-value

function append1(y)
    push!(y, 1)
end

x = [5,4,3,2]
append1(x)
println(x) # this appends to the array


# testing pass by value
function add1(x)
    x += 1
end

x = 5
add1(x)
println(x) # this prints 5



















