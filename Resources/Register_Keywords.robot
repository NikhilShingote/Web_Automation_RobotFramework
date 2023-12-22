*** Settings ***
Library     SeleniumLibrary
Variables       ../PageObjects/Locators.py


*** Keywords ***
Open The Browser
    [Arguments]     ${Site_url}     ${Browser_Name}
    Open Browser    ${Site_url}     ${Browser_Name}
    Maximize Browser Window

Enter Firstname
    [Arguments]     ${FirstName}
    Input Text    ${txt_Firstname}    ${FirstName}

Enter LastName
    [Arguments]     ${LastName}
    Input Text    ${txt_Lastname}    ${LastName}

Enter Email
    [Arguments]     ${Email}
    Input Text    ${txt_Email}    ${Email}

Enter password
    [Arguments]     ${PassW}
    Input Text    ${txt_Password}    ${PassW}

Enter Confirm password
    [Arguments]     ${ConfirmPassW}
    Input Text    ${txt_Confirm_password}    ${ConfirmPassW}

ClickRegister
    Click Button    ${Button_Register}

Verify successfull Registration
    Page Should Contain     Your registration completed

close the browsers
    Close All Browsers