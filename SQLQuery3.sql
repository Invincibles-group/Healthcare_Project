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


DECLARE @cnt INT = 0;
DECLARE @idColumn nvarchar(max)
DECLARE @test varchar(255)

WHILE @cnt <= 10
BEGIN
   SET @cnt = @cnt + 1;
   PRINT(@cnt)
	SELECT  @idColumn = Facility_ID  FROM dbo.[2016-2020_DC] WHERE ID_value=@cnt
	SELECT @test=workingrow FROM dbo.[2016-2020_DC] WHERE Facility_ID= @idcolumn
	PRINT dbo.fnOccurs(@test, 'Not Available')
END;


SELECT COUNT(*) FROM dbo.[2016-2020_DC] WHERE Facility_ID= '10002'
SELECT Facility_ID,COUNT(*) FROM dbo.[2016-2020_DC] GROUP BY Facility_ID ORDER BY Facility_ID;

ALTER TABLE dbo.[2016-2020_DC] Add ID_value int Identity(1, 1)
SELECT TOP 10 * FROM dbo.[2016-2020_DC]


SELECT DISTINCT(HCAHPS_Answer_Description) from dbo.[2016-2020_DC]
SELECT COUNT(Meets_criteria_for_promoting_interoperability_of_EHRs) FROM dbo.[2016-2020_DC] WHERE Meets_criteria_for_promoting_interoperability_of_EHRs='Not Available'

SELECT * from dbo.[2016-2020_DC]
SELECT workingrow from dbo.[2016-2020_DC]



DECLARE @cnt INT = 0;
DECLARE @idColumn nvarchar(max)
DECLARE @test varchar(255)
DECLARE C CURSOR FOR SELECT TOP 2 Facility_ID FROM dbo.[2016-2020_DC]
OPEN C;
FETCH FROM C INTO @idColumn

WHILE @cnt <= 100
BEGIN
   SET @cnt = @cnt + 1;
	SELECT @test=workingrow FROM dbo.[2016-2020_DC] WHERE Facility_ID= @idcolumn
	PRINT dbo.fnOccurs(@test, 'Not Available')
END;
CLOSE C;
