# Functions

Functions in R are “first class objects”, which means that they can be treated much like any other R object.  Importantly,

```r
function_name = function(<arguments>) {

}
```

- Functions can be passed as arguments to other functions
- Functions can be nested, so that you can define a function inside of another function

The return value of a function is the last expression in the function body to be evaluated.

## Simple R Functions

Let's say we want to define a simple function that given your age, it will return your age-group. This would be done in the following way:

```r
determine_age_group = function(age) {
    if(age <= 10) {
        "child"
    } else if(age <= 19) {
        "teen"
    } else if(age <= 30) {
        "young adult"
    } else if(age <= 60) {
        "adult"
    } else {
        "senior"
    }
}
```

Now we can call this function on variable inputs and see our return value.

```r
    determine_age_group(0)
    determine_age_group(15)
    determine_age_group(24)
    determine_age_group(33)
    determine_age_group(90)
```

**Bonus**: using list inputs

```r
    sapply(0:100, determine_age_group)
```

## Assignment 1

Define a function that given an interest rate and initial investment, will return the value of an investment at a specified time period. (i.e. complete the code below)


```r
comp_investment = function(intial_amount, interest_rate, time) {

}
```

**Bonus**: Make the function compatible with vector inputs for initial amounts.(i.e. this should work comp_investment(100:500, 0.05, 10))

## Assignment 2

Using the function in assignment 1, define a table (data-frame) that shows an investment with initial deposit of 50,70,90 at a rate of 5% with time period of 20 or 30.

**hint (optional)**: start with defining a table as such

```r
data.frame(
  initial_amount = rep(c(50, 70, 90), 2),
  interest_rate = 0.05,
  time = c(rep(20, 3),rep(50, 3))
)
```
