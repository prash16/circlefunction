library(circlefunction)


context("circle object method tests")

test_circle_a <- circle(2)

test_that("rtraingle methods",{
	expect_equal((find.diameter(test_circle_a)) ,
							 4,
							 tolerance = 0.5)
	expect_equal((find.perimeter(test_circle_a)),
							 12.6,
							 tolerance = 0.5)
	expect_equal((find.area(test_circle_a)),
							 12.6,
							 tolerance = 0.5)
})
