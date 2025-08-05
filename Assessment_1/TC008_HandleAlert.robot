*** Settings ***
Library    SeleniumLibrary
Resource   ../Assessment_1/Resource.robot

*** Variables ***
${URL}  https://www.pepperfry.com/
${Browser}  chrome


*** Test Cases ***
handle alerts
    Browser Launch  ${URL}    ${Browser}
    wait until element is visible    css=a.close-modal
    click element    css=a.close-modal
    input text    search    1-seater-sofas
    PRESS KEYS    search     ENTER
    click element    //img[@title="Melaka 1 Seater Sofa In Brown"]
    switch window       Buy Melaka 1 Seater Sofa In Brown at 59% OFF by Royaloak | Pepperfry
    ${title}    get title
    log to console    ${title}
    element should be enabled    search
    execute javascript    window.scrollTo(0,500)
    wait until element is visible    css=span.pincode-locate-txt.text-md.color-orange.font-bold
    mouse over    css=span.pincode-locate-txt.text-md.color-orange.font-bold
    double click element    css=span.pincode-locate-txt.text-md.color-orange.font-bold
    sleep   3 seconds