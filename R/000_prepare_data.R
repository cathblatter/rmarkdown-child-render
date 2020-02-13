# prepare some fake data

set.seed(1234)

my_data <- tibble::tibble(center = c(rep(100, 23), rep(101, 32), rep(102, 45), rep(104, 11)),
                          X1 = sample(c(0, 1, NA_real_), 111, replace = T),
                          X2 = sample(c(0, 1, NA_real_), 111, replace = T),
                          X3 = sample(c(0, 1, NA_real_), 111, replace = T),
                          X4 = sample(c(0, 1, NA_real_), 111, replace = T))

