*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Browser_Launch.robot

*** Variables ***


*** Test Cases ***
Launching the browser using userdefined keyword with arguments
    Launching the browser  https://www.pepperfry.com/   chrome
