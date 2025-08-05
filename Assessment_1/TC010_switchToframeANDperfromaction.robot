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
