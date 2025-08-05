*** Settings ***
Library    SeleniumLibrary
Library    C:/Users/Lenovo/PycharmProjects/Automation-office/JsonFiles/Locators.py
*** Variables ***
${URL}  https://www.facebook.com/
${Browser_name}     Chrome

*** Test Cases ***
Verify the elements with "Name" locator and clear the entered text
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    ${user}=    Read the locators form json     Registration.username_textboxname
    input text  name=${user}      Srinivas
    clear element text    name=email
    close browser

*** Keywords ***
Read the locators form json
    [Arguments]    ${Jsonpath}
    ${result}=   read_locators_from_json    ${Jsonpath}
    [Return]    ${result}