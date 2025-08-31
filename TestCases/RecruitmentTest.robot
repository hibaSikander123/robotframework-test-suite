*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/RecruitmentKeywords.robot
Variables  ../EnvHelper.py

*** Test Cases ***
Test to Go to "Recruitment" side tab
   Set Selenium Implicit Wait    5 seconds
   Go to side menu option "Recruitment"
   Element Text Should Be  ${txtTitle_Recruitement}  Recruitment  Recruitment tag hasn't been clicked!

Test to Add New Candidate
   Set Selenium Implicit Wait    5 seconds
   Click "Add" btn to add New Candidate
   Element Text Should Be  ${txtTitle_addCandidate}  Add Candidate  Add button hasn't been clicked!
   Fill New Candidate Form  ${firstName}  ${middleName}  ${lastName}  ${email}  ${resumeFilePath}

   ${input_firstName}=  Get Value  ${txt_firstName}
   ${input_middleName}=  Get Value  ${txt_middleName}
   ${input_lastName}=  Get Value  ${txt_lastName}
   ${input_email}=  Get Value  ${txt_email}

   Should Be Equal As Strings    ${input_firstName}    ${firstName}  First Name is not entered correctly
   Should Be Equal As Strings    ${input_middleName}    ${middleName}  Middle Name is not entered correctly
   Should Be Equal As Strings    ${input_lastName}    ${lastName}  Last Name is not entered correctly
   Should Be Equal As Strings    ${input_email}    ${email}  Email Address is not entered correctly

   Element Text Should Be  ${uploaded_fileTitle}  ${resumeFileName}  Right File is not Uploaded!
   Element Text Should Be  ${selectDropdown_vacancyTitle}  ${vacancyTitle}  Correct Vacancy is not Selected!
   Checkbox Should Be Selected    ${checkboxed_checked}

Test to Search Candidate
   Search Candidate  ${firstName}  ${dropdownOption_candidateName}
   ${searched_result}=  Get Text  ${txt_searchedRow1}
   Should Be Equal As Strings  ${searched_result}  ${firstName} ${middleName} ${lastName}  Candidate is no searched succesfully or wasn't added succesfully!

Test to Delete Candidate
   Delete Candidate
   Wait Until Element is Visible  ${toast_confirmDelete}  10s
   ${confirmDelete}=  Get Text  ${toast_confirmDelete}
   Should Be Equal As Strings  ${confirmDelete}  Successfully Deleted  Candidate is not Deleted Succesfully!
