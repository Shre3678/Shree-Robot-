*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections
Library    Resources/Payload.py
Library    Dialogs


*** Variables ***
${Base_url}     https://thetestingworldapi.com/



*** Test Cases ***
Post request, payload using by extranal user defined keyword
     create session    post_session     ${Base_url}
     ${header}    create dictionary    Content-Type=application/json
     ${load}     read_request_content
     pause execution    confirm the excution      #it give ok option until you click on the dilog box the excution is in sleep
     ${Excutor_name}    get value from user    Enter your name for excution
     ${Response}    post request    post_session   api/studentsDetails    data=${load}    headers=${header}
     log to console    ${Response.status_code}
     ${Statuscode_validation}   convert to string    ${Response.status_code}
     log to console    ${Statuscode_validation}       201
     log to console    ${Response.content}
     ${Json_res}   to json    ${Response.content}
     @{last_name_list}         get value from json    ${Json_res}    last_name
     ${lastname_Validation}   get from list    ${last_name_list}    0  #it should be "Satynarayana"
     should be equal    ${lastname_Validation}      Satynarayana
     log to console    ${Excutor_name}



*** Keywords ***
Fetch request content from json file
    ${content}     read_request_content
    [Return]    ${content}