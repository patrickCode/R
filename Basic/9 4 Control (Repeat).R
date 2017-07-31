#Repeat
Print.Numbers <- function(total.number) {
  count <- 1
  repeat {
    if (count >= total.number) {
      break()
    }
    print(count)
    count <- count + 1
  }
  print("Loop Completed")
}

Print.Numbers.Odd <- function(total.number) {
  count <- 0
  repeat {
    count <- count + 1
    if (count >= total.number)
      break
    else if (count %% 2 == 0)
      next
    print (count)
  }
}

Print.Numbers(100)
Print.Numbers.Odd(100)