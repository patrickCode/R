#Vector If
test.marks <- c(83L, 89L, 75L, 54L, NA)

ifelse(test.marks >= 75, c("Bravo", "Great", "Awesome", "Good Job"), 
       c("Improvement needed", "Not Good", "Its OK", "Pretty Bad"))
ifelse(test.marks >= 75, "With Distinction", "Without Distinction")