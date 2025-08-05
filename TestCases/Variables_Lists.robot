*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***



*** Test Cases ***
Defining the Varibales
    ${Varibale_name}    set variable    Greetings
    log to console  ${Varibale_name}
Defining the list    #for list we need to import collection library because the list coming from there
    @{list}     create list    5    9   sri     hai     hello1234   45.7
    log to console    ${list}
Get the length of list
    @{list}     create list    5    9   sri     hai     hello1234       45.7
    ${length_of_list}=   get length    ${list}
    log to console     ${length_of_list}
Get the value from the list like hai
    @{list}     create list    5    9   sri     hai     hello1234       45.7
    ${length_of_list}=  get from list    ${list}    3
    log to console     ${length_of_list}
