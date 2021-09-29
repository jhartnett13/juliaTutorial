# Loops and Functions in Julia

## Loops
Julia supports while and for loops. While and for loops in Julia act like they do in a language like Python, just with slightly different syntax. While loops are executed until (or unless) the initial condition of the loop evaluates to be false. For loops are used in situations where counting and iteration is useful. Some of the important syntax is that loops end with ```end``` and do not have any form of brackets or colons. The scope of variables is also important in loops; in my while loop, I had to specify that ```i``` is a global variable when I incremented it inside my loop. (https://docs.julialang.org/en/v1/manual/control-flow/#man-loops)


## Functions

Basic syntax of functions in Julia looks like this:
```
function f(x,y)
  x + y
end
```
Here function defines that this will be a function block, and f is the name of the function. This function has two arguments, x and y, and performs x + y. Funcitons in Julia automatically return the value of the last expression evaluated, so this function will return the value of x + y. Functions end with ```end```. 

Simple functions can be writtes on one line with the followng syntax:

```f(x,y) = x + y```

This function is the same as the one above. 

Functions in Julia allow arguments of different types to be passed in. Testing the code below, the function printed "hi" and added 2 + 1 to return 3. 

```
function test(x, y)
    println(x)
    y + 1
end

test("hi", 2)
```

(https://docs.julialang.org/en/v1/manual/functions/)

### Return Statements

By default, functions in Julia return the value of the last expression evalulated without a ```return``` statement being needed. ```return``` is not always needed for simple functions, so this is a useful feature in Julia. However, there are many other situations where someone may want to specify where to have a return statement or what to return. In these cases, all that is needed is the kewword ```return```. (https://docs.julialang.org/en/v1/manual/functions/#The-return-Keyword)

To return a value of a specific type, the type to be returned can be declared in the function definition. To do this, ```::``` is added after the function definition and followed by the type desired to be returned. In the following function, and INT8 will always be returned. (https://docs.julialang.org/en/v1/manual/functions/#Return-type)

```
function g(x, y)::Int8
           return x * y
       end;
```

Since a function automatically returns the last expression evaluated, it has to be explicitly stated if a function should return nothing. This can be done with ```return nothing```, just ```return```, or just ```nothing```. (https://docs.julialang.org/en/v1/manual/functions/#Returning-nothing)

It is possible to simulate returning multiple values from a function in Julia  by returning a tuple of values. This tuple is able to be broken into individual arguments by creating them in the assignment statement, so it is not too different from how Python would return multiple values. (https://docs.julialang.org/en/v1/manual/functions/#Multiple-Return-Values)


### Recursion





### pass by reference or pass by value

### anything else that's important


3. Are there any rules about where the function has to be placed in your code file so that it can
run?
4. Does your language support recursive functions?


7. Is your language pass-by reference or value? Check your code against outside sources in case
there is anything tricky going on (like in Perl).
8. Are there any other aspects of functions in your language that aren't specifically asked about
here, but that are important to know in order to write one? What are they?
