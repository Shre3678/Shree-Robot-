*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections

*** Variables ***
${Base_URL}     https://thetestingworldapi.com/
${id}       10662770

*** Test Cases ***
Put Request API TestCase updating date of birth
    create session    put_session       ${Base_URL}
    ${Payload}   create dictionary   id=10662770     first_name=Srinivas   middle_name=Gupta   last_name=Bandari   date_of_birth=03-09-2024     # previous value date_of_birth=03-09-2025
    ${header}   create dictionary    Content-Type=application/json
    ${response}     put request    put_session  api/studentsDetails/${id}   data=${Payload}     headers=${header}
    log to console    ${response.status_code}
    log to console    ${response.content}
    # checking the data is updated or not with get request
    ${10662770_data}     get request    put_session      api/studentsDetails/${id}
    log to console    ${10662770_data.content}
