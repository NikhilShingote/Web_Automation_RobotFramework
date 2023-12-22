*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]     ${Site_url}     ${Browser_Name}
    Open Browser    ${Site_url}     ${Browser_Name}
    Maximize Browser Window

Enter Username
    [Arguments]     ${Username}
    Input Text    ${txt_loginUsername}    ${Username}


Enter password
    [Arguments]     ${Password}
    Input Text    ${txt_password}    ${Password}
    
Click Sign in
    Click Button    ${btn_signin}

Verify successfull login
    Title Should Be    nopCommerce demo store

close the browsers
    Close All Browsers