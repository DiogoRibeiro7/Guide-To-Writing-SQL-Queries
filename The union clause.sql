/* ************************************************************************************************

	Hey there, As you are keen to learn SQL in this course, then you are probably are keen to
	be more expert at SQL too, as a reward you can enrol in my advanced SQL course for just 
	$22 using the below coupon.
	
	SQL for PUNK ANALYTICS will take you from the intro we cover in Hitch Hikers to more be
    more expert and smarter at SQL, and I use the same real world teaching methods too, so many 
	students writing in telling me they really like my teaching approach which make it easier for
	them to learn.

	From what they say, no one else in UDEMY teaches this way...!

	See you in the experts course :) 
	
	https://www.udemy.com/sql-for-punk-analytics/?couponCode=HalfPriceDiscount	
	
* ************************************************************************************************/ 

-- What the heck is a union ?

use [Chapter 3 - Sales (Keyed) ];

-- First select is for suppliers with credit rating 1

select
	 sup.Name
	,avg([StandardPrice]) as AvgStdPrice
	,sup.CreditRating 
	,sup.ActiveFlag 
from
	[dbo].[ProductSupplier] ps inner join
	[dbo].[Supplier] sup on ps.SupplierKey = sup.SupplierKey and
											 sup.CreditRating = 1
group by
	 sup.Name
	,sup.CreditRating 
	,sup.ActiveFlag

UNION ALL

-- Second select is for suppliers with credit rating 4

select
	 sup.Name
	,avg([StandardPrice]) as AvgStdPrice
	,sup.CreditRating 
	,sup.ActiveFlag 
from
	[dbo].[ProductSupplier] ps inner join
	[dbo].[Supplier] sup on ps.SupplierKey = sup.SupplierKey and
											 sup.CreditRating = 4
group by
	 sup.Name
	,sup.CreditRating 
	,sup.ActiveFlag
