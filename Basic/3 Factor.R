#Factors
student.genders <- c("Male", "Female", "Male", "Female") #Character Vector
str(student.genders)
student.gender.factor <- factor(c(student.genders))
student.gender.factor

as.numeric(student.gender.factor) #Explicit coercion (factors internally are integers and are assigned in alphabetical order starting from 1)

student.blood.groups <- factor(c("A", "AB", "A", "O"), levels = c("A", "B", "AB", "O")) #Explicitly mention levels on creating factors
str(student.blood.groups)
student.blood.groups
