*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Go to side menu option "Buzz"
   Wait Until Element Is Not Visible  ${toast_confirmDelete}  10s
   Wait Until Element Is Enabled  ${btn_buzz}  3s
   Click Element  ${btn_buzz}

Upload a post for Hiring
    [Arguments]  ${photoFilePath}  ${buzzPostText}
    Wait Until Element is Enabled  ${txt_buzzPost}  5s
    Input Text  ${txt_buzzPost}  ${buzzPostText}
    Click Element    ${btn_buzzPhoto}
    Wait Until Element Is Visible    ${modal_UploadVisibility}  5s
    Wait Until Page Contains Element    ${upload_buzzPhoto}  5s
    Choose File    ${upload_buzzPhoto}  ${photoFilePath}
    Scroll Element Into View    ${btn_sharePost}
    Wait Until Element Is Enabled    ${btn_sharePost}    5s
    Click Element    ${btn_sharePost}
