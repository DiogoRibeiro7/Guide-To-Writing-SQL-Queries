/* ************************************************************************************************

	Hey there, As you are keen to learn SQL in this course, then you are probably are keen to
	be more expert at SQL too, checkout my other courses
	
* ************************************************************************************************/ 

-- Demo the left outer join in a select

select
	 [LastName]
	,[Gender]
	,geo.City
from
	[dbo].[Customer] cust left outer join 
	[dbo].[Geography] geo ON  cust.[GeographyKey] = geo.GeographyKey

-- The JOIN

select
	 [LastName]
	,[Gender]
	,geo.City
from
	[dbo].[Customer] cust left join 
	[dbo].[Geography] geo ON  cust.[GeographyKey] = geo.GeographyKey


