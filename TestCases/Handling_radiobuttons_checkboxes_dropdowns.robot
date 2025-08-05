*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://testautomationpractice.blogspot.com/
${Browser_name}     Chrome

*** Test Cases ***
Verify the gender option select the Male (radio button)
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    select radio button    gender    male
Verify the country dropwon from that select the Canada using select from list by value
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    select from list by value    country    canada
Verify the country dropwon from that select the Canada using select from list by index
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    select from list by index    country    1
Verify the country dropwon from that select the Canada using select from list by lable
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    select from list by label    country    Canada
Verify the checkbox of Smartphone from the Pagination web table
    open browser    ${URL}      ${Browser_name}
    maximize browser window
    set selenium implicit wait    2 seconds
    select checkbox    xpath://table[@id="productTable"]/tbody/tr/td[4]/input