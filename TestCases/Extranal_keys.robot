*** Settings ***
Library     SeleniumLibrary
Library    ..//Extranal_Keywords//FirstKey.py

*** Test Cases ***
Create the folder with extranal key
    create the folder (pass function name as keyword)   Cog
Make the user name with email and password field with extranal keyword
    Username      Sri123        Shre$345

*** Keywords ***
create the folder (pass function name as keyword)
    [Arguments]     ${Folder_name}
    second      ${Folder_name}     #here "sencond" is extranl keyword with argument
Username
    [Arguments]     ${email}    ${Password}
    ${UserName}=     cocatenate    ${email}      ${Password}
    log     ${UserName}
