*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Register_Keywords.robot

*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com/register

*** Test Cases ***
Registration Test
    Open The Browser    ${url}    ${browser}
    Enter Firstname    Ramesh
    Enter LastName    Patil
    Enter Email    abcd@rediffmail.com
    Enter password    abcd12345
    Enter Confirm password    abcd12345
    ClickRegister
    Verify successfull Registration
    close the browsers


