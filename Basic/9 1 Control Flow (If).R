#Flow Control
IsGoodPerformanceByBatch <- function(test.marks) {
  average.marks <- mean(test.marks)
  performance.is.good = average.marks >= 75
  print(paste("Average Marks: ", average.marks))
  if (average.marks >= 75) {
    print("Overall good performance")
  } else if(average.marks >= 60) {
    print("Overall performance medium")
  } else {
    print("Overall performance bad")
  }
}

IsGoodPerformanceByBatch(c(65L, 75L, 83L, 64L))
IsGoodPerformanceByBatch(test.marks = c(58L, 93L, 82L, 71L))
IsGoodPerformanceByBatch(test.marks = c(52L, 33, 46L, 63L))
