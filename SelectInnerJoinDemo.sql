/* ************************************************************************************************

	Hey there, As you are keen to learn SQL in this course, then you are probably are keen to
	be more expert at SQL too, checkout my other courses
	
* ************************************************************************************************/ 

-- Demo of the inner join sql select

select
	 ProductName
	,listprice
	,[DateKey]
	,[UnitsBalance]
from
	[dbo].[Product] prod inner join 
	[dbo].[ProductInventory] inv ON prod.ProductKey = inv.ProductKey 

-- Showing the JOIN statement works the same way

select
	 ProductName
	,listprice
	,[DateKey]
	,[UnitsBalance]
from
	[dbo].[Product] prod  join 
	[dbo].[ProductInventory] inv ON prod.ProductKey = inv.ProductKey 

-- Example code where I don't use an alias for my tables, it can make the query quite cumbersome when 
-- using multiple joins and where you are introducing more complexity to the query

select
	 ProductName
	,listprice
	,[DateKey]
	,[UnitsBalance]
from
	[dbo].[Product]  join 
	[dbo].[ProductInventory] ON [dbo].[Product].ProductKey = [dbo].[ProductInventory].ProductKey 