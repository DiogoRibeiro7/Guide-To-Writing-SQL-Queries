/* ************************************************************************************************

	Hey there, As you are keen to learn SQL in this course, then you are probably are keen to
	be more expert at SQL too, checkout my other courses
	
* ************************************************************************************************/ 

-- Demo the cross join

select
	 LastName
	,Gender
	,city
from
	[dbo].[Customer] cust cross join
	[dbo].[Geography] geo 



	--- WARNING : Cartesian joins can degrade server performance quickly and cause issues for other server processes and users, and you DBA will be CROSS!