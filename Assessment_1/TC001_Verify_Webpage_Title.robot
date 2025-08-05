*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}  https://www.pepperfry.com/
${Browser}  chrome

*** Test Cases ***
Verify Webpage Title Details
    open browser    ${URL}  ${browser}
    ${title}    get title
    log to console    ${title}
    should be equal    ${title}  Buy Furniture & Home Decor Online – Up to 60% Off at Best Prices in India | Pepperfry
    close browser