*** Settings ***
Library    SeleniumLibrary    
Resource    ../Resources/RegistrationKeywords.robot

Suite Teardown    close my browsers


*** Variables ***
${browser}    firefox
${url}    http://www.newtours.demoaut.com/


 




*** Test Cases ***
Registration Test
    Launch browser    ${url}    ${browser}
    Click Register Link
    Enter Firstname    Baby
    Enter Lastname    John
    Enter Phone    01234456789
    Enter Email    babyjohn@gmail.com
    Enter Address1    Toronto
    Enter Address2    Canada
    Enter City    Toronto
    Enter State    Brampton
    Enter Postal Code    l3s 1e7
    Select Country    CANADA
    Enter Username    babyjohnxyz
    Enter Password    babyjohnxyz
    Enter Confirmed Password    babyjohnxyz
    Click Submit
    Verify Successful Registration
    