*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.automationtesting.in/Register.html

*** Test Cases ***
RegTest
    Open Browser     ${URL}       ${browser}
    Maximize Browser Window
    # Implicit Wait - Waits for element to be visible for specified time
    Set Selenium Implicit Wait    8

    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input    David
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input    Malan
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[2]/div/textarea    I am here
    Input Text    xpath://*[@id="eid"]/input    DMalan@gmail.com

    Select Radio Button    radiooptions    FeMale

    Select Checkbox    Cricket