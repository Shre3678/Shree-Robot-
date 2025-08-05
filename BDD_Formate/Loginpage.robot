*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}  https://www.facebook.com/
${Browser_name}     Chrome

*** Test Cases ***
Verify the elements with "Name" locator and clear the entered text
    Given  open browser    ${URL}      ${Browser_name}
     maximize browser window
     set selenium implicit wait    2 seconds
    When input text  name=email      Srinivas
    Then clear element text    name=email

    #In progress


