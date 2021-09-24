# If/else, Switch, and Logic Statements in Julia

## Boolean Statements in Julia

Boolean values in Julia are true and false. In Julia, true corresponds to 1 and false corresponds to 0. (https://docs.julialang.org/en/v1/base/numbers/#Core.Bool)

## Conditional Statements

Julia has if, elseif, and else statements. Something in Julia that is not the case in every language is that ```if``` statements return the value of the last executed statement in the branch. This example directly from the documentation shows that concept well. Here, "positive" is being returned as that is the value of the last executed statement. It is also required that the value of the conditional statement is true or false, not anything else.
```
julia> x = 3
3

julia> if x > 0
           "positive!"
       else
           "negative..."
       end
"positive!"
```

Julia also has a ternary operator, ```?:```. This can be used when a single conditional expression is needed, and can be more concise than a longer block of code in an if-else statement. The ternary operator takes in three operands, and the generic syntax is ```a ? b : c```. ```a``` is the condition expression, and ```b``` is executed if the condition is true while ```c``` is executed if the condition is false. (https://docs.julialang.org/en/v1/manual/control-flow/#man-conditional-evaluation)

## Short-Circuit Evaluation



## Dangling Else


## Switch/Case






