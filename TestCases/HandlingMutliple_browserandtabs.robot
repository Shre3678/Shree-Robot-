*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url_1}  https://testautomationpractice.blogspot.com/
${url_2}      https://www.facebook.com/
${Browser_name}     Chrome

*** Test Cases ***
Example of browsers handling with two browsers
    [Documentation]     I'm shifting one browser to another browser after verifing the element is visible
    open browser    ${url_1}  ${browser_name}
    maximize browser window
    open browser    ${url_2}    ${browser_name}
    maximize browser window
    switch browser  1
    element should be visible   name    #name element
    switch browser    2
    element should be visible    email  #email address OR phone number element
    close all browsers
Example of mutliple tabs in the single browser winow using title page (make sure the title has to static)
    [Documentation]    I'm shifting to second tab and get the title of page in seconds tab using its title and after get the url of the link using "get location" keyword
    open browser    ${url_1}    ${browser_name}
    maximize browser window
    set selenium implicit wait    5 seconds
    click button    xpath://button[.='New Tab']     #clicking on the new tab button
    switch window   SDET-QA Blog
    ${title_of_secondstab}=  get location
    log     ${title_of_secondstab}
Example of mutliple tabs in the single browser winow using (get windows handles keyword) make sure the title has to dynamic
    open browser    ${url_1}    ${browser_name}
    maximize browser window
    set selenium implicit wait    5 seconds
    click button    xpath://button[.='New Tab']     #clicking on the new tab button
    @{listofuniqueidentyofwindow}=   get window handles
    log to console    ${listofuniqueidentyofwindow}
    FOR     ${windows}    IN        @{listofuniqueidentyofwindow}
            switch window    ${windows}
            ${titles}=      get title
            log    ${titles}        # it gives the title of two tabs
    END



