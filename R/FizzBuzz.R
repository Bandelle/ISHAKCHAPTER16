#' A function that takes a vector of integers as input
#' and returns the associated vector of FizzBuzz responses.
#'
#' function that will output a vector of the first
#' n terms in the child’s game Fizz Buzz. The goal is to count
#' as high as you can, but for any number evenly divisible by 3,
#' substitute “Fizz” and any number evenly divisible by 5, substitute “Buzz,”
#' and if it is divisible by both, substitute “Fizz Buzz.”
#' So the sequence will look like 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz,....
#'
#'
#' This is still in the description part of the documentation and and it
#' will be until we see something that indicates a new section.
#'
#' @param x A vector of positive integers
#' @return  Return the associated vector of FizzBuzz responses.
#' @examples
#' my.FizBuz(1:100)
#' my.FizBuz(c(4,5,7,9,99,24,6,8,61,54))
#' @export
my.FizBuz <- function(x){
  if(any(is.infinite(x) | x < 1)){
    stop("Ooooops It takes only positive finite integer.")
  }
  for(i in 1:length(x))
    if(i%%3==0 & i%%5==0){x[i] <-"Fizz Buzz"}
  else if(i%%3==0){x[i] <-"Fizz"}
  else if(i%%5==0){x[i]<-"Buzz"}
  else{}
  return(x)
}
