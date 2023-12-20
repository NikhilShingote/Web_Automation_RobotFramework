*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://www.google.com/

*** Test Cases ***
NavigationTest
    Open Browser    ${URL}      ${browser}

    # Gives the current url
    ${location}=    Get Location
    Log To Console    ${location}

    Go To    https://www.amazon.in/
    ${location}=    Get Location
    Log To Console    ${location}

    Go Back
    ${location}=    Get Location
    Log To Console    ${location}