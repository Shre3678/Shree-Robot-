*** Settings ***
Library    RequestsLibrary
*** Variables ***
${Base_URL}    https://thetestingworldapi.com/

*** Test Cases ***
Gets the student details
    create session    SN_get_student_details    ${Base_URL}
    ${response}    get request    SN_get_student_details    api/studentsDetails
    Log To Console    ${response.status_code}
    Log To Console    ${response.text}
