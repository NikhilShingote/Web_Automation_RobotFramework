*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com/login
${user}     abcd@gmail.com
${passwrd}      abcd1234

*** Test Cases ***
Login_Test
    Open my browser    ${url}    ${browser}
    Enter Username    ${user}
    Enter password    ${passwrd}
    Click Sign in
    Sleep    2
    Verify successfull login
    Sleep    3
    close the browsers


