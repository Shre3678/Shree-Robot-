*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections



*** Variables ***
${Base_url}     https://thetestingworldapi.com/
${Student_id}       10662702


*** Test Cases ***
Validating the status code and firstname
    create session    SN_SC_FN      ${Base_url}
    ${Response}     get request    SN_SC_FN     api/studentsDetails/${Student_id}
    ${Str_fromate_conv_value}   convert to string  ${Response.status_code}
    should be equal    ${Str_fromate_conv_value}       200
    log to console     ${Str_fromate_conv_value}

    ${Json_res}    to json  ${Response.content}
    log to console    ${Json_res}
    @{First_name_list}      get value from json     ${Json_res}     data.first_name
    ${First_name}   get from list   ${First_name_list}   0
    log to console      ${First_name}
    should be equal    ${First_name}    sample string 2
    @{Date_of_birth}     get value from json     ${Json_res}    data.date_of_birth
    ${DOB}      get from list       ${Date_of_birth}    0
    log to console    ${DOB}
    should be equal    ${DOB}       sample string 5
    #should be equal    ${DOB}       sample string 4     # for negative case: sample string 5 != sample string 4