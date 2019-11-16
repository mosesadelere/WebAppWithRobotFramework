*** Settings ***
Library    SeleniumLibrary    
Resource   ../Resources/resource2.robot


Suite Teardown    Close All Browsers

*** Test Cases ***
Table Operations
    TableDemo