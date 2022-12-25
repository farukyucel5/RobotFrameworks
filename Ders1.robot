*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Keywords ***


*** Test Cases ***
this is my first scenario
    Log To Console    hello robot framework!!
    ${name}    Set Variable    faruk
    Log To Console    my name :${name}

    ${num1}    Set Variable    10
    ${num2}    Set Variable    5
    ${result}  Evaluate    ${num1}+${num2}

    Log To Console    The result :${result}
    

   




