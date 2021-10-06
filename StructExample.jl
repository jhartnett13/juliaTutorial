mutable struct Person # added keyword mutable to be able to change values
    name::String # name attribute is of type String
    age::Int64    # age attribute is of type Int
end


struct Student # i made this mutable, and when i changed it to test it being immutable i got an error!
    # LoadError: invalid redefinition of constant Student
    # this went away after i restarted my coding environment
    p::Person # attribute s is of type person
    major::String # attribute major is of type String
    GPA::Float64 # attribute GPA is of type Float64
end

function printInfo(self::Person) # takes in parameter of type person
    println("My name is $(self.name), I am $(self.age) years old.")
end

function printInfoStudent(self::Student) # takes in parameter of type student
    println("My name is $(self.p.name), I am $(self.p.age) years old. My major is $(self.major) and my GPA is $(self.GPA).")
end


p1 = Person("Julia", 21) # initialize a person
println(p1.name) # accesing the name
p1.age = 100 # change the age
println(p1.age) # print the new age

# okay let's change the age back now
p1.age = 21

println(p1)
printInfo(p1)

# making myself a student

s1 = Student(Person("Julia", 21), "Data Science", 4.0) # have to pass in the whole type person
println(s1)

s2 = Student(p1, "Data Science", 4.0)  # can also pass the values in this way
println(s2)

# s2.major = "Math" -- LoadError: setfield! immutable struct of type Student cannot be changed

println(s1.p.name) # access a Person attribute from a Student

# printInfo(s2) -- ERROR: LoadError: MethodError: no method matching printInfo(::Student)

printInfoStudent(s1)





