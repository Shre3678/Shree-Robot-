*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections

*** Variables ***
${Base_URL}     https://thetestingworldapi.com/

*** Test Cases ***
Post Request API TestCase
    Create Session    post_session   ${Base_URL}
    ${Data}     Create Dictionary   first_name=Srinivas   middle_name=Gupta   last_name=Bandari   date_of_birth=03-09-2025
    ${Header}   Create Dictionary   Content-Type=application/json
    ${response}     Post Request    post_session    api/studentsDetails    data=${Data}    headers=${Header}
    Log To Console   ${response.status_code}
    Log To Console   ${response.content}
    #Validations
    ${satus_code}   convert to string    ${response.status_code}
    should be equal     ${satus_code}   201

    ${json_response_conv}      to json    ${response.content}
    log to console    ${json_response_conv}
    @{middel_name}=     get value from json    ${json_response_conv}    middle_name
    ${list}     get from list    ${middel_name}     0
    log to console    ${list}
    should be equal    ${list}      Gupta