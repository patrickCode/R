#Switch
GetMarksSummary <- function(test.marks, summary.type) {
  result <- switch(summary.type,
                   "mean" = { #Curly craces can be removed since there is a single line
                     mean(test.marks)
                   },
                   "median" = {
                     median(test.marks)
                   },
                   "variance" = {
                     var(test.marks)
                   },
                   "Not Implemented")
  result
}

test.marks <- c(65L, 69L, 75L, 76L)
print(paste("Mean: ", GetMarksSummary(test.marks = test.marks, "mean")))
print(paste("Median: ", GetMarksSummary(test.marks = test.marks, "median")))
print(paste("Variance: ", GetMarksSummary(test.marks = test.marks, "variance")))
print(GetMarksSummary(test.marks = test.marks, "unknown"))