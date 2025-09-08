*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/BuzzPostKeywords.robot
Variables  ../EnvHelper.py


*** Test Cases ***
Test to Go to "Buzz" side tab
   Go to side menu option "Buzz"
   Element Text Should Be  ${txt_pageTitle}  Buzz  Buzz side-tag hasn't been clicked!

Test to Upload a Buzz Post
    Upload a post for Hiring  ${photoFilePath}  ${buzzPostText}
    Wait Until Element is Visible  ${toast_confirmSave}  5s
    ${confirmPostSaved}=  Get Text  ${toast_confirmSave}
    Should Be Equal As Strings  ${confirmPostSaved}  Successfully Saved  Buzz Post is not Saved Succesfully!

