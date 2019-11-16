*** Settings ***
Library    SeleniumLibrary    




*** Variables ***
${appbrows}    firefox
${url}    https://demo.nopcommerce.com
${loginUrl}    https://demo.nopcommerce.com/login?returnUrl=%2Flogin%3FreturnUrl%3D%252F


*** Keywords ***
Launch Browser
    Open Browser    ${loginUrl}    ${appbrows} 
    
Open Login Page
    Go To    ${loginUrl}
    
Input Username
    ${"emailtext"}    Set Variable    id:Email
    [Arguments]    ${username}
    Input Text    ${"emailtext"}    ${username}
    
Input PWD
    ${"password"}    Set Variable    id:Password
    [Arguments]    ${password}
    Input Password    ${"password"}    ${password}    
    
Click Login Button
    Click Button    xpath://input[@class='button-1 login-button']    
    
Click Logout Link
    Click Link    xpath://a[@class='ico-logout']
    
Verify Title page
    Title Should Be    nopCommerce demo store        


Error message should be visible
    Page Should Contain    Login was unsuccessful       
        