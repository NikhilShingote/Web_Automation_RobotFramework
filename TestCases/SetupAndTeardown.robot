*** Settings ***

Suite Setup     Log To Console    Opening Browser
Suite Teardown      Log To Console    Closing Browser

Test Setup      Log To Console    Loging to app
Test Teardown       Log To Console    Logout from app


*** Test Cases ***
TC1 Prepaid recharge
    Log To Console    This is prepaid recharge testcase

TC2 Postpaid Recharge
    Log To Console    This is Postpaid recharge testcase

TC3 Search
    Log To Console    This is Search testcase

TC4 Advanced search
    Log To Console    This is Advanced search testcase