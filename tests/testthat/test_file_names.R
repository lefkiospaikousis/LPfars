
context("Text")

test_that("correct filename creation",{

  file_name = make_filename(2013)

  expect_match(file_name, regexp = ".csv.bz2$")

})
