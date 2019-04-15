/* ************************************************************************************************

	Hey there, As you are keen to learn SQL in this course, then you are probably are keen to
	be more expert at SQL too, checkout my other courses
	
* ************************************************************************************************/ 

-- Demo the right outer join in a select

select
	 LastName
	,[YearlyIncome]
	,city
from
	[dbo].[Customer] cust right outer join
	[dbo].[Geography] geo ON cust.GeographyKey = geo.GeographyKey


-- Removed the OUTER key word from the query

select
	 LastName
	,[YearlyIncome]
	,city
from
	[dbo].[Customer] cust right join
	[dbo].[Geography] geo ON cust.GeographyKey = geo.GeographyKey