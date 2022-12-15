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
DECLARE @searchIn  varchar(8000)  -- The string to be searched.
DECLARE @searchFor varchar(8000) = 'Not Available'   -- The string to be counted.

WHILE @cnt <= 10
BEGIN
   SET @cnt = @cnt + 1;
   DECLARE @len_diff int
	SELECT @idColumn = Facility_ID  FROM dbo.[2016-2020_DC] WHERE ID_value=@cnt
	SELECT @searchIn=workingrow FROM dbo.[2016-2020_DC] WHERE Facility_ID= @idcolumn
	SET @len_diff = Len(@searchIn) - Len(Replace(@searchIn, @searchFor, ''))
    SET @len_diff = @len_diff / Len(@searchFor)
	PRINT(@searchFor)
	PRINT(@len_diff)
END;
DECLARE @ity nvarchar(max)='Not Available, Not Applicable, Not Applicable, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available'
PRINT(Len('Not Available, Not Applicable, Not Applicable, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available'))
PRINT(Len(REPLACE(@ity,'Not Available','')))
PRINT(Len('Not Available, Not Applicable, Not Applicable, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available') - Len(REPLACE(@ity,'Not Available','')))
PRINT((Len('Not Available, Not Applicable, Not Applicable, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available, Not Available') - Len(REPLACE(@ity,'Not Available','')))/Len('Not Available'))

SELECT COUNT(*) FROM dbo.[2016-2020_DC] WHERE Facility_ID= '10002'
SELECT Facility_ID,COUNT(*) FROM dbo.[2016-2020_DC] GROUP BY Facility_ID ORDER BY Facility_ID;

ALTER TABLE dbo.[2016-2020_DC] Add ID_value int Identity(1, 1)
SELECT TOP 10 * FROM dbo.[2016-2020_DC]