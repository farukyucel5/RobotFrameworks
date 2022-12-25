*** Settings ***
Library     Collections


*** Test Cases ***
Koleksiyonlar
    ${names}    Create List
    Append To List    ${names}    faruk    harun    ayse    ahmet

    Log To Console    ${names}

    ${e}    Get From List    ${names}    0
    Log To Console    ${e}

    Remove From List    ${names}    0

    Log To Console    ${names}

    Remove Values From List    ${names}    harun

    Log To Console    ${names}

    #bir elemanin listede olup olmadigini test eder
    List Should Contain Value    ${names}    ayse

    Set List Value    ${names}    1    ismail

    Log To Console    ${names}

For loops
    ${new list}    Create List

    Append To List    ${new list}    apple    pineapple    blueberry    grapes    quince    pear

    Log To Console    ${new list}[2]

    FOR    ${each}    IN    ${new list}
        Log To Console    elements: ${each}
    END

    FOR    ${each}    IN    @{new list}
        Log To Console    elements: ${each}
    END

    FOR    ${each}    IN    @{new list}
        Log To Console    elements: ${each}

        IF    '${each}' == 'blueberry'    BREAK
    END

integers for loop
    ${integers}    Create List
    Append To List    ${integers}    1    2    3    4    5    6    7    8    9

    FOR    ${ints}    IN    @{integers}
        IF    ${ints}>=3
            Log To Console    ${ints} is greater than or equal to 3
        ELSE
            Log To Console    ${ints} is less than 3
        END
    END

range method
# IN RANGE num=it produces number between 0 and number but the upper limit is excluded
# IN RANGE NUM1 NUM2    it produces number between num1 and num2 but num2 is excluded
    FOR    ${num}    IN RANGE    100
        Log To Console    ${num}
    END

