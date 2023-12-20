*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.automationtesting.in/Register.html

*** Test Cases ***
HandlngDropdownsAndListBoxes
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window

    # Dropdowns
    Select From List By Label    Skills    CSS
    Sleep    4
    Select From List By Index    Skills    2
    sleep    3
    Select From List By Value    Skills     Analytics

    # List Box

*** Keywords ***