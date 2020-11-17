f <- function() {
  x <- 1
  y <- 2
  c(x, y)
}
f()
rm(f)

x <- 2
g <- function() {
  y <- 1
  c(x, y)
}
g()
rm(x, g)

x <- 1
h <- function() {
  y <- 2
  i <- function() {
    z <- 3
    c(x, y, z)
  }
  i()
}
h()
rm(x, h)

j <- function(x) {
  y <- 2
  function() {
    c(x, y)
  }
}
k <- j(1)
k()
rm(j, k)

f <- function(x) {
  f <- function(x) {
    f <- function(x) {
      x ^ 2
    }
    f(x) + 1
  }
  f(x) * 2
}
f(10)

args <- list(1:10, na.rm = TRUE)
