*** Settings ***

Library     RequestsLibrary

*** Variables ***
${BASE_URL}    https://moviesdatabase.p.rapidapi.com/titles
${HEADERS}    X-RapidAPI-Key:a5ca3d194amsh41bb2e6942dc7efp1df0c0jsnbe098d73a5eb    X-RapidAPI-Host:moviesdatabase.p.rapidapi.com

*** Test Cases ***
Test API Request
    Create Session    movies    ${BASE_URL}
    &{headers}    Create Dictionary    X-RapidAPI-Key    a5ca3d194amsh41bb2e6942dc7efp1df0c0jsnbe098d73a5eb    X-RapidAPI-Host    moviesdatabase.p.rapidapi.com
    ${response}    GET On Session    movies    /    headers=${headers}    verify=${True}
    Should Be Equal    ${response.status_code}    200
    Log    Response: ${response.text}

*** Keywords ***
Should Be Equal
    [Arguments]    ${actual}    ${expected}
    Should Be Equal As Integers    ${actual}    ${expected}