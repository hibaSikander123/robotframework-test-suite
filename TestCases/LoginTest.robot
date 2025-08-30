*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot
Variables  ../EnvHelper.py

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
Test to Login
   Open my Browser  ${url}  ${browser}
   Set Selenium Implicit Wait    5 seconds
   Enter Credentials  ${username}  ${password}
   Element Should Be Visible  ${verifyLogin}


