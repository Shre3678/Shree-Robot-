*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${Browser_name}     Chrome

*** Test Cases ***
Example of Validaton keywords
    [Documentation]     if all the validation are pass then enter the input
    open browser    ${url}  ${browser_name}
    maximize browser window
    title should be    Automation Testing Practice
    page should contain    GUI Elements
    page should not contain    ABCD
    element should be visible    name
    element should be enabled    name
    element text should be    xpath://a[.='GUI Elements']   GUI Elements
    page should contain textfield    name
    page should not contain textfield    nam        #actual element locator is "name"

    input text    name  Srinivas
    sleep    2 seconds



