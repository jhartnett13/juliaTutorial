# Data Types and Naming Conventions

## Variable Naming Requirements and Conventions

Julia has a lot of flexibility in regards to naming variables. Variable names are case-sensitive. They must begin with an uppercase or lowercase letter (A-Z,a-z), an underscore, or a subset of Unicode code points greater than 00A0. The documentation has the specific allowed Unicode code points listed. After the first character in a variable name, digits (0-9) and ! may also be included. There are also more allowed Unicode code points that are listed in the documentation. It is also allowed to rename built-on constants or functions (such as pi), however this is not recommended. The only variable names that are not allowed are any that are a built-in keyword, those listed here https://docs.julialang.org/en/v1/base/base/#Keywords. 

As with all programming languages, there are conventions regarding how to name variables in Julia. These conventions are not enforced by the program or compiler as Julia as few rules about what is not allowed to be a variable name, they are standards that have been adopted for ease of coding and sharing code. The first convention is that the names of variables should be lowercase. An underscore can be used to show word separation, but this is discouraged unless the name would be hard to read without it. If naming a Type or Module begin with a capital letter and use camel case to show word separation. Names of functions and macros should be lowercase and without underscores. (https://docs.julialang.org/en/v1/manual/variables/)


## Statically or Dynamically typed? Strongly or Weakly typed?

Julia is a dynamically typed language, which means that data types are not known until the program is run. To add in some of the functionality of statically typed code, Julia allows the programmer the option to indicate if a value is meant to be a certain type. If the type is not specified, values may be any type. Specifying the type may create more efficient code in some situations but useful code does not always need to explicitly use types, making Julia able to have the best parts of both statically and dynamically typed languages. https://docs.julialang.org/en/v1/manual/types/

After some testing, I believe that Julia is weakly typed. In the REPL I typed x = 5 and followed it with x = "hi", and it allowed me to do both so I believe that Julia is weakly typed.


## Converting Types

If I try to run the expression x = "5" + 6, I get an error that says MethodError: no method matching +(::String, ::Int64). To get around this, I wrote some code that takes "5" assigned to a variable, converts it from a string to an int using parse(), and then adds the numbers together. This kind of conversion is something that would be best to write a function for. It is fairly easy to convert between types in Julia. To write an int in a string, I used string(variable) to convert the int to a string that could then be concatenated to a string. Julia allows arrays and dictionaries to be heterogeneous, storing different types of values. I have not come across any limitations related to conversions. 

-- built in complex data types

Julia supports widening conversions when performing operations between values of different types. According to the documentation, Julia supports promoting to a common type during math operations like a language like Python would do when (https://docs.julialang.org/en/v1/manual/conversion-and-promotion/). When adding an int and a float I got back a float, and the same was true when dividing an int by a float. I could not add two string together. I got an error LoadError: MethodError: no method matching +(::String, ::String) when trying. 
