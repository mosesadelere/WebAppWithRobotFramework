*** Settings ***
Library    SeleniumLibrary    
Variables    ../PageObject/locator.py


*** Keywords ***
Launch browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    
Click Register Link
    Click Link    ${link_Reg}    
    
Enter Firstname
    [Arguments]    ${firstName}
    Input Text    ${txt_firstName}    ${firstName}    
    
Enter Lastname
    [Arguments]    ${lastName}
    Input Text    ${txt_lastName}    ${lastName}
    
Enter Phone
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}
    

Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}
    
Enter Address1
    [Arguments]    ${add1}
    Input Text    ${txt_add1}    ${add1}


Enter Address2
    [Arguments]    ${add2}
    Input Text    ${txt_add2}    ${add2}
    
Enter City
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city}
    
Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state}

Enter Postal Code
    [Arguments]    ${postcode}
    Input Text    ${txt_postCode}    ${postcode}
    
Select Country
    [Arguments]    ${country}
    Select From List By Label    ${drp_country}    ${country}
    
Enter Username
    [Arguments]    ${username}
    Input Text    ${txt_userName}    ${username}
    
Enter Password
    [Arguments]    ${password}
    Input Text    ${txt_Password}    ${password}
    
Enter Confirmed Password
    [Arguments]    ${confpassword}
    Input Text    ${txt_conformedPasswords}    ${confpassword}
    
Click Submit
    Click Button    ${btn_submit}
    
Verify Successful Registration
    Page Should Contain    Thank you for registering    
    
close my browsers
    Close All Browsers



    
    

















