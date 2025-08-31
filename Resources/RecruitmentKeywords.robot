*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Go to side menu option "Recruitment"
   Click Element  ${btn_recruitment}

Click "Add" btn to add New Candidate
   Click Element  ${btn_addRecruitment}

Select Vacancy from DropDown
   Click Element  ${dropdown_vacancy}
   Click Element  ${dropdownOption_vacancyTitle}

Select Status from Dropdown
   Click Element  ${dropdown_status}
   Click Element  ${dropdownOption_status}

Select Candidate Name from Dropdown
   Input Text  ${txt_candidateName}  ${firstName}
   Wait Until Element is Visible  ${dropdownOption_candidateName}  5s
   Click Element  ${dropdownOption_candidateName}

Fill New Candidate Form
   [Arguments]  ${firstName}  ${middleName}  ${lastName}  ${email}  ${filePath}
   Input Text  ${txt_firstName}  ${firstName}
   Input Text  ${txt_middleName}  ${middleName}
   Input Text  ${txt_lastName}  ${lastName}
   Select Vacancy from DropDown
   Input Text  ${txt_email}  ${email}
   Choose File  ${upload_fileInput}  ${resumeFilePath}
   Click Element  ${btn_calendar}
   Click Element  ${checkbox_recruitement}
   Submit form

Search Candidate
   [Arguments]  ${firstName}  ${dropdownOption_candidateName}
   Click Element  ${btn_candidatesTab}
   Select Vacancy from DropDown
   Select Status from Dropdown
   Select Candidate Name from Dropdown
   Submit form

Delete Candidate
   Click Element  ${btn_delete}
   Click Element  ${dioalogueBox_delete}