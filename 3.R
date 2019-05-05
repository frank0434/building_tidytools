df <- data.frame(
  g = rep(c("a", "b", "c"), c(3, 2, 2)),
  b = runif(7),
  a = runif(7),
  c = runif(7)
)
df
summarise(df, mean = mean(a), sd = sd(a), n = n())
summarise(df, mean = mean(b), sd = sd(b), n = n())
summarise(df, mean = mean(c), sd = sd(c), n = n())
df %>% 
  mutate(n = n()) %>% 
  summarise_at(vars(a, b, c), .funs = list(mean, sd))

my_summary <- function(df, var) {
  var <- enquo(var)
  df %>% 
    summarise(mean = mean(!!var), sd = sd(!!var), n= n() )
}

my_summary(df, a)
my_summary(df, b)
my_summary(df, c)
my_summary <- function(df, var) {
  # var <- enquo(var)
  df %>% 
    summarise(mean = mean(!!enquo(var)), sd = sd(!!enquo(var)), n= n() )
}
my_summary(df, a)


!!enquo(a)

a <- "a"
b <- quo(a)

b
enquo(a)
quote(how_many(this))
expr(how_many(this))
quo(how_many(this))

this <- sym("apples")
this
?sym
that <- sym("oranges")

# With unquotation you can insert the contents of these variables
# inside the quoted expression:
expr(how_many(!!this))
expr(how_many(!!that))

# You can also insert values:
expr(how_many(!!(1 + 2)))
quo(how_many(!!(1 + 2)))

list2(!!name := 1 + 2)
exprs(!!name := 1 + 2)
quos(!!name := 1 + 2)