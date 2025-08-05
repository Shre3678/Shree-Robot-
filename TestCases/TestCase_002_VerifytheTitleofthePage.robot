*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser Name}     Chrome
${Url}      https://www.pepperfry.com/
${Exp_title}    Buy Furniture & Home Decor Online – Up to 60% Off at Best Prices in India | Pepperfry

*** Test Cases ***
Launching the browser
    open browser    ${Url}      ${Browser Name}
    sleep    2
    Verify webpage title
    close browser

*** Keywords ***
Verify webpage title
    ${title}=   get title
    log     ${title}
    should be equal     ${title}        ${Exp_title}
