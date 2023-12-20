*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.automationtesting.in/Windows.html

*** Test Cases ***
Tabbed Windows Test
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window
    Click Link    xpath://a[@href='http://www.selenium.dev']
    Switch Window       title=Selenium
    Click Element    xpath://a[@href='/downloads']
    Sleep    3
    Close All Browsers