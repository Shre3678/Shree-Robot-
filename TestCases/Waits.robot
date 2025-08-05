*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://www.facebook.com/
${Browser_name}     Chrome

*** Test Cases ***
Example of set and get selenium speed    #each line have 2sec wait
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium speed    2 seconds
    ${speed}    get selenium speed
    input text  name=email      Srinivas
    clear element text    name=email
    log to console    ${speed}
    close browser
Example of set and get selenium timeout
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium timeout    10 seconds
    ${speed}    get selenium timeout
    input text  name=emaill      Srinivas
    clear element text    name=email
    log to console    ${speed}
    close browser
Example of wait until page contains keyword     # this wait have defaultly 5sec
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    wait until page contains    Facebook helps you connect and share with the people in your life.
    input text  name=email      Srinivas
    clear element text    name=email
    close browser
Example of Implicit wait        #This wait has a default value of 0 seconds. If the element is found within 2 seconds, the execution proceeds immediately without waiting for the full 4 seconds
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    4 seconds
    ${speed}    get selenium speed
    input text  name=email      Srinivas
    clear element text    name=email
    log to console    ${speed}
    close browser