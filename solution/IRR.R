# Net Present Value Formulaes
NPV <- function(pmts, i) {
  t = 0:(length(pmts)-1)
  sum(pmts/(1+i)^t)
}
dNPV <- function(pmts, i) {
  t = 0:(length(pmts)-1)
  sum( -t*pmts/(1+i)^(t+1) )
}
# Internal Rate of Return
IRR <- function(pmts, MAX_ITERATIONS = 100, EPSILON = 0.001) {
  irr = runif(1, 0, 1) # make the first guest random
  for(iter in 0:MAX_ITERATIONS) {
    npv = NPV(pmts, irr)
    dnpv = dNPV(pmts, irr) 
    delta = npv/dnpv
    if ( abs(delta) <= EPSILON ) {
      break
    }
    irr = irr - delta
  }
  return(irr)
}

# Plot Data

## Compute Cashflow
cashflows = c(-500, 100, 200, 100, 300)

## Compute IRR
irr = IRR(cashflows)

## Compute some data points
intrest = seq(0,1, 0.001)
npv = sapply(intrest, function(i) NPV(cashflows, i))

## Plot
plot( x=npv, y=intrest, t='l', xlab='NPV', ylab='intrest')
abline(h=irr, col='blue')
abline(v=NPV(cashflows, irr), col='blue')
