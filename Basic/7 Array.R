#Arrays
class1.physics.marks <- c(15, 21, 34, 32)
class1.chemistry.marks <- c(17, 26, 39, 24)
class1.marks = cbind(class1.physics.marks, class1.chemistry.marks)
class1.marks

class2.physics.marks <- c(16, 28, 39, 44)
class2.chemistry.marks <- c(19, 23, 33, 42)
class2.marks = cbind(class2.physics.marks, class2.chemistry.marks)
class2.marks

class.all.marks <- array(c(class1.marks, class2.marks), dim=c(4,2,2)) #Row Number, Column Number, Sheet Number (4 Rows with 2 Columns and 2 Sheets)
class.all.marks

#Subsetting
class.all.marks[2,2,2] #Row Number, Column Number, Sheet Number
class.all.marks[1:3, 2,] #Row 1 to 3, Column 2, All sheets