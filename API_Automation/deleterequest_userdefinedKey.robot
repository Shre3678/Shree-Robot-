*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections

*** Variables ***
${Base_URL}     https://thetestingworldapi.com/

*** Test Cases ***
Post after delete API TestCase
    Create Session    post_session   ${Base_URL}
    ${Data}     Create Dictionary   first_name=Sai   middle_name=Krishna   last_name=d   date_of_birth=03-09-2000
    ${Header}   Create Dictionary   Content-Type=application/json
    ${response}     Post Request    post_session    api/studentsDetails    data=${Data}    headers=${Header}
    Log To Console   ${response.status_code}
    Log To Console   ${response.content}
    ${Json_response}    to json    ${response.content}
    @{list_res}     get value from json    ${Json_response}     id
    ${id}       get from list   ${list_res}     0
    log to console    ${id}
    Deletinng resource     ${id}
*** Keywords ***
Deletinng resource
    [Arguments]     ${Stud_id}
    ${res}  delete request    post_session    api/studentsDetails/${Stud_id}
    log to console    ${res.status_code}
    ${res.conv}     convert to string    ${res.status_code}
    should be equal    ${res.conv}      200
    log to console    ${res.content}
