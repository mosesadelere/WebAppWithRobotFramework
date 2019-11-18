*** Settings ***
Library    AutoItLibrary
#Library    ../../../../Python37/Lib/site-packages/AutoItLibrary/



*** Variables ***
${Notepad}    C:\\Program Files\\Notepad++\\notepad++.exe


*** Test Cases ***
APP Testing
    Run    ${Notepad}
    Win Wait Active    new 1 - Notepad++
    Send    Hello from my first desktop testing.. This is just a test.
    