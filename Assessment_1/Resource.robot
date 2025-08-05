*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***
Browser Launch
    [Arguments]    ${URL}        ${Browser}
    open browser    ${URL}        ${Browser}
    maximize browser window
    set selenium implicit wait    5 seconds
