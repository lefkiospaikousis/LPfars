
context("Message")

test_that("Display Error in fars_read",{


  expect_error(fars_read("random"))

  expect_silent(make_filename(2013))

})
