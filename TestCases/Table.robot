*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${URL}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
Table Validations
    Open Browser     ${URL}     ${browser}
    Maximize Browser Window

    ${rows}=    Get Element Count    xpath://table[@name='BookTable']//tr
    ${columns}=    Get Element Count    xpath://table[@name='BookTable']//tr/th

    Log To Console    ${rows}
    Log To Console    ${columns}
    
    ${data}=    Get Text    xpath://table[@name='BookTable']//tr[4]/td[1]
    Log To Console    ${data}

    # Verify
    Table Column Should Contain    xpath://table[@name='BookTable']    2    Author
    Table Row Should Contain    xpath://table[@name='BookTable']    4    Learn JS
    Table Cell Should Contain    xpath://table[@name='BookTable']    5    2    Mukesh
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName