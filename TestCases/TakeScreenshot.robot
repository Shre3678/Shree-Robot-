*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.facebook.com/
${Browser_name}     Chrome

*** Test Cases ***
Verify the elements with "Name" locator and clear the entered text and take screen shot after store Snapshots floder
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  name=email      Srinivas
    clear element text    name=email
    capture page screenshot    ./Snapshots/FB_userenter_textclear.png
    close browser

