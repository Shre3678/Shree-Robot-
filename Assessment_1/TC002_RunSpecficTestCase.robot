*** Settings ***
Library    SeleniumLibrary

# For run particular test cases (robot -t "Validate the Track your order title" .)

*** Variables ***


*** Test Cases ***
Get the Sell on property title
    Start browser
    click element    xpath://a[.='Sell on pepperfry']
    ${title}    get title
    log     ${title}
Get the Track your order title
    Start browser
    click element    xpath://a[.='Track Your Order']
    ${title}    get title
    log    ${title}


*** Keywords ***
Start browser
    open browser    https://www.pepperfry.com/        chrome
    maximize browser window
    set selenium implicit wait    10 seconds
    wait until element is visible    css=a.close-modal
    click element    css=a.close-modal