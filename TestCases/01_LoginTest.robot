*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot
Variables  ../EnvHelper.py


*** Test Cases ***
Test to Login
   Open my Browser  ${url}  ${browser}
   Set Selenium Implicit Wait    5 seconds
   Enter Credentials  ${username}  ${password}
   Element Should Be Visible  ${verifyLogin}


