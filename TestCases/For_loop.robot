*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***


*** Test Cases ***
Example for 'for loop' with range  #here we have to follow the case sen
        FOR    ${i}   IN RANGE    1    10
            Log To Console    ${i}
        END
Example for 'for loop' with list
    @{list}     create list    5    6   hai   Hello   9   10
    FOR     ${i}    IN      ${list}
        log to console    ${i}
    END
