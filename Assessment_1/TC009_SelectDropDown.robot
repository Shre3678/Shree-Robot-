*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}  https://www.pepperfry.com/
${Browser}  chrome

*** Test Cases ***
Select drop down from company type Sole Proprietorship Concern
    [Documentation]     Sell on pepperfry
    open browser    ${URL}     ${Browser}
    maximize browser window
    set selenium implicit wait    5 seconds
    wait until element is visible    css=a.close-modal
    click element    css=a.close-modal
    click element    xpath://a[.='Sell on pepperfry']
    sleep    3 seconds
    #click element    xpath://label[@class="input-label-text"]/following-sibling::input[@placeholder="Select Categories"]
    scroll element into view    css=button.false.select-btn.ng-star-inserted
    click element    css=button.false.select-btn.ng-star-inserted
    wait until element is visible    xpath=//li[@data-value="2" and @data-label="Sole Proprietorship Concern"]
    click element    xpath=//li[@data-value="2" and @data-label="Sole Proprietorship Concern"]
    sleep    3 seconds