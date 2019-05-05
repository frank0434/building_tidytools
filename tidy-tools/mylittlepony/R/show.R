ponies <- c(
  "Twilight Sparkle",
  "Rainbow Dash",
  "Pinkie Pie",
  "Applejack",
  "Rarity",
  "Fluttershy","what"
)

rpony_show <- function(n) {
  ponies <- sample(ponies, n, replace = TRUE)
  ponies[order(ponies)]
}
