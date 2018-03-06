context("Integrating")

test_that("thest that does what you want",{
  (expect_error(integrateIt("P")))
}) 

test_that("check that its the right calss",{
  (expect_is(integrateIt(x=c(1:10),y=c(2:11),startandend=c(1,3),Rule="Trap"),"Trapezoid"))
})

test_that("Integrate it by trap rule", {
  expect_that(integrateIt(x=c(1:10),y=c(2:11),startandend=c(1,3),Rule="Trap"),
              equals(new("Trapezoid", result=(17.55),x=c(1:10),y=c(2:11))))
})

test_that("print integrated value by using Simpson rule", {
  expect_that(print(x=c(1:10),y=c(2:11),startandend=c(1,3),Rule="Simpson"),
              equals(16.5))
})

