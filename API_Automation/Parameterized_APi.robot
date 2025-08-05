*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    Collections

*** Variables ***
${Url}  https://reqres.in/


*** Test Cases ***
Verifying the first_name using parameterized api
    create session    parameterized_api_session     ${url}
    &{param}    create dictionary    page=2
    ${res}  get request    parameterized_api_session    /api/users     params=${param}
       log to console    ${res}
    #for validation for status code
    ${Conv_str}     convert to string    ${res.status_code}
    log to console    ${Conv_str}
    ${res_json}     to json    ${res.content}
    @{name_list}     get value from json    ${res_json}      data[0].first_name
    ${firstname}    get from list    ${name_list}   0
    log to console    ${firstname}
    should be equal    ${firstname}     Michael
    #should be equal    ${firstname}   abc       #negative
Verify the avator value
    create session    parameterized_api_session     ${url}
    &{param}    create dictionary    page=2
    ${res}  get request    parameterized_api_session    /api/users     params=${param}
    log to console    ${res}
    ${Conv_str}     convert to string    ${res.status_code}

    log to console    ${Conv_str}
    ${res_json}     to json    ${res.content}
    @{list}     get value from json    ${res_json}      data[0].avatar
    ${avatar}    get from list    ${list}   0
    log to console    ${avatar}
    should be equal    ${avatar}     https://reqres.in/img/faces/7-image.jpg
