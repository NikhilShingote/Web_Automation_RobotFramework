*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.automationtesting.in/Register.html

*** Test Cases ***
RegTest
    # Gives default seleniumtime to execute script
    ${speed}=   Get Selenium Speed
    Log To Console    ${speed}
    Open Browser     ${URL}       ${browser}
    Maximize Browser Window
    Set Selenium Speed    1         # Speed Applicable for all the statements
    Select Radio Button    radiooptions    Male
    Select Radio Button    radiooptions    FeMale
    
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input    David
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input    Malan
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[2]/div/textarea    I am here
    Input Text    xpath://*[@id="eid"]/input    DMalan@gmail.com
    Select Checkbox    Cricket
    ${speed}=   Get Selenium Speed
    Log To Console    ${speed}