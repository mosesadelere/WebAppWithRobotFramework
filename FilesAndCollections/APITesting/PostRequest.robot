*** Settings ***
Library    RequestsLibrary    
Library    Collections    






*** Variables ***
${baseurl}    http://restapi.demoqa.com/customer





*** Test Cases ***
RegisterCustomer
    Create Session    mysession    ${baseurl}
    ${content}=    Create Dictionary    FirstName=Aramyd    LastName=Boy    UserName=babyboy    Password=babyboy    Email=aramydboy@gmail.com
    ${header}=    Create Dictionary    Content-Type=application/json
    ${response}=    Post Request    mysession    /register    data=${content}    headers=${header}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    
    #Validating........
    ${status_code}=    Convert To String    ${response.status_code}
    Should Be Equal    ${response.status_code}    201    



    ${respondwith}=    Convert To String    ${response.content}
    Should Contain    ${respondwith}    Operation completed successfully    