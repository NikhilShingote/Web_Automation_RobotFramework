*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.nopcommerce.com/



*** Test Cases ***
TestingInputBox
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[@class='ico-login']
    ${"email_txt"}      Set Variable    xpath://input[@id='Email']

    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}
    
    Input Text    ${"email_txt"}    abc@gmail.com
    Sleep    5
    Clear Element Text    ${"email_txt"}
    Sleep    2
    Close Browser



*** Keywords ***