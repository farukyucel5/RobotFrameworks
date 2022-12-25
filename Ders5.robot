*** Settings ***
Library     Collections


*** Test Cases ***
Test01
    Print Something
    Summation
    method with parameter    this is the first method with parameter that I have ever created
    summation2    10    23
    print list    1    2    3    4    6


*** Keywords ***
Print Something
    Log To Console    Hello World

Summation
    ${num1}    Set Variable    10
    ${num2}    Set Variable    5
    ${sum}    Evaluate    ${num1}+${num2}
    Log To Console    The sum of the numbers above: ${sum}

method with parameter
    [Arguments]    ${script}
    Log To Console    ${script}

summation2
    [Arguments]    ${num1}    ${num2}
    ${sum}    Evaluate    ${num1}+${num2}
    Log To Console    The sum of the numbers above: ${sum}

print list
    [Arguments]    @{liste}

    FOR    ${e}    IN    @{liste}
        Log To Console    ${e}
    END

