*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${browser}      chrome
${URL}      https://demo.nopcommerce.com/login

*** Test Cases ***
User Keywords
    ${AppTitle}=    Launch Browser with Arguments and Return value    ${URL}    ${browser}
    Log To Console    ${AppTitle}

    # Logs the return value in report.html
    log     ${AppTitle}

    Input Text    xpath://*[@id="Email"]    abc@gmail.com
    Input Text    xpath://input[@id='Password']    abcd1234

# Here we have kept the User defined keywords in Resources directory ----> Resources.robot file
# So we Give Resources file location in Settings