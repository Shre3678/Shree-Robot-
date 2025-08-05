*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***
Launching the browser
    [Arguments]     ${Url}      ${Browser Name}
    open browser    ${Url}      ${Browser Name}
    maximize browser window
    sleep    2
Close my Browser
    close browser

