*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://thetestingworld.com
${Browser_name}     Chrome

*** Test Cases ***
Example of right click using (open context menu) keyword
    open browser    ${url}  ${browser_name}
    maximize browser window
    open context menu    //a[.='TUTORIAL ']
    sleep    3 seconds
Example of double click element keyword
    open browser    https://testautomationpractice.blogspot.com/  ${browser_name}
    maximize browser window
    double click element    //button[.='Copy Text']
    sleep    3 seconds
Example of mouse down and mouse up keywords
    open browser    https://testautomationpractice.blogspot.com/  ${browser_name}
    maximize browser window
    mouse down    css=button.dropbtn
    mouse up        id:Wikipedia1_wikipedia-search-input
    sleep    2 seconds
Example of mouse over keyword for howerover on element
    open browser    https://testautomationpractice.blogspot.com/  ${browser_name}
    maximize browser window
    mouse over    css=button.dropbtn
    sleep    2 seconds
Example of keyboard operation using (press key) keyword with ASCII values
    open browser    https://www.flipkart.com/      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  css=input.Pke_EE[name='q']      Srimad Bhagavad Gita
    press key   css=input.Pke_EE[name='q']  \\13        # click on enter with ASCII values
    sleep   2 seconds