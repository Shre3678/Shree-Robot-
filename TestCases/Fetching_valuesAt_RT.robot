*** Settings ***
Library    SeleniumLibrary
Resource    ..//Resources//Browser_Launch.robot


*** Variables ***
${url}  https://testautomationpractice.blogspot.com/
${b_Name}   chrome


*** Test Cases ***
Fetch the attribute value of element
    open browser    ${url}  ${b_Name}
    maximize browser window
    ${value}=     get value    male
Fetch the Page Title and speed and text of "point me" button
    Launching the browser       ${url}  ${b_Name}
    ${title}    get title
    log     ${title}
    ${speed}    get selenium speed
    log     ${speed}
    ${text}     get text    xpath://button[.='Point Me']
    log    ${text}
Fetch selected value in country dropdown
     Launching the browser       ${url}  ${b_Name}
     select from list by label      country        Canada
     ${label}   get selected list label    country
     log    ${label}
     ${value}    get selected list value    country
     log    ${value}
     ${items}       get list items      country
     log    ${items}
Count the element class="form-group"
      Launching the browser       ${url}  ${b_Name}
      ${countofclass}   get element count     class:form-group
      log   ${countofclass}
      ${fetch_class}   get element attribute    name     class
      log   ${fetch_class}
Fetch url of page
      Launching the browser       ${url}  ${b_Name}
      ${page_url}   get location
      log   ${page_url}
Fetch the page source
       Launching the browser       ${url}  ${b_Name}
       ${page}  get source
       log  ${page}