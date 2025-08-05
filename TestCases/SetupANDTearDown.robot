*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Browser_Launch.robot
Test Setup    Launching the browser   ${URL}  chrome
Test Teardown    Close my Browser
Suite Setup    log      hello Automati
Suite Teardown    log       Thanks for doing
Default Tags        Level-1 Cases           #this tag will come which test cases have no tags
Force Tags    login_page cases              #this tag will come for all the test cases
*** Variables ***
${URL}  https://www.facebook.com/

*** Test Cases ***
Verify user log in with incorrect username and valid password
    [Tags]          smoke
    input text      email            Srinivas@gmail.com
    input text      pass        Shre@098
    click button        login
    element should not be visible    xpath://a[.='Create new account']
Verify user log in with correct username and Invalid password
    input text      email            Srinivas438@gmail.com
    input text      pass        Shre@0981
    click button        login
    element should not be visible    xpath://a[.='Create new account']
Verify user log in with correct username and valid password
    [Tags]              smoke   regression
    input text      email            Srinivas438@gmail.com
    input text      pass        Shre@098
    click button        login
    element should not be visible    xpath://a[.='Create new account']
    Verify user log in page fields are enable or not like user name and password and login, create new account button
*** Keywords ***
Verify user log in page fields are enable or not like user name and password and login, create new account button
    [Tags]              smoke   regression  Sanity
    element should be enabled      email
    element should be enabled      pass
    element should be enabled        login
    element should be enabled    xpath://a[.='Create new account']










