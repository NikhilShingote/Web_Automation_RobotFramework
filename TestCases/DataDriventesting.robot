*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Resources.robot

# Executes only once
Suite Setup     open my browser
Suite Teardown      close my browsers

# repeats tests with multiple types of data
Test Template     Invalid Login

*** Test Cases ***      username        password
Correct user Empty Password     admin@yourstore.com         ${EMPTY}
Correct user Wrong Password     admin@yourstore.com         xyz
Incorrect user correct Password     adm@yourstore.com         admin
Incorrect user Empty Password     admgt@yourstore.com         ${EMPTY}
Incorrect user Wrong Password     ain@youstore.com         xyz


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input user name    ${username}
    Input Passwrd     ${password}
    Click Login button
    Error Messsage should be visible