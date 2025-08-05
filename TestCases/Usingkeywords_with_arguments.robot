*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.facebook.com/
${Browser_name}     Chrome542`

*** Test Cases ***
Verify the elements with "Id" locator and clear the entered text
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    Enter the username and password  Srinivas    12345
    click button    name=login
    sleep   3
    close browser
*** Keywords ***
Enter the username and password
    [Arguments]    ${username}     ${password}
    input text  id:email      ${username}
    input password    id:pass      ${password}