*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resource.robot

*** Keywords ***
Capture Web Link
    ${pagetitle}=    Open Page    http://www.newtours.demoaut.com/    ${browser}
    Log To Console    ${pagetitle}    
    
    ${linkcount}=    Get Element Count    xpath://a
    Log To Console    ${linkcount}   
    
    ${linkItems}    Create List    
    :FOR    ${i}    IN RANGE    1    ${linkcount}+1
    \    ${linktext}=    Get Text    xpath:(//a)[${i}]
    \    Log To Console    ${i}-${linktext}  



TableDemo
    ${pagetitle}=    Open Page    https://testautomationpractice.blogspot.com/    ${browser}
    Log To Console    ${pagetitle}
    
    ${row}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${cols}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    rows---columns
    Log To Console    ${row}--------${cols}            
    

    ${tabledata}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[3]/td[3]
    Log To Console    ${tabledata}    
    
    Table Cell Should Contain    xpath://table[@name='BookTable']    7    3    Javascript
    Table Column Should Contain    xpath://table[@name='BookTable']    4    Price    
    Table Row Should Contain    xpath://table[@name='BookTable']    4    300       

