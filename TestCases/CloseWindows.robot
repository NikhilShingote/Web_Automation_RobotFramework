*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.automationtesting.in/Register.html

*** Test Cases ***
CloseWindow
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window

    Open Browser    ${URL}      ${browser}
    Maximize Browser Window

    # close browser
    Close All Browsers
