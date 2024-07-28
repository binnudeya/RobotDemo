# RobotDemo

## Project Overview:
This project demonstrates test automation of an e-commerce website using Robot Framework, Gherkin syntax, and the Page Object Model (POM) design pattern. The test cases cover login, scrolling, product search, and adding a product to the cart.

## Prerequisites:
- Python and pip installed
- Robot Framework installed: pip install robotframework
- SeleniumLibrary installed: pip install robotframework-seleniumlibrary

## Project Structure:
- Resources: Page Objects of each page seperated where their corrosponding keywords, variables and importing of the Selenium Library. With a Common page object where web broswer setup and tear down is located.
- Results: A directory that should be utilized when running the scripts to contain the reports and screenshots relating to runs
- Tests: Contains Robot Framework test cases calling Gherkin syntax aka keywords and features. Where each test can have their own tags as well

## Running Tests:
To run the scripts, user needs to have all pre-requisites installed and using an IDE of their choice (PYCHARM was used by this creator), to execute following command:

    robot -d Results Tests/LoginAndScroll.robot

And to run some tests with a specific tag such as Smoke, then use the following command:

    robot -d Results -i Smoke Tests/LoginAndScroll.robot

## Reports:
To view reports of latest run, then go to the Results directory and open the html/xml file you need to view in browser.
Example:

<img width="1419" alt="image" src="https://github.com/user-attachments/assets/96e1e9ce-103d-40ff-a79f-f0e6d9f18831">

