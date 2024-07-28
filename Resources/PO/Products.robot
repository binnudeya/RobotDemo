*** Settings ***
Library          SeleniumLibrary


*** Variables ***
${PRODUCTS_PAGE_HEADING_LOCATOR} =  xpath=/html[1]/body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]/div[1]
${TWITTER_ICON_LOCATOR} =  xpath=/html[1]/body[1]/footer[1]/ul[1]/li[1]
${ONESIE_PRODUCT_LOCATOR} =  xpath=/html[1]/body[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/div[5]/div[2]/a[1]/div[1]


*** Keywords ***
Products Page is Loaded
    Log                                 Products screen is displayed!
    Wait Until Element Is Visible       ${PRODUCTS_PAGE_HEADING_LOCATOR}

User Scrolls to Find Twitter Icon
     Log                                Scroll to see social links aka twitter as an example!
     Scroll Element Into View           ${TWITTER_ICON_LOCATOR}

Verify Twitter Icon is found
     Wait Until Element Is Visible      ${TWITTER_ICON_LOCATOR}

User Search for Product and Clicks on required Product Card
     Log                                Find Sauce Labs Onesie card and Go to Product Page!
     Click Element                      ${ONESIE_PRODUCT_LOCATOR}