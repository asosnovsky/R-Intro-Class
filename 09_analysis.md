[Back](./readme.md)

# Analysis

## Importing our data

```r
price_data = read_csv("https://raw.githubusercontent.com/asosnovsky/R-Intro-Class/master/data/price_data.csv")
```

## Checking out our dataset

```r
price_data %>% summary()
```

## Look at summaries of each stock

```r
price_data %>% 
  group_by(ticker) %>% 
  summarise(
    max(price),
    min(price),
    max(volume),
    min(volume),
    n()
  )
```

## Look at the prices over time

```r
price_data %>% 
  ggplot(aes(x=date, color=ticker)) + 
  geom_line(aes(y=price))
```

## Visualize the price distributions

```r
price_data %>% 
  ggplot(aes(fill=ticker)) + 
  geom_histogram(aes(price), position="identity", alpha=0.5)
```

## Assignment - 1: Plotting and basic statistics

- Compute the average and standard deviation of price and volume for each stock
- Plot the volume for each stock over time
- Plot the histogram for volume
- **Bonus**: compute the correlation of volume and price for each stock

## Assignment - 2: Data Reduction and price-volume correlation

Say we would like to reduce the dimensions of our data for the purpose of our analysis, we want to do this by:

- Grouping the data into business quarters
- Computing the average, lowest, highest, first, and last observed price and volume

Help complete the following code:

```r
price_data %>% 
  mutate(
    year = format(date, "%Y"),
    quarter = quarters(date)
  ) %>% 
  group_by(
    
  ) %>%
  summarise(

  ) 
```

Next we would like to look at a flat table that shows the correlation between price and volume in each quarter.

Complete the following code to achieve this

```r
price_data %>% 
  mutate(
    year = format(date, "%Y"),
    quarter = quarters(date)
  ) %>% 
  group_by(
  ) %>%
  summarise(
    corr = ,
  ) %>% 
  group_by(ticker, year) %>% 
  spread(quarter, corr)
```
