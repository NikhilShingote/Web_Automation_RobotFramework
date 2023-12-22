*** Settings ***



*** Test Cases ***
TC1 User Registration
    [Tags]      Regression
    Log To Console    This is user registration test
    Log To Console    User reg test is over

TC2 Login Test
    [Tags]      Sanity
    Log To Console    This is login test
    Log To Console    login test is over

TC3 Change user setting
    [Tags]      Regression
    Log To Console    This is Change user setting test
    Log To Console    Change user setting test is over

TC4 Logout test
    [Tags]      Sanity
    Log To Console    This is Logout test
    Log To Console    Logout test is over

# For executing multiple tags we can use "robot --include=Sanity TestCases\Tags.robot"
# For executing multiple tags we can use "robot -i Sanity -i Regression TestCases\Tags.robot"
# For excluding certain tags we can use "robot -e Sanity TestCases\Tags.robot"