*** Settings ***
Documentation    This test will carry out a successful login and a scroll to find a certain element and perform an action on it
Resource         ../../Robot_Demo/Resources/PO/Common.robot
Resource         ../../Robot_Demo/Resources/PO/Login.robot
Resource         ../../Robot_Demo/Resources/PO/Navigation.robot
Resource         ../../Robot_Demo/Resources/PO/Products.robot
Resource         ../../Robot_Demo/Resources/PO/OnesieProduct.robot
Suite Setup      Begin Web Test
Suite Teardown   End Web Test

#Run the script
#robot -d Results Tests/LoginAndScroll.robot
#robot -d Results -i Smoke Tests/LoginAndScroll.robot

*** Test Cases ***
Login and scroll to find Twitter element
    [Tags]                          Full    Smoke
    Given User Navigates to Required URL
    And User Login to our Website
    And Products Page is Loaded
    When User Scrolls to Find Twitter Icon
    Then Verify Twitter Icon is found

Search for Product and Add it to Cart
    [Tags]                          Full
    Given User Search for Product and Clicks on required Product Card
    When Add Product To Cart Button is clicked
    Then Verify Product is Added to Cart