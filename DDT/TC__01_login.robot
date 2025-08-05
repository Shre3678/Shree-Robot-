*** Settings ***
Library     SeleniumLibrary
Resource    ../DDT/User_Keywords.robot

*** Variables ***
${url}  https://www.facebook.com/
${browser_name}     chrome


*** Test Cases ***
Verify the login with mutliple data set
    open browser    ${url}  ${browser_name}
    maximize browser window
    set selenium implicit wait    5 seconds
    ${rows}=     read the number of rows    DemoData
    log to console    ${rows}
    FOR   ${i}     IN RANGE   2     ${rows}+1
       ${username}=    fetch cell data    DemoData     ${i}   1
       ${password}=     fetch cell data    DemoData     ${i}   2           #
       input text    email     ${username}
       input password    pass      ${password}
    END


