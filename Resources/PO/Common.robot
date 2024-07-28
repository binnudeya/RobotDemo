*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${BROWSER} =  chrome

*** Keywords ***
Begin Web Test
    Log                             Starting the test with opening the chrome browser!
    Open Browser                    about:blank    ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser