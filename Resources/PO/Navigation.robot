*** Settings ***
Library          SeleniumLibrary


*** Variables ***
${START_URL} =  https://www.saucedemo.com/v1/index.html
${PAGE_TITLE} =  Swag Labs


*** Keywords ***
User Navigates to Required URL
    Go To                      ${START_URL}
    Title Should Be            ${PAGE_TITLE}