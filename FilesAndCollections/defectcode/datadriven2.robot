*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/LoginResource.robot
Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=Sheet1

Suite Setup    Launch Browser
Suite Teardown    Close Browser

Test Template    Invalid login


*** Test Cases ***        username        password
LoginTestWithExcelFile    ${username}    ${password}



*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input PWD    ${password}
    Click Login Button
    Error message should be visible