*** Settings ***
Library          SeleniumLibrary


*** Variables ***
${PRODUCT_NAME_LOCATOR} =  xpath=/html[1]/body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]
${ADD_TO_CART_BUTTON_LOCATOR} =  xpath=/html[1]/body[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/button[1]
${CARD_NOTIFICATION_LOCATOR} =  xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[2]/a[1]/span[1]


*** Keywords ***
Add Product To Cart Button is clicked
    Wait Until Element Is Visible   ${PRODUCT_NAME_LOCATOR}
    Click Button                    ${ADD_TO_CART_BUTTON_LOCATOR}

Verify Product is Added to Cart
    Wait Until Element Is Visible   ${CARD_NOTIFICATION_LOCATOR}