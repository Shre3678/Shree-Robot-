*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser Name}     chrome
${Url}      https://www.pepperfry.com/

*** Test Cases ***
Launching the browser
    open browser    ${Url}      ${Browser Name}
    sleep    2
    close browser

*** Keywords ***
