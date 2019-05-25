
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis build
status](https://travis-ci.org/lefkiospaikousis/LPfars.svg?branch=master)](https://travis-ci.org/lefkiospaikousis/LPfars)

# LPfars

The goal of LPfars is to plot the density of fatal injuries on a map

## Installation

You can install the released version of LPfars from
[Github](https://github.com/lefkiospaikousis/LPfars) with:

``` r
devtools::install_github("lefkiospaikousis/LPfars")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
```

## Functions

The FARSread package has three functions:

  - The `fars_read` function for reading the data in R as a csv file

  - The `fars_summarize_years` function for comparing monthly summaries

  - The `The fars_map_state` function to create a map plot where the
    accidents occurred

  - The `make_filename` function that concatenates string values and
    creates a filename in a standard format of `accident_YEAR.csv.bz2`

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
