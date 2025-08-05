*** Settings ***
Library    SeleniumLibrary
Library    ../Assessment_1/ExtranalKeys.py
Resource   ../Assessment_1/Resource.robot

*** Variables ***
${URL}  https://www.pepperfry.com/
${Browser}  chrome


*** Test Cases ***
Importing and using library case
    Browser Launch  ${URL}    ${Browser}
    wait until element is visible    css=a.close-modal
    click element    css=a.close-modal
    ${rows}=  Read number of rows    Items
    FOR     ${i}    IN RANGE     2  ${rows}+1
        ${Item}=    Read cell data    Items     ${i}    1
        input text    search    ${Item}
        press keys    search     ENTER
        sleep    2 seconds
        page should contain    ${Item}
    END

*** Keywords ***
Read number of rows
    [Arguments]         ${Sheetname}
    ${max_rows}=    fetch_total_rows  ${Sheetname}
    [Return]    ${max_rows}
Read cell data
    [Arguments]    ${Sheetname}    ${row}      ${cell}
    ${cell_data}=    fetch_cell_datas     ${Sheetname}    ${row}      ${cell}
    [Return]    ${cell_data}





