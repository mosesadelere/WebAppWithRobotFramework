*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/LoginResource.robot

Suite Setup    Launch Browser
Suite Teardown    Close Browser

Test Template    Invalid Login

*** Test Cases ***                username              password
Right user empty password    moses.adelere@gmail.com    ${EMPTY}
Right user wrong password    moses.adelere@gmail.com    abcderg
Wrong user right password    mosjes.adelere@gmail.com   helper83-
Wrong user empty password    moses.adehhlere@gmail.com    ${EMPTY}
Wrong user wrong password    mosjes.adeklere@gmail.com  abcderg 


*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input PWD    ${password}
    Click Login Button
    Error message should be visible 