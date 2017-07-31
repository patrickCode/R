#While
Print.Numbers <- function(total.number) {
  count <- 1
  while (count <= total.number) {
    print(count)
    count <- count + 1
  }
  print("Loop Completed")
}

Print.Numbers(100)