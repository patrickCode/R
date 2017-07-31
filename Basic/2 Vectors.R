#Vector
student.names <- c("John", "Shaw", "Derek", "Mango")
student.weight <- c(45.63, 65.6, 45.2, 34.9)
student.marks <- c(45L, 17L, 18L, 50L) #L represents integer

str(student.names) #gets the structure of the object

is.character(student.names) #checks if array contains character. This function can be used to test scalar values as well because scalar values are treated as vector of length 1
is.numeric(student.weight) 
is.integer(student.marks)
is.numeric(student.marks) #TRUE. Integer = Numeric
is.integer(student.weight) #FALSE. Numeric <> Integer

student.sports.interested <- c(TRUE, T, FALSE, F) #TRUE ~ T; FALSE ~ F. Logical vector

complex.vector <- c(98+3i, 21+8i, 11 + 12i, 98-65i) #Complex Vector
is.complex(complex.vector)

#Using vector function
vector("character", length = 4) #Create a character vector. default: emply string
vector("numeric", length = 4) #Create a numeric vector. default: 0
vector("integer", length = 4) #Create a integer vector. default: 0
vector("logical", length = 4) #Create a logical vector. default: FALSE
vector("complex", length = 4) #Create a complex vector. default: 0 +0i
  
#Vector Operations
##Arithmetic and Logical
student.physics.marks <- c(15, 21, 34, 32)
student.chemistry.marks <- c(17, 26, 39, 24)
student.total.marks <- student.physics.marks + student.chemistry.marks
str(student.total.marks)
student.total.marks >= 50

##Extracting Elements (Subsetting)
student.names[1] #indexing starts at 1
student.names[2]
student.names[1:3] #Extract multiple elements with index 1 to 3

student.names[c(T,F,T,F)] #Extract 1st and 3rd element and ignore 2nd and 4th element
student.names[student.physics.marks >= 30] #Extract students who scored more than 30 in physics. physics >= 30 returns a vector with T for those indexes where Physics score is greater than 30

##Coercions: Converting types (Type Casting)
###Implicit Coercions
students.weight <- c(43.32, 56.89, 45.64, "74.56")
str(students.weight) #Automically coerces all the elements to string
is.character(students.weight) #TRUE
is.numeric(students.weight) #FALSE

##Explicit Coercions
###Sensible Coercions
as.numeric(student.physics.marks >= 30) #Converts logical values to numeric values. T=1,F=0
as.character(student.total.marks) #Converts to character vector
as.integer(student.weight) #Decimal part will be removed

###Nonsense Coercions
as.numeric(student.names)