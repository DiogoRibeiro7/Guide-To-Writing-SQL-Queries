/* ************************************************************************************************

	Hey there, As you are keen to learn SQL in this course, then you are probably are keen to
	be more expert at SQL too, checkout my other courses
	
* ************************************************************************************************/ 

-- Demo the full outer join in a select

select
	 LastName
	,TotalChildren
	,city
	,CountryRegionName
From
	[dbo].[Customer] cust full outer join
	[dbo].[Geography] geo ON cust.GeographyKey = geo.GeographyKey order by city

-- Without the OUTER keyword

select
	 LastName
	,TotalChildren
	,city
	,CountryRegionName
From
	[dbo].[Customer] cust full  join
	[dbo].[Geography] geo ON cust.GeographyKey = geo.GeographyKey order by city
