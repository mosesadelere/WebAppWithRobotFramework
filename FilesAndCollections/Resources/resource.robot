*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${url}    http://demowebshop.tricentis.com/register
${browser}    firefox

*** Keywords ***
Open Page
    [Arguments]    ${appurl}    ${appbrowser}
    Open browser    ${appurl}    ${appbrowser}
    ${title}=    Get Title
    [Return]    ${title}


Enlarge window
    Maximize Browser Window
    
Add registration details
    Click Link    xpath:/html/body/div[4]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
    ${time} =    Get Selenium Timeout
    Log To Console    ${time}    
    Set Selenium Timeout    10
    Wait Until Page Contains    Register    # default 5 secs  
    Select Radio Button    Gender    M
    Input Text    name:FirstName    Moses
    Input Text    name:LastName    Adelere 
    Input Text    name:Email    moses.adelere@gmail.com
    Input Password    name:Password    helper83
    Input Password    name:ConfirmPassword    helper83           
    Set Selenium Implicit Wait    10
    Close Browser
    #Input Text    locator    text    


CloseAlert
    ${PageTitle}=    Open Page    http://testautomationpractice.blogspot.com    ${browser}
    Log To Console    ${PageTitle}    
    Click Button    xpath:/html/body/div[4]/div[2]/div[2]/div[2]/div[2]/div[2]/div[2]/div/div[4]/div[2]/div/aside/div/div[2]/div[1]/button
    #Set Selenium Implicit Wait    10
   # Alert Should Be Present    Press a button!
    Handle Alert    accept
    Close Browser 

Testing Frames
    ${PageTitle}=    Open Page    https://seleniumhq.github.io/selenium/docs/api/java/index    ${browser}
    Log To Console    ${PageTitle}
    Select Frame    packageListFrame
    Click Link    xpath:/html/body/div[2]/ul/li[8]/a
    Unselect Frame
    
    Select Frame    packageFrame
    Click Link    xpath:/html/body/div/ul[2]/li[3]/a
    Unselect Frame    
    
    Select Frame    classFrame
    Click Link    Tree
    Unselect Frame
    
    Close Browser    

Multiple Tab
    ${pagetitle}=    Open Page    http://demo.automationtesting.in/Windows.html    chrome
    Log To Console    ${pagetitle}    
    Click Button      xpath:/html/body/div[1]/div/div/div/div[2]/div[1]/a/button
    Select Window    title=Sakinalium | Home         
    Click Element    xpath:/html/body/div[5]/header/div/div/div[2]/ul/li[2]/a
    Set Selenium Implicit Wait    5
    Close All Browsers     
    

Navigation Test
    ${PageTitle}=    Open Page    https://google.com    ${browser}
    Log To Console    ${PageTitle}
    ${loc}=    Get Location
    Log To Console    ${loc}
    
    Go To    http://bbc.co.uk
    ${loc}=    Get Location
    Log To Console    $loc}    
    
    Go Back
    ${loc}=    Get Location
    Log To Console    ${loc}    
    Close All Browsers

ScrollingPage
    ${PageTitle}=    Open Page    https://countries-ofthe-world.com/flags-of-the-world.html    ${browser}
    Log To Console    ${PageTitle}
   # Execute Javascript    window.scrollTo(0, 1500)
    Scroll Element Into View    xpath:/html/body/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/table[2]/tbody/tr[28]/td[2]
