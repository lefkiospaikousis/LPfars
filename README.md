
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis build
status](https://travis-ci.org/lefkiospaikousis/LPfars.svg?branch=master)](https://travis-ci.org/lefkiospaikousis/LPfars)

LPfars is a package that was built for the purposes of the Coursera
course [Building R Packages](https://www.coursera.org/learn/r-packages)

# LPfars

The goal of LPfars is to read and summarise the monthly injuries, and
plot the density of fatal injuries on a map

## Installation

You can install the released version of LPfars from
[Github](https://github.com/lefkiospaikousis/LPfars) with:

``` r
devtools::install_github("lefkiospaikousis/LPfars")
```

## Example

The `fars_summarize_years` returns a summary table with the number of
monthly accident cases (row) and the defined year(s) (column). Here the
input parameter canbe a numeric vector or a list of the year values.

``` r
library(LPfars)

# Set the working directory to the location of the files
# This is for demontrating purposes. Once you have your datasets in your current working directory, you will not have to do this

files_location = system.file("extdata", package = "LPfars")

setwd(files_location)

fars_summarize_years(2013:2015)
#> # A tibble: 12 x 4
#>    MONTH `2013` `2014` `2015`
#>    <dbl>  <int>  <int>  <int>
#>  1     1   2230   2168   2368
#>  2     2   1952   1893   1968
#>  3     3   2356   2245   2385
#>  4     4   2300   2308   2430
#>  5     5   2532   2596   2847
#>  6     6   2692   2583   2765
#>  7     7   2660   2696   2998
#>  8     8   2899   2800   3016
#>  9     9   2741   2618   2865
#> 10    10   2768   2831   3019
#> 11    11   2615   2714   2724
#> 12    12   2457   2604   2781
```

### Notes

The package re-exports the `%>%` operator from the package `magritrr` so
you can perfom exploratory analysis the `tidyverse` way\!

## What is the FARS

The Fatality Analysis Reporting System (FARS) contains data derived from
a US nationwide census regarding fatal injuries suffered in motor
vehicle traffic crashes

See
[here](https://www.nhtsa.gov/research-data/fatality-analysis-reporting-system-fars)
on how to create datasets and use the package

## Example Data

You can find the location of the example csv files on your disk by
typing

`system.file("extdata", package = "LPfars")`

Also, you can get the file name of the an example data by typing

`system.file("extdata", "accident_2013.csv.bz2", package = "LPfars")`

## Package Functions

The LPfars package has five functions:

  - The `fars_read` function for reading the data in R as a csv file

  - The `fars_read_years` function that reads multiple csv files from
    disk

  - The `fars_summarize_years` function for comparing monthly summaries

  - The `The fars_map_state` function to create a map plot where the
    accidents occurred

  - The `make_filename` function that concatenates string values and
    creates a filename in a standard format of `accident_YEAR.csv.bz2`
