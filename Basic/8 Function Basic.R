#FUnctions Basic
GetTotalMarks <- function(quiz.marks, viva.marks, assignment.marks = 5L) { #assignment is default paramter
  total.marks <- quiz.marks + viva.marks + assignment.marks
  total.marks #Same as returning the marks
}

student.physics.quiz.marks <- c(65L, 56L, 69L, 34L)
student.physics.viva.marks <- c(24L, 18L, 22L, 10L)
student.physics.total.marks <- GetTotalMarks(student.physics.quiz.marks,  student.physics.viva.marks)
print(student.physics.total.marks)


student.chemistry.quiz.marks <- c(59L, 58L, 63L, 44L)
student.chemistry.viva.marks <- c(16L, 24L, 26L, 11L)
student.chemistry.assignment.marks <- c(3L, 4L, 4L, 2L)
student.chemistry.total.marks <- GetTotalMarks(quiz.marks = student.chemistry.quiz.marks, viva.marks =  student.chemistry.viva.marks, assignment.marks = student.chemistry.assignment.marks) #Pass Arguments by Name
print(student.chemistry.total.marks)

student.total.marks <- GetTotalMarks(student.physics.total.marks, student.chemistry.total.marks, 0L)
print(student.total.marks)

#Ellipses
GetTotal <- function(quiz.marks, viva.marks, assignment.marks, ...) { #... means ellipses
  total.marks <- quiz.marks + viva.marks + assignment.marks + sum(...)
  extra.arguments <- list(...)
  print(extra.arguments)
  total.marks #Same as returning the marks
}

student.english.quiz.marks <- c(51L, 46L, 51L, 38L)
student.english.viva.marks <- c(17L, 22L, 29L, 15L)
student.english.assignment.marks <- c(3L, 3L, 3L, 3L)
student.english.creativity.marks <- c(2L, 4L, 4L, 3L)
student.english.handwriting.marks <- c(4L, 3L, 3L, 4L)
student.english.total.marks <- GetTotal(quiz.marks = student.english.quiz.marks, viva.marks =  student.english.viva.marks, 
                                          assignment.marks = student.english.assignment.marks,
                                          creativity.marks = 2L,
                                          handwriting.marks = 3L) #creativity.marks and handwriting.marks is treated as Ellipses parameter
print(student.english.total.marks)
student.total.marks <- GetTotal(student.physics.total.marks, student.chemistry.total.marks, student.english.total.marks)
print(student.total.marks)

#Lazy Evaluation
GetTotal <- function(quiz.marks, viva.marks, extra.marks = average.viva.marks) { #extra.marks is set to the value of a variable
  average.viva.marks <- mean(viva.marks)  #Setting the value of average.viva.marks. extra.marks will not be evaluated yet.
  total.marks <- quiz.marks + viva.marks + extra.marks #The value of extra.marks will be resolved now since it's being used for the first time
  total.marks
}
student.english.quiz.marks <- c(51L, 46L, 51L, 38L)
student.english.viva.marks <- c(17L, 22L, 29L, 15L)
student.english.total.marks <- GetTotal(student.english.quiz.marks, student.english.viva.marks)
print(student.english.total.marks)


#Multiple Return values
GetMarksSummary <- function(quiz.marks, viva.marks) {
   total.marks <- quiz.marks + viva.marks
   avg.marks <- mean(total.marks)
   return (list(total = total.marks, average = avg.marks))
}

student.chemistry.quiz.marks <- c(59L, 58L, 63L, 44L)
student.chemistry.viva.marks <- c(16L, 24L, 26L, 11L)
student.chemistry.marks.summary <- GetMarksSummary(student.chemistry.quiz.marks, student.chemistry.viva.marks)
print(student.chemistry.marks.summary)


#Function as Objects
GetTotalMarks <- function(quiz.marks, viva.marks, assignment.marks = 5L) { #assignment is default paramter
  total.marks <- quiz.marks + viva.marks + assignment.marks
  total.marks #Same as returning the marks
}

##Look into them
GetTotalMarks #return the function itself
formals(GetTotalMarks) #Access arguments
body(GetTotalMarks) #Acces body


##Assing them
MyGetTotalMarks <- GetTotalMarks
MyGetTotalMarks

##Pass as Arguments
MyGetTotalMarks(c(13L, 43L, 44L), c(46L, 45L, 42L))

do.call(MyGetTotalMarks, list(c(13L, 43L, 44L), c(46L, 45L, 42L)))  #do.call is a function which can take a function as a argument and a list containing the arguments
do.call(MyGetTotalMarks, list(quiz.marks = c(13L, 43L, 44L), viva.marks = c(46L, 45L, 42L)))

#Anonymous Function
do.call(function (quiz.marks, viva.marks) {
  quiz.marks + viva.marks  #Since it's an one-lined function the curly braces can be removed
}, list(quiz.marks = c(13L, 45L, 65L), viva.marks = c(45L, 24L, 36L)))
