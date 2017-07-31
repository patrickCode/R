#Matrix
student.names <- c("John", "Shaw", "Derek", "Mango")
student.physics.marks <- c(15, 21, 34, 32)
student.chemistry.marks <- c(17, 26, 39, 24)

student.marks <- rbind(student.physics.marks, student.chemistry.marks) #Row-wise binding creation of Matrix
student.marks #Each vector is a row in the matrix
student.marks <- cbind(student.physics.marks, student.chemistry.marks) #Row-wise binding creation of Matrix
student.marks #Each vector is a column in the matrix

rownames(student.marks) <- student.names #Assign custom Row Names
student.marks

#Creation by Dimension
arr <- matrix(c(10L, 20L, 30L, 40L, 50L, 60L, 70L, 80L), ncol = 2, nrow = 4) #Arrange the elements of the 1-D vector in 2 columns and 4 rows (column wise by default)
arr
arr <- matrix(c(10L, 20L, 30L, 40L, 50L, 60L, 70L, 80L), ncol = 4, nrow = 2) #Arrange the elements of the 1-D vector in 4 columns and 2 rows (Column wise, so 10 and 20 will be put in the same column)
arr
arr <- matrix(c(10L, 20L, 30L, 40L, 50L, 60L, 70L, 80L), ncol = 4, nrow = 2, byrow = TRUE) #Arrange the elements of the 1-D vector in 4 columns and 2 rows (Column wise)
arr

#Subsetting
student.marks[1, 2] #Row Number, Column Number
student.marks[1:3, 1:2] #Rows, Columns. Extract Row 1 to 3 with Columns 1,2,(3 Rows with 2 Columns)
student.marks[, 1] #Get all rows for Column 1 (Get all Physics marks)
student.marks[1,] #Get all columns for Row 1 (Get all marks of student 1)
student.marks[c(T,F,F,T), ] #Get all columns for Row 1 and 4. Used for filtering rows
student.marks[c(student.physics.marks >= 20), ] #Get details of students with physics marks more than 20

#Summary
rowSums(student.marks)
colSums(student.marks)
colMeans(student.marks)