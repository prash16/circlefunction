circle <- function(radius=2)
{

	me <- list(
		radius = radius
	)

	## Set the name for the class
	class(me) <- append(class(me),"circle")


	return(me)
}



# Diameter Generic Method

find.diameter <- function(acircle)
{
	UseMethod("find.diameter",acircle)
}

# Diameter Default Method

find.diameter.default <- function(acircle)
{
	stop("This shape is of an unknown class. Cannot find diameter")
}

# Diameter  circle Method


find.diameter.circle <- function(acircle)
{
	return(acircle$radius * 2)
}



# Area Generic Method

find.area <- function(acircle)
{
	UseMethod("find.area",acircle)
}


# Area Default Method

find.area.default <- function(acircle)
{
	stop("This shape is of an unknown class. Cannot find diameter")
}

# Area  triangle Method

find.area.circle <- function(acircle)
{
	return( 3.141592654 * acircle$radius ^ 2)
}




# Perimeter Generic Method

find.perimeter <- function(acircle)
{
	UseMethod("find.perimeter",acircle)
}


# Perimeter Default Method

find.perimeter.default <- function(acircle)
{
	stop("This shape is of an unknown class. Cannot find diameter")
}

# perimeter  triangle Method

find.perimeter.circle <- function(acircle)
{
	return(2 * 3.141592654 * acircle$radius)
}
