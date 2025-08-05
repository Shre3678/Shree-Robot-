*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${Browser_name}     Chrome

*** Test Cases ***
Example of (wait until page contains) keyword
    open browser    ${url}  ${browser_name}
    maximize browser window
    wait until page contains    Automation Testing Practice
    double click element    //button[.='Copy Text']
Example of (wait until page contains element) keyword
    open browser    ${url}  ${browser_name}
    maximize browser window
    wait until page contains element    name
    double click element    //button[.='Copy Text']
Example of (wait until element contains) keyword
    open browser    ${url}  ${browser_name}
    maximize browser window
    wait until element contains    xpath://a[.='GUI Elements']         GUI Elements
    double click element    //button[.='Copy Text']
Example of (wait until element is enabled) keyword
    open browser    ${url}  ${browser_name}
    maximize browser window
    wait until element is enabled    //button[.='Copy Text']
    double click element    //button[.='Copy Text']
Example of (wait until element is visible) keyword
    open browser    ${url}  ${browser_name}
    maximize browser window
    wait until element is visible    //button[.='Copy Text']
    double click element    //button[.='Copy Text']
Example of (wait until element is not visible) keyword
    open browser    ${url}  ${browser_name}
    maximize browser window
    wait until element is not visible    //buttons[.='Copy Text']    #with incorrect the locator
    double click element    //button[.='Copy Text']
