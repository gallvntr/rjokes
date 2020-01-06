#' Create function to spit out joke
#'
#' @description jokes function outputs a joke related to the R programming langauge
#'
#' @keywords jokes
#' @param N numeric, designates how many to jokes to pull
#' @return A dataset with the following columns: Question, Punchline
#' @export
#'

jokes <- function(N=1) {
  if (N == 1) {
    set.seed(N) # set seed for reproducibility
    JokeDat <- data.table(Question = c("What is a pirate's favorite programming language?"), Punchline = c("R? No it's actually C"))
    return(JokeDat[,.SD[sample(.N, size = N)]])
  } else {
    stop("N must be set to 1")
  }
}