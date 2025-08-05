*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}  https://www.pepperfry.com/
${Browser}  chrome

*** Test Cases ***
Use if else condition
    open browser    ${URL}     ${Browser}
    maximize browser window
    set selenium implicit wait    5 seconds
    wait until element is visible    css=a.close-modal
    click element    css=a.close-modal
    ${title}=    get title
    IF   '${title}' == 'Buy Furniture & Home Decor Online – Up to 60% Off at Best Prices in India | Pepperfry'
         input text    search      4 Door Wardrobes
        click element    searchButton
    ELSE
        log    Title not matched
        close browser
    END