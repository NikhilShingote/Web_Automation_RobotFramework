*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${URL}      https://www.countries-ofthe-world.com/flags-of-the-world.html

*** Test Cases ***
Scrolling Test
    Open Browser     ${URL}     ${browser}
    Maximize Browser Window
    Sleep    1
    # Execute Javascript      window.scrollTo(0,2500)          # Horizonatal and vertical scroll
    # Sleep    1
    # Scroll Element Into View    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[77]/td[1]/img

    # Goes to bottom of page
    Execute Javascript      window.scrollTo(0,document.body.scrollHeight)
    Sleep    1

    # Goes to starting point
    Execute Javascript      window.scrollTo(0,-document.body.scrollHeight)
    Sleep    1
