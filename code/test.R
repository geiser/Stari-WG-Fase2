get_QQline <- function (x)
{
  data.quartiles <- quantile(x, c(0.25, 0.75))
  norm.quartiles <- qnorm(c(0.25, 0.75))
  b <- (data.quartiles[2] - data.quartiles[1])/(norm.quartiles[2] -
                                                  norm.quartiles[1])
  a <- data.quartiles[1] - norm.quartiles[1] * b
  return(list(intercept = a, slope = b))
}


get_non_normal <- function (
    x, x.name = paste0("", seq(1, length(x))),
    step = 1,  plimit = NULL, max.step = step + 6)
{
  if (length(unique(x)) < 4)
    return(c())

  names(x) <- x.name

  if (is.null(plimit) && length(x) > 100)
    plimit <- 0.01
  else if (is.null(plimit))
    plimit <- 0.05

  toReturn <- c()
  max.length <- Inf
  for (pstep in (max.step:step)) {
    xtemp <- x
    non.normal <- c()
    res <- tryCatch(normality.test(xtemp), error = function(e) NULL)
    while (!is.null(res) && (length(unique(xtemp)) > 3) &&
           res$p < plimit) {
      y <- sort(xtemp)
      xnorm <- qqnorm(y, plot.it = F)
      qqline <- get_QQline(y)
      y.diff <- (xnorm$y - ((qqline$slope * xnorm$x) +
                              as.numeric(qqline$intercept)))^2
      y.diff <- sort(y.diff, decreasing = T)[1:pstep]
      xtemp <- xtemp[!names(xtemp) %in% names(y.diff)]
      non.normal <- c(non.normal, names(y.diff))
      res <- tryCatch(normality.test(xtemp), error = function(e) NULL)
    }
    if (length(non.normal) > 0 && length(non.normal) < max.length) {
      toReturn <- non.normal
      max.length <- length(toReturn)
    }
  }
  return(toReturn)
}
