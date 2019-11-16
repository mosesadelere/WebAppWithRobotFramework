*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resource.robot          



*** Test Cases ***
RegisterAccount
    ${PageTitle}=    Open Page    ${url}    ${browser}
    Log To Console    ${PageTitle}
    Enlarge window
    Add registration details
    
HandleAlert
    CloseAlert
    

FrameTest
    Testing Frames
    
TabWindowsTest
    Multiple Tab
    
Navigate
    Navigation Test
    
ScrollTest
    ScrollingPage