*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
Scrolling Test
    Open Browser     ${URL}     ${browser}
    Maximize Browser Window

    ${All Links Count}=     Get Element Count    xpath://a
    Log To Console    ${All Links Count}

    # @{Link Items}   Create List

    FOR    ${i}    IN RANGE   1     ${All Links Count}+1
        ${Link Text}=       Get Text    xpath:(//a)[${i}]
        Log To Console    ${Link Text}

    END