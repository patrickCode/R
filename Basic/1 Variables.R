match.score <- 300
print(match.score)
assign("match.score", 500)
print(match.score)


#Custom Environment
my.environment <- new.env()
parent.env(my.environment)

#create variable in Custom Environment
assign("a", 10, my.environment) #Creates variable 'x' in the custom environment. So environment can be passed as a parameter to assign function
my.environment[["b"]] <- 20 #Creates variable in new environment
my.environment$c <- 30

#Get variables from enviornments
print(get("c", my.environment))
print(get("match.score", globalenv())) #Gets the variable x from global environment
print(my.environment[["b"]])
print(my.environment$a)

#Operators
8 + 8
87 - 43
43 * 21
10 / 4
8 ^ 4 #Exponent in scietific format
format(8 ^ 4, scientific = FALSE)  #Exponentiation without scietific format
10 ** 5 #Exponentiation
76 %% 32 #Modulus
10 %/% 3 #Integer division

#Mathematical functions
abs(-5) #Absolute
log(2) #Natuaral logarithm
log(2, base = 10) #Logarithm
exp(5) #Exponential
factorial(5)

#Special Constants
pi
options() #Get global options
options(digits=20) #Set digits to 10. So all results can contain upto 10 digits 

#Special Numbers
1/0 #Positive Infinity
-1/0 #Negative Infinity
Inf + 5 #Operation on Infinity = Infinity
is.finite(1/0) #Check if finite
is.infinite(1/0) #Check if infinite

#Undefined
Inf / Inf #NaN
is.nan(Inf/Inf) #Checks if NaN

#Missing Values
NA + 5
is.na(NA) #Checks if NA

#NaN = NA; NA <> NaN
is.na(NaN) #TRUE
is.nan(NA) #FALSE

#Logical Operators
5 > 2
5 >= 2
5 < 2
5 <= 2
5 == 2
5 != 2
"b" > "a"
!(TRUE)
TRUE | FALSE
TRUE & FALSE

#Vector Operations
student.marks <- c(10, 20, 30, 40) #Combine function
#Type 1
mean(student.marks) #Average/Mean
#Type 2
student.gracemarks <- student.marks + 5 #Adds 5 to each member of the veCtor
student.gracemarks
student.marks >= 30 #How many vector value is greater than 30
#Type 3
student.physics.marks <- c(15, 21, 34, 32)
student.chemistry.marks <- c(17, 26, 39, 24)

student.total.marks <- student.physics.marks + student.chemistry.marks
student.total.marks

