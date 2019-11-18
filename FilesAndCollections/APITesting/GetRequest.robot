*** Settings ***
Library    RequestsLibrary    
Library    Collections    


*** Variables ***
${baseurl}    http://restapi.demoqa.com/
${city}    Vaasa



*** Test Cases ***
Get weather report
    Create Session    mysession    ${baseurl}
    ${response}=    Get Request    mysession    /utilities/weather/city/${city}    
    
    #Validating........
    Log To Console    ${response.status_code}
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}    200       
    Log To Console    ${response.content}
    ${content}=    Convert To String    ${response.content}
    Should Contain    ${content}    Vaasa    
    
    Log To Console    ${response.headers}
    ${headers}=    Get From Dictionary    ${response.headers}    Content-Type
    Should Be Equal    ${headers}    application/json    