CREATE FUNCTION dbo.fnOccurs
(
  @searchIn  varchar(8000),  -- The string to be searched.
  @searchFor varchar(8000)   -- The string to be counted.
)
RETURNS int
BEGIN
  DECLARE @len_diff int
  -- Returns number of times a string occurs in another string.
  -- The first length calculation is the original size minus the number of 
  -- occurrences of the search string times the length of the search string.
  -- So, we then simply divide that result by the length of the search string
  -- to get the number of occurrences.
  SET @len_diff = Len(@searchIn) - Len(Replace(@searchIn, @searchFor, ''))
  SET @len_diff = @len_diff / Len(@searchFor)
  RETURN @len_diff
END

DECLARE @idColumn nvarchar(max) 
select @idColumn = Facility_ID  from dbo.[2016-2020_DC]

while @idColumn is not null
begin
    DECLARE @test varchar(255) 
	#select @test=workingrow from dbo.[2016-2020_DC] where Facility_ID= @idcolumn
	#PRINT dbo.fnOccurs(@test, 'Not Available')

end

DECLARE @test varchar(255) 
 select workingrow from dbo.[2016-2020_DC] where Facility_ID= '10018'

 
PRINT dbo.fnOccurs(@test, 'Not Available')
PRINT dbo.fnOccurs('This string contains 1 occurrences of s-t-r-i-n-g without the dashes.', 'string')
PRINT dbo.fnOccurs('This s-t-r-i-n-g contains 1 occurrences of s-t-r-i-n-g without the dashes.', 'string')

SELECT TOP 5 * FROM dbo.[2016-2020_DC] ;
SELECT * FROM dbo.[2016-2020_DC]

SELECT Facility_ID,COUNT(*) FROM dbo.[2016-2020_DC] GROUP BY Facility_ID ORDER BY Facility_ID;