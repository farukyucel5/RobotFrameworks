*** Settings ***
Library    SeleniumLibrary

*** Variables ***



*** Keywords ***


*** Test Cases ***
test1
    ${num1}    Set Variable    10
    ${num2}    Set Variable    5

    IF  ${num1}>${num2}
        
        Log To Console    ${num1} is greater than ${num2}

        
    END

    IF  ${num1}<${num2}
        Log To Console    ${num1} is less than ${num2}
        
        
    END
    IF  ${num1}==${num2}
        Log To Console    ${num1} is equal to ${num2}
        
    END
    
test2
    ${num1}    Set Variable    10
    ${num2}    Set Variable    10

    IF    ${num1}>${num2}
        Log To Console    ${num1} is greater than ${num2}

    ELSE IF     ${num1}<${num2}
        Log To Console    ${num1} is less than ${num2}


    ELSE
        Log To Console    ${num1} is equal to ${num2}


    END    
               
            


        
        
    