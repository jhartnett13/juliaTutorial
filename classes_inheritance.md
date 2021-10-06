# Classes and Inheritance in Julia

## Classes

Julia's closest equivalent of a class is called a "struct", short for structure and structure data. While structs exist, they do not have the full capability that classes in other languages have. In Julia, functions are not specifc to a struct. Rather than having a class method that is called from an instance of the class, functions are called and the object is passed in as a parameter. 

Julia structs do not seem to have any functions that serve a similar method across all objects (ie. `__str__` in Python) since functions do not belong to structs. Structs also have built in constructors, but it is possible to define your own constructor if the defualt does not serve the needed purporse. In simple cases, an instance of a type is created by just binding the given attributes to the instance. Outer constructor methods can be defined, and these can be useful for applying the same value to several attributes or supplying a default attribute value. There are also inner constructor methods, which are more complicated. These can be used for enforcing constraints on values and for self-referential recursive strucures. If an inner constructor is defined, the default constructor will not be applied. (https://docs.julialang.org/en/v1/manual/constructors/#man-constructors)

By default, an instance of a struct is immutable. This means that once an onject of that type as been created, its attributes can not be changed. This can be altered by adding the keyword 'mutable' in front of the struct declaration. (https://docs.julialang.org/en/v1/manual/types/#Mutable-Composite-Types)

It seems to be convention to use upper camelcase when naming a struct, as all of the structs in the documention start with a capital letter. All other defined types in Julia are defined in upper camelcase, as well (ex. `AbstractFloat`).

(https://docs.julialang.org/en/v1/manual/types/#Composite-Types)

## Inheritance

Julia has limited inheritance capabilities. This line from the documentaion is the only one I could find referring to any form of the word inheritance, and it is an interesting claim: "It turns out that being able to inherit behavior is much more important than being able to inherit structure, and inheriting both causes significant difficulties in traditional object-oriented languages" (https://docs.julialang.org/en/v1/manual/types/#man-types).

Another source mentions that Julia is capable of "composition", which allows a field of a subtype to be of a higher type. This source defines a Person struct that has attributes name and age, and then a Student struct that has attributes s, school, and shoes, where attribute s is of type person. This is declared using the `::` operator. This is a limitation of Julia. (https://syl1.gitbook.io/julia-language-a-concise-tutorial/language-core/custom-types)

Overloading does not seem to be a problem in Julia since functions are defined outside of structs. 

Julia currently does not support multiple inheritance. 

