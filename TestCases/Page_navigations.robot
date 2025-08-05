*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.facebook.com/
${url_1}    https://www.flipkart.com/
${Browser_name}     Chrome

*** Test Cases ***
Example of "Go To", "Go Back", "Get Location", "Close Browser" Keywords
    open browser    ${url}  ${browser_name}
    maximize browser window
    go to   ${url_1}
    ${second_browser}=    get location
    log to console   ${second_browser}
    go back
    ${first_browser}=   get location
    log to console  ${first_browser}
    close all browsers
Example of excute javascript keyword for scroll down
    open browser    https://thetestingworld.com  ${browser_name}
    maximize browser window
    execute javascript  window.scrollTo(0,1000)
    sleep    5 seconds



