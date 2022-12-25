*** Settings ***
Library     Collections


*** Test Cases ***
Kolleksiyonlar
    ${stafs list}    Create List
    Append To List    ${stafs list}    Yusuf    Barbaros    Salim    Hakan    Ömer    Resul    Mehmet    Yusuf

    ${i}    Set Variable    0

    WHILE    ${i} <= 10
        Log To Console    while ile yazdirildi ${i}

        ${i}    Evaluate    ${i}+1
    END

    ${i}    Set Variable    0

    ${length}    Get Length    ${stafs list}

    WHILE    ${i}<${length}
        Log To Console    ${stafs list}[${i}]

        ${i}    Evaluate    ${i}+1
    END

    ${counts of elements}    Count Values In List    ${stafs list}    Yusuf
    Log To Console    there are ${counts of elements} Yusuf in the list

    ${counts of elements}    Count Values In List    ${stafs list}    Faruk
    Log To Console    there are ${counts of elements} Faruk in the list

