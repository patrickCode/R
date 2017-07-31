#Apply
student.marks <- matrix(c(79L, 89L, 83L, 44L, 78L,
                          80L, 87L, 92L, 75L, 98L,
                          54L, 87L, 91L, 92L, 93L,
                          88L, 63L, 64L, 88L, 88L), ncol = 5, nrow = 4, byrow = TRUE)

rownames(student.marks) <- c("Shane", "Grinder", "Dennis", "Mellie")
colnames(student.marks) <- c("Physics", "Chemistry", "Biology", "Mathematics", "Music")
student.marks

#Nested Iteration (without apply)
result <- vector("numeric", length = nrow(student.marks)) #nrow is the number of rows in the matrix
for(row in 1:nrow(student.marks)) {
  sum <- 0
  for(col in 1:ncol(student.marks)) {
    sum <- sum + student.marks[row, col]
  }
  result[row] = sum
}
result
print(result)

apply(student.marks, 1, sum) #1 is the margin (Work with Row) #Sum is the function (so we are doing row-wise summation)
apply(student.marks, 1, max) #Max value in each Row
apply(student.marks, 1, which.max) #Column Index of Max value in each Row
colnames(student.marks)[apply(student.marks, 1, which.max)] #colnames give the names of all the columns. Get the subject name where the student has got the max marks

apply(student.marks, 2, mean) #Column = 2. #Mean of all columns (subjects)
apply(student.marks, 2, max) #Column = 2. #Max marks in each subject (subjects)
rownames(student.marks)[apply(student.marks, 2, which.max)]
apply(student.marks, 1:2, function(x) x + 2) #Increment each value by 2 