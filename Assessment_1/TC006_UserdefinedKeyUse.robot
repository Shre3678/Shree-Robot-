*** Settings ***
Library    SeleniumLibrary
Resource    ../Assessment_1/Resource.robot


*** Variables ***
${URL}  https://www.pepperfry.com/
${Browser}  chrome


*** Test Cases ***
TestCase Using a user-defined Keyword
    Browser Launch    ${URL}    ${Browser}
    wait until element is visible    css=a.close-modal
    click element    css=a.close-modal
    click element    //div[@class="hd-cart-wrap hd-icon-cta"]//a[@role="link" and @class="cursor-pointer"]
    page should contain    Don't Ghost Your Cart
