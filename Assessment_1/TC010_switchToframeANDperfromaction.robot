*** Settings ***
Library    SeleniumLibrary
Resource   ../Assessment_1/Resource.robot

*** Variables ***
${URL}  https://www.pepperfry.com/
${Browser}  chrome


*** Test Cases ***
Switching to a frame on webpage and performing an action
    Browser Launch  ${URL}    ${Browser}
    wait until element is visible    css=a.close-modal
    click element    css=a.close-modal
    sleep    10 seconds
    scroll element into view    xpath://iframe[@name="goog_topics_frame"]
    select frame    xpath://iframe[@name="goog_topics_frame"]
    ${frame_title}=  get title
    log to console    ${frame_title}
    unselect frame

Get the Iframe WebElements list
    Browser Launch    ${URL}    ${Browser}
    Wait Until Element Is Visible    css=a.close-modal
    Click Element    css=a.close-modal
    Sleep    5 seconds
    ${frames}=    Get WebElements    //iframe
    FOR    ${frame}    IN    @{frames}
        ${name}=    Get Element Attribute    ${frame}    name
        Log To Console    Frame Name: ${name}
    END