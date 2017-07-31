#List
student.names <- c("John", "Shaw", "Derek", "Mango")
student.weight <- c(45.63, 65.6, 45.2, 34.9)
student.physics.marks <- c(15, 21, 34, 32)
student.chemistry.marks <- c(17, 26, 39, 24)
student.genders <- factor(c("Male", "Female", "Male", "Female"))
student.total.marks <- student.physics.marks + student.chemistry.mark

#Creating unnamed list
student1 <- list(student.names[1], student.weight[1], student.genders[1], student.total.marks[1])
str(student1)
student1

#Creating names list
student11 <- list(name = student.names[1], 
                 weight = student.weight[1], 
                 sex = student.genders[1], 
                 marks = student.total.marks[1])
str(student11)
student11

#Vector as element of a List
student11 <- list(name = student.names[1], 
                  weight = student.weight[1], 
                  sex = student.genders[1], 
                  marks = c(student.physics.marks[1], student.chemistry.marks[1]),
                  totalmarks = student.total.marks[1])
str(student11)
student11

#Subsetting in Lists
student11[1] #When subsetting from a List the result is a list (same with vector)
typeof(student11[1]) #Type is List
student11[[1]] #return object of it's own type
typeof(student11[[1]]) #Type is character

student11[1:3] #Extract multiple elements from a List using index

#Extracting using names in named list
student11["name"]
student11[["name"]]
student11$sex #Access element using element name or label
student11[c("name", "totalmarks")] #Access multiple elements using label names

length(student11) #Number of elements in the list