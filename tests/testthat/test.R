library(circlefunction)

context("Circle function Testing")

test_that("Correct area",{
	expect_equal(find.diameter(circle(5)),10)
	expect_equal(find.area(circle(5)),78.53982,tolerance=.2)
	expect_equal(find.perimeter(circle(5)),31.41593,tolerance=.2)
})
