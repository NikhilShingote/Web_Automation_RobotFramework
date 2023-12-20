*** Settings ***
# Imports library
Library   SeleniumLibrary



*** Variables ***
${browser}      chrome
${URL}      https://demo.nopcommerce.com/

*** Test Cases ***

LoginTest
    # Create Webdriver    chrome      executable_path="C:\Drivers\chromedriver.exe"
    # Since we have already stored our chromedriver in scripts folder we dont need to create webdriver here.
    Open Browser    ${URL}      ${browser}
    LoginToApplication
    Close Browser

*** Keywords ***
# We define our own keywords
LoginToApplication
    Click Link    xpath://a[@class='ico-login']
    Input Text    xpath://input[@id='Email']       pavanoltraining@gmail.com
    Input Text    xpath://input[@id='Password']        Test@123
    Click Element    xpath://button[@class='button-1 login-button']