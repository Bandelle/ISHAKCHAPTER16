
# Check to see if I get what I expect
test_that('Output length is the same as Input length', {
  expect_equal(length(my.FizBuz(1:6)),  6 )
  expect_equal(length(my.FizBuz(1:45)),  45 )

})

test_that("Negative, Zero or Infinite input throw an error", {
  expect_error(IshakChapter16::my.FizBuz(c(6,9,-3)))
  expect_error(my.FizBuz(c(0,4)))
  expect_error(my.FizBuz(c(3,Inf,21)))

})


