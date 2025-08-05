*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Store keyword to a varibale
    ${Key}=     set variable    log to console
    run keyword     ${Key}      Hi Srinivas
Conditionally excute the keyword(run keyword if)
    ${Variable}=           set variable    no
    run keyword if      '${Variable}'=='no'     log to console    hey
    run keyword if      '${Variable}'=='yes'    log to console  hi

