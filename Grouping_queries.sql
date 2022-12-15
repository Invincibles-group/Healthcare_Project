UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Question='Are patients dissatisfied with their treatment?' 
WHERE HCAHPS_Question='Patients who "Disagree" or "Strongly Disagree" that the staff took my preferences into account when determining my health care needs' OR
HCAHPS_Question='Patients who "Disagree" or "Strongly Disagree" that they understood the purposes of their medications when leaving the hospital' OR
HCAHPS_Question='Patients who "Disagree" or "Strongly Disagree" that they understood their responsiblities in managing their health' OR
HCAHPS_Question='Patients who "Disagree" or "Strongly Disagree" they understood their care when they left the hospital' OR
HCAHPS_Question='Patients who Disagree or Strongly Disagree they understood their care when they left the hospital'


UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Answer_Description='Disatisfied after treatment' 
WHERE HCAHPS_Answer_Description='Patients who "Disagree" or "Strongly Disagree" that staff took their preferences into account' OR
HCAHPS_Answer_Description='Patients who "Disagree" or "Strongly Disagree" they understood their medications when they left the hospital' OR
HCAHPS_Answer_Description='Patients who "Disagree" or "Strongly Disagree" they understood their responsiblities when they left the hospital' OR
HCAHPS_Answer_Description='Patients who "Disagree" or "Strongly Disagree" they understood their care when they left the hospital' OR
HCAHPS_Answer_Description='Patients who Disagree or Strongly Disagree they understood their care when they left the hospital'


UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Question='Is the hospital not something you"d recommend?' 
WHERE HCAHPS_Question='Patients who reported NO, they would probably not or definitely not recommend the hospital' OR
HCAHPS_Question='Patients who reported that NO, they did not discuss whether they would need help after discharge' OR
HCAHPS_Question='Patients who reported that NO, they did not receive written information about possible symptoms to look out for after discharge' OR
HCAHPS_Question='Patients who reported that NO, they were not given information about what to do during their recovery at home'

UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Answer_Description='Not Recommended' 
WHERE HCAHPS_Answer_Description='"NO", patients would not recommend the hospital (they probably would not or definitely would not recommend it)' OR
HCAHPS_Answer_Description='No, staff "did not" give patients information about help after discharge' OR
HCAHPS_Answer_Description='No, staff "did not" give patients information about possible symptoms' OR
HCAHPS_Answer_Description='No, staff "did not" give patients this information'


UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Question='Would you recommend this hospital?' 
WHERE HCAHPS_Question='Patients who reported that YES, they did discuss whether they would need help after discharge' OR
HCAHPS_Question='Patients who reported that YES, they did receive written information about possible symptoms to look out for after discharge' OR
HCAHPS_Question='Patients who reported that YES, they were given information about what to do during their recovery at home' OR
HCAHPS_Question='Patients who reported YES, they would definitely recommend the hospital' OR
HCAHPS_Question='Patients who reported YES, they would probably recommend the hospital' OR
HCAHPS_Question='Recommend hospital - linear mean score' OR
HCAHPS_Question='Recommend hospital - star rating'

UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Answer_Description='Recommended' 
WHERE HCAHPS_Answer_Description='Yes, staff "did" give patients information about help after discharge' OR
HCAHPS_Answer_Description='Yes, staff "did" give patients information about possible symptoms' OR
HCAHPS_Answer_Description='Yes, staff "did" give patients this information' OR
HCAHPS_Answer_Description='"YES", patients would definitely recommend the hospital' OR
HCAHPS_Answer_Description='"YES", patients would probably recommend the hospital' OR
HCAHPS_Answer_Description='Recommend hospital - linear mean score' OR
HCAHPS_Answer_Description='Recommend hospital - star rating'



UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Question='How well did doctors/nurses communicate with patients?' 
WHERE HCAHPS_Question='Patients who reported that staff "Always" explained about medicines before giving it to them' OR
HCAHPS_Question='Patients who reported that the area around their room was "Always" quiet at night' OR
HCAHPS_Question='Patients who reported that their doctors "Always" communicated well' OR
HCAHPS_Question='Patients who reported that their doctors "Always" explained things in a way they could understand' OR
HCAHPS_Question='Patients who reported that their doctors "Always" listened carefully to them' OR
HCAHPS_Question='Patients who reported that their doctors "Always" treated them with courtesy and respect' OR
HCAHPS_Question='Patients who reported that their nurses "Always" communicated well' OR
HCAHPS_Question='Patients who reported that their nurses "Always" explained things in a way they could understand' OR
HCAHPS_Question='Patients who reported that their nurses "Always" listened carefully to them' OR
HCAHPS_Question='Patients who reported that their nurses "Always" treated them with courtesy and respect' OR
HCAHPS_Question='Patients who reported that their pain was "Always" well controlled' OR
HCAHPS_Question='Patients who reported that their room and bathroom were "Always" clean' OR
HCAHPS_Question='Patients who reported that they "Always" received bathroom help as soon as they wanted' OR
HCAHPS_Question='Patients who reported that they "Always" received help after using the call button as soon as they wanted' OR
HCAHPS_Question='Patients who reported that they "Always" received help as soon as they wanted' OR
HCAHPS_Question='Patients who reported that when receiving new medication the staff "Always" communicated what the medication was for' OR
HCAHPS_Question='Patients who reported that when receiving new medication the staff "Always" discussed possible side effects' OR
HCAHPS_Question='Quietness - linear mean score' OR
HCAHPS_Question='Quietness - star rating' OR
HCAHPS_Question='Staff responsiveness - linear mean score' OR
HCAHPS_Question='Staff responsiveness - star rating' OR
HCAHPS_Question='Care transition - linear mean score' OR
HCAHPS_Question='Care transition - star rating' OR
HCAHPS_Question='Cleanliness - linear mean score' OR
HCAHPS_Question='Cleanliness - star rating' OR
HCAHPS_Question='Nurse communication - linear mean score' OR
HCAHPS_Question='Nurse communication - star rating' OR
HCAHPS_Question='Doctor communication - linear mean score' OR
HCAHPS_Question='Doctor communication - star rating' OR
HCAHPS_Question='Communication about medicines - linear mean score' OR
HCAHPS_Question='Communication about medicines - star rating' OR
HCAHPS_Question='Pain management - linear mean score' OR
HCAHPS_Question='Pain management - star rating' OR
HCAHPS_Question='Pain Management'


UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Answer_Description='Communicated Well' 
WHERE HCAHPS_Answer_Description='Staff "always" explained' OR
HCAHPS_Answer_Description='"Always" quiet at night' OR
HCAHPS_Answer_Description='Doctors "always" communicated well' OR
HCAHPS_Answer_Description='Doctors "always" explained things so they could understand' OR
HCAHPS_Answer_Description='Doctors "always" listened carefully' OR
HCAHPS_Answer_Description='Doctors "always" treated them with courtesy and  respect' OR
HCAHPS_Answer_Description='Nurses "always" communicated well' OR
HCAHPS_Answer_Description='Nurses "always" explained things so they could understand' OR
HCAHPS_Answer_Description='Nurses "always" listened carefully' OR
HCAHPS_Answer_Description='Nurses "always" treated them with courtesy and  respect' OR
HCAHPS_Answer_Description='Pain was "always" well controlled' OR
HCAHPS_Answer_Description='Room was "always" clean' OR
HCAHPS_Answer_Description='Patients "always" received bathroom help as soon as they wanted' OR
HCAHPS_Answer_Description='Patients "always" received call button help as soon as they wanted' OR
HCAHPS_Answer_Description='Patients "always" received help as soon as they wanted' OR
HCAHPS_Answer_Description='Staff "always" explained new medications' OR
HCAHPS_Answer_Description='Staff "always" explained possible side effects' OR
HCAHPS_Answer_Description='Quietness - linear mean score' OR
HCAHPS_Answer_Description='Quietness - star rating' OR
HCAHPS_Answer_Description='Staff responsiveness - linear mean score' OR
HCAHPS_Answer_Description='Staff responsiveness - star rating' OR
HCAHPS_Answer_Description='Care transition - linear mean score' OR
HCAHPS_Answer_Description='Care transition - star rating' OR
HCAHPS_Answer_Description='Cleanliness - linear mean score' OR
HCAHPS_Answer_Description='Cleanliness - star rating' OR

HCAHPS_Answer_Description='Nurse communication - linear mean score' OR
HCAHPS_Answer_Description='Nurse communication - star rating' OR

