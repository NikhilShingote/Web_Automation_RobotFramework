*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.automationtesting.in/Frames.html

*** Test Cases ***
Testing Frames
    Open Browser    ${URL}      ${browser}
    Click Link     xpath://li/a[@href='#Multiple']
    Sleep    2
    Select Frame      xpath://*[@id="Multiple"]/iframe
    # Unselect Frame - Only use it when 1 frame is not inside other frame
    Select Frame      xpath://iframe[@src='SingleFrame.html']
    Input Text    xpath://input[@type='text']       i am here finally!
    # Unselect Frame

    Close Browser