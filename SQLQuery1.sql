select * from dbo.[2016-2020_DC]

select Facility_ID
from dbo.[2016-2020_DC]
where Hospital overall rating like '%Not Available%';

select Patient_Survey_Star_Rating,
       HCAHPS_Answer_Percent,
	   HCAHPS_Linear_Mean_Value,
	   Number_of_Completed_Surveys,
	   Survey_Response_Rate_Percent,
	   Hospital_overall_rating,
	   Mortality_national_comparison,
	   Safety_of_care_national_comparison,
	   Readmission_national_comparison,
	   Patient_experience_national_comparison,
	   Effectiveness_of_care_national_comparison,
	   Timeliness_of_care_national_comparison,
	   Efficient_use_of_medical_imaging_national_comparison from dbo.[2016-2020_DC] where Patient_Survey_Star_Rating like '%Not Available%';


ALTER table dbo.[2016-2020_DC] ADD workingrow nvarchar(max);

update  dbo.[2016-2020_DC]
set workingrow =
CAST(    Patient_Survey_Star_Rating    AS nvarchar(max))    + ', ' +
CAST(    HCAHPS_Answer_Percent    AS nvarchar(max))    + ', ' +
CAST(    HCAHPS_Linear_Mean_Value    AS nvarchar(max))    + ', ' +
CAST(    Number_of_Completed_Surveys    AS nvarchar(max))    + ', ' +
CAST(    Survey_Response_Rate_Percent    AS nvarchar(max))    + ', ' +
CAST(    Hospital_overall_rating    AS nvarchar(max))    + ', ' +
CAST(    Mortality_national_comparison    AS nvarchar(max))    + ', ' +
CAST(    Safety_of_care_national_comparison    AS nvarchar(max))    + ', ' +
CAST(    Readmission_national_comparison    AS nvarchar(max))    + ', ' +
CAST(    Patient_experience_national_comparison    AS nvarchar(max))    + ', ' +
CAST(    Effectiveness_of_care_national_comparison    AS nvarchar(max))    + ', ' +
CAST(    Timeliness_of_care_national_comparison    AS nvarchar(max))    + ', ' +
CAST(    Efficient_use_of_medical_imaging_national_comparison    AS nvarchar(max))

select count(*) from dbo.[2016-2020_DC];

SELECT
    workingrow,LEN(workingrow) - LEN(REPLACE(workingrow, 'Not Available', ''))
        AS occurrences
    FROM dbo.[2016-2020_DC]

SELECT workingrow,LEN(workingrow),REPLACE(workingrow,'Not Available',''),LEN(REPLACE(workingrow,'Not Available','')) from dbo.[2016-2020_DC]

SELECT workingrow,LEN(workingrow) - LEN(REPLACE(workingrow,'Not Available','')) from dbo.[2016-2020_DC]


SELECT count(*) FROM dbo.[2016-2020_DC](workingrow, 'Not Available', 'g');


select Facility_ID,workingrow
from dbo.[2016-2020_DC]
where Hospital_overall_rating like '%Not Available%';