HCAHPS_Answer_Description='Doctor communication - linear mean score' OR
HCAHPS_Answer_Description='Doctor communication - star rating' OR
HCAHPS_Answer_Description='Communication about medicines - linear mean score' OR
HCAHPS_Answer_Description='Communication about medicines - star rating' OR
HCAHPS_Answer_Description='Pain management - linear mean score' OR
HCAHPS_Answer_Description='Pain management - star rating' OR
HCAHPS_Answer_Description='Overall hospital rating - linear mean score'

UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Question='How well did doctors/nurses communicate with patients?' 
WHERE HCAHPS_Question='Patients who reported that staff "Usually" explained about medicines before giving it to them' OR
HCAHPS_Question='Patients who reported that the area around their room was "Usually" quiet at night' OR
HCAHPS_Question='Patients who reported that their doctors "Usually"  treated them with courtesy and respect' OR
HCAHPS_Question='Patients who reported that their doctors "Usually" communicated well' OR
HCAHPS_Question='Patients who reported that their doctors "Usually" explained things in a way they could understand' OR
HCAHPS_Question='Patients who reported that their doctors "Usually" listened carefully to them' OR
HCAHPS_Question='Patients who reported that their nurses "Usually"  treated them with courtesy and respect' OR
HCAHPS_Question='Patients who reported that their nurses "Usually" communicated well' OR
HCAHPS_Question='Patients who reported that their nurses "Usually" explained things in a way they could understand' OR
HCAHPS_Question='Patients who reported that their nurses "Usually" listened carefully to them' OR
HCAHPS_Question='Patients who reported that their pain was "Usually" well controlled' OR
HCAHPS_Question='Patients who reported that their room and bathroom were "Usually" clean' OR
HCAHPS_Question='Patients who reported that they "Usually" received bathroom help as soon as they wanted' OR
HCAHPS_Question='Patients who reported that they "Usually" received help after using the call button as soon as they wanted' OR
HCAHPS_Question='Patients who reported that they "Usually" received help as soon as they wanted' OR
HCAHPS_Question='Patients who reported that when receiving new medication the staff "Usually" discussed possible side effects'


UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Answer_Description='Communicated Well' 
WHERE HCAHPS_Answer_Description='Pain was "usually" well controlled' OR 
HCAHPS_Answer_Description='Patients "usually" received call button help as soon as they wanted' OR 
HCAHPS_Answer_Description='Doctors "usually"  treated them with courtesy and  respect' OR 
HCAHPS_Answer_Description='Nurses "usually"  treated them with courtesy and  respect' OR 
HCAHPS_Answer_Description='Nurses "usually" listened carefully' OR 
HCAHPS_Answer_Description='Nurses "usually" communicated well' OR 
HCAHPS_Answer_Description='Staff "usually" explained possible side effects' OR 
HCAHPS_Answer_Description='Nurses "usually" explained things so they could understand' OR 
HCAHPS_Answer_Description='"Usually" quiet at night' OR 
HCAHPS_Answer_Description='Patients "usually" received help as soon as they wanted' OR 
HCAHPS_Answer_Description='Room was "usually" clean' OR 
HCAHPS_Answer_Description='Doctors "usually" explained things so they could understand' OR 
HCAHPS_Answer_Description='Staff "usually" explained' OR 
HCAHPS_Answer_Description='Doctors "usually" listened carefully' OR 
HCAHPS_Answer_Description='Patients "usually" received bathroom help as soon as they wanted' OR 
HCAHPS_Answer_Description='Doctors "usually" communicated well'






UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Question='Did doctors/nurses not communicate well with patients?' 
WHERE HCAHPS_Question='Patients who reported that staff "Sometimes" or "Never" explained about medicines before giving it to them' OR
HCAHPS_Question='Patients who reported that the area around their room was "Sometimes" or "Never" quiet at night' OR
HCAHPS_Question='Patients who reported that their doctors "Sometimes" or "Never"  treated them with courtesy and respect' OR
HCAHPS_Question='Patients who reported that their doctors "Sometimes" or "Never" communicated well' OR
HCAHPS_Question='Patients who reported that their doctors "Sometimes" or "Never" explained things in a way they could understand' OR
HCAHPS_Question='Patients who reported that their doctors "Sometimes" or "Never" listened carefully to them' OR
HCAHPS_Question='Patients who reported that their nurses "Sometimes" or "Never"  treated them with courtesy and respect' OR
HCAHPS_Question='Patients who reported that their nurses "Sometimes" or "Never" communicated well' OR
HCAHPS_Question='Patients who reported that their nurses "Sometimes" or "Never" explained things in a way they could understand' OR
HCAHPS_Question='Patients who reported that their nurses "Sometimes" or "Never" listened carefully to them' OR
HCAHPS_Question='Patients who reported that their pain was "Sometimes" or "Never" well controlled' OR
HCAHPS_Question='Patients who reported that their room and bathroom were "Sometimes" or "Never" clean' OR
HCAHPS_Question='Patients who reported that they "Sometimes" or "Never" received bathroom help as soon as they wanted' OR
HCAHPS_Question='Patients who reported that they "Sometimes" or "Never" received help after using the call button as soon as they wanted' OR
HCAHPS_Question='Patients who reported that they "Sometimes" or "Never" received help as soon as they wanted' OR
HCAHPS_Question='Patients who reported that when receiving new medication the staff "Sometimes" or "Never" communicated what the medication was for' OR
HCAHPS_Question='Patients who reported that when receiving new medication the staff "Sometimes" or "Never" discussed possible side effects'

UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Answer_Description='Not Communicated well' 
WHERE  HCAHPS_Answer_Description ='"Sometimes" or "never" quiet at night' OR 
HCAHPS_Answer_Description='Patients "sometimes" or "never" received help as soon as they wanted' OR 
HCAHPS_Answer_Description='Doctors "sometimes" or "never" explained things so they could understand' OR 
HCAHPS_Answer_Description='Patients "sometimes" or "never" received call button help as soon as they wanted' OR 
HCAHPS_Answer_Description='Staff "sometimes" or "never" explained possible side effects' OR 
HCAHPS_Answer_Description='Nurses "sometimes" or "never" listened carefully' OR 
HCAHPS_Answer_Description='Room was "sometimes" or "never" clean' OR 
HCAHPS_Answer_Description='Staff "sometimes" or "never" explained new medications' OR 
HCAHPS_Answer_Description='Doctors "sometimes" or "never" listened carefully' OR 
HCAHPS_Answer_Description='Nurses "sometimes" or "never" treated them with courtesy and  respect' OR 
HCAHPS_Answer_Description='Nurses "sometimes" or "never" communicated well' OR 
HCAHPS_Answer_Description='Staff "sometimes" or "never" explained' OR 
HCAHPS_Answer_Description='Doctors "sometimes" or "never" treated them with courtesy and  respect' OR 
HCAHPS_Answer_Description='Nurses "sometimes" or "never" explained things so they could understand' OR 
HCAHPS_Answer_Description='Pain was "sometimes" or "never" well controlled' OR 
HCAHPS_Answer_Description='Patients "sometimes" or "never" received bathroom help as soon as they wanted' OR 
HCAHPS_Answer_Description='Doctors "sometimes" or "never" communicated well'


UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Question='Overall Rating by Patient 0-6' 
WHERE HCAHPS_Question='Patients who gave their hospital a rating of 6 or lower on a scale from 0 (lowest) to 10 (highest)' 


UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Answer_Description='Low' 
WHERE HCAHPS_Answer_Description='Patients who gave a rating of "6" or lower (low)'


UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Question='Overall Rating by Patient 7-8' 
WHERE HCAHPS_Question='Patients who gave their hospital a rating of 7 or 8 on a scale from 0 (lowest) to 10 (highest)' 


UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Answer_Description='Medium' 
WHERE HCAHPS_Answer_Description='Patients who gave a rating of "7" or "8" (medium)'




UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Question='Overall Rating by Patient 9-10' 
WHERE HCAHPS_Question='Patients who gave their hospital a rating of 9 or 10 on a scale from 0 (lowest) to 10 (highest)' 


UPDATE dbo.[2016-2020_DC] 
SET HCAHPS_Answer_Description='High' 
WHERE HCAHPS_Answer_Description='Patients who gave a rating of "9" or "10" (high)'


DROP FROM dbo.[2016-2020_DC] WHERE HCAHPS_Question='Summary star rating';