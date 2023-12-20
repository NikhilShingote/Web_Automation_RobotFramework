*** Variables ***
@{List}=    Ram     rick    mick    john    chris
@{Items}=   1   2   3   4   5
*** Tasks ***
For Loop
    FOR     ${i}    IN RANGE   1   10
        log to console      ${i}
    END

For Loop2
    FOR     ${i}    IN   1 2 3 4 5 6 7 8 9 10       # Single space prints the items in a single line
        log to console      ${i}
    END

For loop3
    FOR    ${f}    IN    @{List}            # Double space between list items prints in next line
        Log To Console    ${f}
    END

For loop4
    FOR    ${c}    IN    @{Items}
        Log To Console    ${c}
        Exit For Loop If    ${c}==4
    END