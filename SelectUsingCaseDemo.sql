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


-- Using the CASE statement 

-- The policy manager has observed that the data in member cover does not show a column for CoverType 
-- how can we create a list of member covers that shows the cover type abbreviation e.g. DTH,   for the under writing year 2014 ?


-- Searched Case Expression  (Within a SELECT statement, the searched CASE expression allows for values to be replaced in the result set based on comparison values)

select
	 MemberKey
	,total_death_cover
	,'Cover Type' = 
	case
		when total_death_cover != 0 then 'DTH'
	end

from
	[dbo].[MemberCover]
where
	[underwriting_year] = 2014 and
	[total_death_cover] != 0

-- Simple Case Expression	(Within a SELECT statement, a simple CASE expression allows for only an equality check; no other comparisons are made) 
-- The product manager requests an abbreviated gender value in the members table

select
	 memberkey
	 ,Gender
	,case gender
	  WHEN 'Male' then 'M' 
	  WHEN 'Female' then 'F'
	 else
	  '?'
	 end  as GenderAbbrev
from
	[dbo].[Member]
