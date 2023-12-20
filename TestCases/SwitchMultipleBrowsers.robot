*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://www.google.com/

*** Test Cases ***
Multiple Windows Test
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window

    Open Browser    https://www.amazon.in/      ${browser}
    Maximize Browser Window
    # Switches to 1st browser
    Switch Browser    1
    ${title}=   Get Title
    Log To Console    ${title}
    # Switches to 2nd browser
    Switch Browser    2
    ${title2}=   Get Title
    Log To Console    ${title2}

    Sleep    3
    Close All Browsers

    