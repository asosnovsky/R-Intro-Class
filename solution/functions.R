# Assignment 1
comp_investment = function(intial_amount, interest_rate, time) {
  intial_amount*( (1+interest_rate)^time )
}

# Assignment 2
data = data.frame(
  initial_amount = rep(c(50, 70, 90), 2),
  interest_rate = 0.05,
  time = c(rep(20, 3),rep(50, 3))
)

data$future_value = comp_investment(data$initial_amount, data$interest_rate, data$time)

# to see the output
View(data)

# Bonus
interest_rate = seq(from=0.01, to=0.5, by=0.01)
plot(
  x=interest_rate,
  y=comp_investment(500, interest_rate, 10),
  type='l'
)
