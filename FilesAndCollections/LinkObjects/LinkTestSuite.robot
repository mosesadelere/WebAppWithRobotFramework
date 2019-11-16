*** Settings ***
Library    SeleniumLibrary    
Resource   ../Resources/resource.robot
Resource   ../Resources/resource2.robot

*** Test Cases ***
GetLink Test
    Capture Web Link