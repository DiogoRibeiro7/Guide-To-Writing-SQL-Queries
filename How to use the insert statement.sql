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


-- How to use the insert statement 
-- The "C" in CRUD


insert into [dbo].[CustomerDemoTable]
(
	 [CustomerKey]
	,[CustomerName]
)
values
(
	20000 ,'Paul Scotchford'

) ,

(
	20010 ,'John Scotchford'

)

--	delete from [dbo].[CustomerDemoTable]
--  truncate table [dbo].[CustomerDemoTable]

--  select max([CustomerKey]) from [dbo].[CustomerDemoTable]

insert into [dbo].[CustomerDemoTable]
(
	 [CustomerKey]
	,[CustomerName]
)

select
	 distinct([CustomerKey])
	,[LastName] + ' ' + [FirstName]
from
	 [Chapter 3 - Sales (Keyed) ].[dbo].[Customer]


select * from [dbo].[CustomerDemoTable]

