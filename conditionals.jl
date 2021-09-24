x = 1
y = 2

# One condition if/else statement

if x < 5
    println("$x is less than 5")
end


# Multi condition if/else statement
if x < y && x < 10
    println("$x is less than $y and less than 10")
end

#if-elif-else statement
x = 7
y = 3
z = 5
if x == y
    println("$x is equal to $y")
elseif x < y
    println("$x is less than $y")
else
    println("$x is greater than $y")
end


# short-circuit logic
if x > y && x/0 == 2
    println("This works!")
else
    println("This is not a valid short-circut expression")
end


println(x < y || z > y) # this is true


# ternary operator
println(x < y ? "true" : "false")


# compound statements
z = begin
    x = 1
    y = 2
    x + y
end
println(z)