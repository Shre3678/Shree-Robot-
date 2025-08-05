*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.facebook.com/
${Browser_name}     Chrome

*** Test Cases ***
Verify the elements with "Name" locator and clear the entered text
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  name=email      Srinivas
    clear element text    name=email
    close browser
Verify the elements with "Id" locator and clear the entered text
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  email      Srinivas
    input password    pass      Sri123
    click button    name=login
    sleep   3
    close browser
Verify the elements with CSS Id locator and clear the entered text
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  css=#email      Srinivas
    sleep   2
    clear element text    css=#email
    sleep   1
    close browser
Verify the elements with CSS tag with Id locator and clear the entered text
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  css=input#email      Srinivas
    sleep   2
    clear element text    css=input#email
    sleep   1
    close browser
Verify the caption of the signin page using CSS and class locator
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    ${text}  get text  css=._8eso
    log to console    ${text}
Verify the caption of the signin page using CSS tagename with class locator
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    ${text}  get text  css=h2._8eso
    log to console  ${text}
Verify the username element using CSS any attribute of the element
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  css=[type='text']      Srinivas
Verify the username element using CSS any attribute of the element with tag
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  css=input[type='text']      Srinivas
Verify the username element using CSS any attribute of the element with id value
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  css=#email[type='text']      Srinivas
Verify the username element using CSS any attribute of the element with tag and id value
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  css=input#email[type='text']      Srinivas
Verify the Searchbar element on flipkart using CSS any attribute of the element with class value
    open browser    https://www.flipkart.com/      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  css=.Pke_EE[name='q']      Srimad Bhagavad Gita
    sleep   2 seconds
Verify the Searchbar element on flipkart using CSS any attribute of the element with class value and tag
    open browser    https://www.flipkart.com/      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  css=input.Pke_EE[name='q']      Srimad Bhagavad Gita
    sleep   2 seconds
Verify the element with using any attribute value with xpath
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  xpath://input[@type='text']      Srinivas
Verify the element with using any two attribute value with xpath and also OR operator
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  xpath://input[@type='text' or id='email']      Srinivas
Verify the element with using any two attribute value with xpath and also AND operator
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  xpath://input[@type='text' and @id='email']      Srinivas
Verify the element with using instead of two attribute name giving * symbol with AND operator
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text  xpath://input[@*='text' and @*='email']      Srinivas
    sleep       2 seconds
Verify the login element with xpath using inner text
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    click button     xpath://button[text()='Log in']
Verify the login element with xpath using partial inner text
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    click button     xpath://button[contains(text(),'Log i')]
    sleep   2 seconds
Verify the username element using xpath with contains keyword and any attribute
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    input text    xpath://input[contains(@name,'emai')]   Srinivas


