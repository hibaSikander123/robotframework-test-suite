*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
   [Arguments]  ${url}  ${browser}
   open browser  ${url}  ${browser}
   Wait Until Page Contains Element    name:username    timeout=10s
   Maximize Browser Window

Enter Credentials
   [Arguments]  ${username}  ${password}
   Input Text  ${txt_username}  ${username}
   Input Text  ${txt_password}  ${password}
   Click Element  ${btn_login}




