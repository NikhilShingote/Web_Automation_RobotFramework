*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Login URL}      https://admin-demo.nopcommerce.com/login
${Browser}      chrome


*** Keywords ***
open my browser
    Open Browser    ${Login URL}    ${Browser}
    Maximize Browser Window

close my browsers
    Close All Browsers

open login page
    Go To    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

Input user name
    [Arguments]     ${username}
    Input Text    id:Email    ${username}

Input Passwrd
    [Arguments]     ${password}
    Input Text    id:Password    ${password}

Click Login button
    Click Element    xpath://button[@type='submit']

Click Logout
    Click Link    Logout

Error Messsage should be visible
    Page Should Contain    Login was unsuccessful
    
Dashboard page should be visible
    Page Should Contain    Dashboard