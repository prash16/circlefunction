


circle <- function(radius=2)
{

	me <- list(
		radius = radius
	)

	## Set the name for the class
	class(me) <- append(class(me),"circle")


	return(me)
}

foobar <- circle(5)


# Diameter Generic Method

find.diameter <- function(circlediameter)
{
	UseMethod("find.diameter",circlediameter)
}

# Diameter Default Method

find.diameter.default <- function(circlediameter)
{
	stop("This shape is of an unknown class. Cannot find diameter")
}

# Diameter  circle Method


find.diameter.circle <- function(circlediameter)
{
	return(circlediameter$radius * 2)
}

foobar <- circle(5)
find.diameter(foobar)



# Area Generic Method

find.area <- function(circlearea)
{
	UseMethod("find.area",circlearea)
}


# Area Default Method

find.area.default <- function(circlearea)
{
	stop("This shape is of an unknown class. Cannot find diameter")
}

# Area  triangle Method

find.area.circle <- function(circlearea)
{
	return( 3.141592654 * circlediameter$radius ^ 2)
}




# Perimeter Generic Method

find.perimeter <- function(circleperimeter)
{
	UseMethod("find.perimeter",circleperimeter)
}


# Perimeter Default Method

find.perimeter.default <- function(circleperimeter)
{
	stop("This shape is of an unknown class. Cannot find diameter")
}

# perimeter  triangle Method

find.perimeter.circle <- function(circleperimeter)
{
	return(2 * 3.141592654 * circlediameter$radius)
}


