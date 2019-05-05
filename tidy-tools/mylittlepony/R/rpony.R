ponies <- c(
  "Twilight Sparkle",
  "Rainbow Dash",
  "Pinkie Pie",
  "Applejack",
  "Rarity",
  "Fluttershy","what"
)

rpony <- function(n) {
  sample(ponies, n, replace = TRUE)
}
