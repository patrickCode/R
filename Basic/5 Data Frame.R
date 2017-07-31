#Data Frame
student.names <- c("John", "Shaw", "Derek", "Mango")
student.weight <- c(45.63, 65.6, 45.2, 34.9)
student.physics.marks <- c(15, 21, 34, 32)
student.chemistry.marks <- c(17, 26, 39, 24)
student.genders <- factor(c("Male", "Female", "Male", "Female"))
student.total.marks <- student.physics.marks + student.chemistry.marks

#Create Data Frame
students <- data.frame(student.names, student.weight, student.genders, student.physics.marks,
                       student.chemistry.marks, student.total.marks)
typeof(students) #Type is List. Data frame is a list where each element of the list is a vector of equal length. So student.names, student.weight are the vectors in a length
str(students)
students #Data frame will assign an integer to each row (Row Names). The names of each column is the name of the vector. In a data frame vector of characters are automatically converted to factors by default

students <- data.frame(student.names, student.weight, student.genders, student.physics.marks,
                       student.chemistry.marks, student.total.marks,
                       stringsAsFactors = FALSE) #Explicitly mention that charactor vectors should not be converted to factors

#Subsetting
students[1] #Returns the first vector as a List, Single bracket [] return element of same type
typeof(students[1]) #List
students[[1]] #Double bracket [[]] return the object in its own type
typeof(students[[1]]) #Character (Vector)
students$student.names #Access element
typeof(students$student.names) #Character (Vector)
students$student.names[1] #Gets the name of the first student

students[1:3] #Cuts the data frame vertically. Gets the columns 1 to 3
students[c("student.names", "student.genders", "student.total.marks")] #Cuts the data frame vertically and gives back the columns mentioned in the vector

students[1, 2] #Row Number, Column Number
students[1:2, 1:3] #Rows, Columns. Extract Row 1&2 with Columns 1,2,3 (2 Rows with 3 Columns)
students[, 1] #Get all rows for Column 1 (Get all Names in data frame)
students[1,] #Get all columns for Row 1 (Get full details of student 1)
students[c(T,F,F,T), ] #Get all columns for Row 1 and 4. Used for filtering rows
students[c(student.genders == "Male"), ] #Get details of Male students. [(c(student.genders == "Male") created a logical vector with T where student.gender is Male]
students[c(student.total.marks >= 50), ] #Get details of students with marks more than 50