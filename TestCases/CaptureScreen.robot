*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
CaptureScreen
    Open Browser     ${URL}     ${browser}
    Maximize Browser Window
    sleep   1
    Input Text    xpath://input[@name='username']    Admin
    Input Text    xpath://input[@name='password']    admin123
    Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img     C:/Users/admin/PycharmProjects/Web_Automation_RobotFramework/Logo.png
    Capture Page Screenshot     C:/Users/admin/PycharmProjects/Web_Automation_RobotFramework/ScreenShot.png