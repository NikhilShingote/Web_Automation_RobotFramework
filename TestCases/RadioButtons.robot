*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.automationtesting.in/Register.html

*** Test Cases ***
TestingRadioButtons
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window
    
    # Selecting radio button
    Select Radio Button    radiooptions    Male
    Select Radio Button    radiooptions    FeMale
    
    # selecting check box
    Select Checkbox    Cricket
    sleep   1
    Unselect Checkbox    Cricket


*** Keywords ***
