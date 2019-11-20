*** Settings ***
Library    RequestsLibrary
Library    os
Library    Collections    
Library    JSONLibrary    

*** Variables ***
${url}    https://restcountries.eu


*** Test Cases ***
Get country info
    create session    mysesion    ${url}
    ${response}=    Get Request    mysesion    /rest/v2/alpha/NG
    

    ${json_object}=    To Json    ${response.content}
    
    ${country_name}=    Get Value From Json    ${json_object}    $.name
    Log To Console    ${country_name[0]} 
    Should Be Equal    ${country_name[0]}    Nigeria
    
    ${alt_spelling}=    Get Value From Json    ${json_object}    $.altSpellings[1]
    Log To Console    ${alt_spelling[0]} 
    Should Be Equal    ${alt_spelling[0]}    Nijeriya 
    

    ${alt_spellings}=    Get Value From Json    ${json_object}    $.altSpellings
    Log To Console    ${alt_spellings[0]}
    Should Contain Any    ${alt_spellings[0]}    NG    Nijeriya    Federal Republic of Nigeria                   