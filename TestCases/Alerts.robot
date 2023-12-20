*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.automationtesting.in/Alerts.html

*** Test Cases ***
HandlingAlerts
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window
    Click Element    xpath://a[@href='#CancelTab']
    Click Element    xpath://button[@class='btn btn-primary']
    Sleep    3
    # Handle Alert    accept            # Using OK button
    # Handle Alert    dismiss            # Using CANCEL button
    # # Handle Alert    leave            # Leaves alert window on page

    # Verify text in alert window
    Alert Should Be Present     Press a Button !
    # Alert Should Not Be Present       Press a Button !
