*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObject/locator.py



*** Keywords ***
Launch browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    
Enter UserData
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}    ${username}    
    
Enter password
    [Arguments]    ${password}
    Input Password    ${txt_loginPassword}    ${password}
    
Click SignIN
    Click Button    ${btn_signIn}    
    
Verify Successful Login
    Title Should Be    Find a Flight: Mercury Tours:    
    
Close my browser
    Close All Browsers