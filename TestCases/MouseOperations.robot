*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://demo.guru99.com/test/simple_context_menu.html

*** Test Cases ***
Mouse Operations
    Open Browser    ${URL}      ${browser}
    Maximize Browser Window

    # Right Click
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep   2

    # Double click
    # Double Click Element    xpath://button[@ondblclick='myFunction()']
    # sleep   2
    
    # Drag and Drop
    Go To    https://demo.guru99.com/test/drag_drop.html
    Maximize Browser Window
    Drag And Drop    xpath://a[text()=' 5000 ']    xpath://ol[@id='amt7']
    Sleep    2

    Close Browser