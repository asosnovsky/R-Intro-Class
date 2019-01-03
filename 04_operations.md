# R Operations

R has several operators to perform tasks including arithmetic, logical and bitwise operations.

Operators in R can mainly be classified into the following categories.

- Assignment
- Arithmetic
- Relational
- Logical
- Access

## Assignment

In R there are two kind of assignment operators; leftward and rightward.

Bellow are all examples of leftward assignments:

```r
a = 2
a <- 2
```

Bellow are all examples of rightward assignments:

```r
a -> 2
```

## Arithmetic

```r
2+2 # Addition
10-30 # Subtraction
3*4 # Multiplication
1/2 # Division
4^3 # Exponent
10 %% 5 # Modulus (Reminder)
```

## Relational

```r
1 < 2 # Less than
30 > 2 # Greater than
11 <= 12 # Less than or equal to
30 >= 29 # Greater than or equal to
10 == 10.00 # Equal to
131 != 32 # Not Equal to
```

## Logical 

```r
A = c(TRUE, TRUE, FALSE, FALSE)
B = c(TRUE, FALSE, FALSE, TRUE)

!A # Negation
A & B # Element-wise AND
A && B # Group AND
A | B # Element-wise OR
A || B # Group OR
```

## Access

These type of operations can only be used on list-type variables.

```r
some_matrix = matrix(c(
  1,2,3,4,
  0,2,3,1,
  2,3,1,4
), nrow=3)

some_matrix[1,] # access first row
some_matrix[,1] # access first column
some_matrix[1,1] # access first row first column
some_matrix[1:2,1] # access first and second row, first column
some_matrix[1,2:3] # access first row, second and third column
some_matrix[1:2,2:3] # access first and second row, second and third column

some_matrix[1,1] = 2 # change the value of first row, first column to the number 2
```

```r
df = data.frame(
  category = factor(c("A","A","B","C")),
  age = c(10L,15L,20L,30L),
  funds = c(23.1, 2.0, 100.31, 33.12)
)

df["age"] # access a subset table with only the column 'age'
df[["age"]] # access the values of the age column
df$age # access the values of the age column

df$age = df$age+ 10 # increase all the values of age by 10
```