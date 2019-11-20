*** Settings ***
Library    JSONLibrary    
Library    OperatingSystem    
Library    Collections    


*** Variables ***
${jsonpath}    C:/Users/moses/git/WebAppWithRobotFramework/FilesAndCollections/Resources/jsondata.json

*** Test Cases ***
TestJson
    ${json_data}=    Load JSON From File    ${jsonpath}
    
    ${name_value}=    Get Value From Json    ${json_data}    $.firstname
    Should Be Equal    ${name_value[0]}    Moses
    
    ${street_value}=    Get Value From Json    ${json_data}    $.address.streetname
    Should Be Equal    ${street_value[0]}    Teeriniemenkatu 16
    
    ${fax_value}=    Get Value From Json    ${json_data}    $.phone[1].number
    Should Be Equal    ${fax_value[0]}    123-456-7890
