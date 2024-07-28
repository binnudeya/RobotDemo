*** Settings ***
Library          SeleniumLibrary


*** Variables ***
${USER_NAME_LOCATOR} =  id=user-name
${PASSWORD_LOCATOR} =  id=password
${LOGIN_BUTTON_LOCATOR} =  id=login-button
${USER_NAME} =  standard_user
${PASSWORD} =  secret_sauce


*** Keywords ***
User Login to our Website
    Log                Login with username and password!
    Input Text         ${USER_NAME_LOCATOR}    ${USER_NAME}
    Input Password     ${PASSWORD_LOCATOR}   ${PASSWORD}
    Click Button       ${LOGIN_BUTTON_LOCATOR}