*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Library     DataDriver      ../TestData/Test_data_robot_framework.xlsx
Suite Setup     open my browser
Suite Teardown      close my browsers
Test Template     Invalid Login

*** Test Cases ***
Login test with excel using ${username} and ${password}


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input user name    ${username}
    Input Passwrd     ${password}
    Click Login button
    Error Messsage should be visible