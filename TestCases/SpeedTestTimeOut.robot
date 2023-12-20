*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.automationtesting.in/Register.html

*** Test Cases ***
RegTest
    Open Browser     ${URL}       ${browser}
    Maximize Browser Window
    # To sepcify specific time till condition satisfies
    Set Selenium Timeout    7
    Wait Until Page Contains    Registeraer    # default time will wait for 5 secs till condition satisfies
    Select Radio Button    radiooptions    FeMale

    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input    David
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input    Malan
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[2]/div/textarea    I am here
    Input Text    xpath://*[@id="eid"]/input    DMalan@gmail.com
    Select Checkbox    Cricket