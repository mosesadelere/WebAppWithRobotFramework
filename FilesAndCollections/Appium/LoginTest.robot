*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/LoginKeywords.robot

Suite Teardown    Close my browser

Test Template    Login Test

*** Variables ***
${browser}    firefox
${url}    http://newtours.demoaut.com/
${username}    tutorial
${password}    tutorial


*** Keywords ***
Login Test
    [Arguments]    ${username}    ${password}
    Launch browser    ${url}    ${browser}
    Enter UserData    ${username}
    Enter password    ${password}
    Click SignIN
    Verify Successful Login
    

*** Test Cases ***
You can login with username and password    ${username}    ${password}
