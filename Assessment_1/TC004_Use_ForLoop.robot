*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***
${URL}  https://www.pepperfry.com/
${Browser}  chrome
@{Items}    1-seater-sofas     2-seater-sofas      3-seater-sofas

*** Test Cases ***
Verifying the items avaliabilty with for loop
    open browser    ${URL}        ${Browser}
    maximize browser window
    set selenium implicit wait    5 seconds
    wait until element is visible    css=a.close-modal
    click element    css=a.close-modal
    FOR     ${list}    IN  @{Items}
        input text    search      ${list}
        click element    searchButton
        click element    css=span.hd-search-cancel.cursor-pointer.ng-star-inserted
    END
    sleep    5 seconds

