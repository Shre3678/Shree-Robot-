*** Settings ***
Library     SeleniumLibrary
Library    ../Extranal_Keywords/Read_Data.py



*** Keywords ***
Read the number of rows
    [Arguments]         ${Sheetname}
    ${max_rows}=    fetch_countof_rows  ${Sheetname}
    [Return]    ${max_rows}
Read the cell data
    [Arguments]    ${Sheetname}    ${row}      ${cell}
    ${cell_data}=    fetch_cell_data     ${Sheetname}    ${row}      ${cell}
    [Return]    ${cell_data}
