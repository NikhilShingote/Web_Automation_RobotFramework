*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
# Keyword with No Arguments
Launch Browser
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window

# Keyword with Arguments
Launch Browser with Arguments
    [Arguments]     ${AppURL}     ${AppBrowser}
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window

# Keyword with Arguments and Return value
Launch Browser with Arguments and Return value
    [Arguments]     ${AppURL}     ${AppBrowser}
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window
    ${title}=   Get Title
    [Return]    ${title}