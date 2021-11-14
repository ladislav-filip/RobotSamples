*** Settings ***
Library            RequestsLibrary
Library            Collections

*** Test Cases ***
Quick
    ${response}=        GET    https://www.google.com
    Status Should Be    200

Quick Get A JSON Body Test
    ${response}=                    GET     https://jsonplaceholder.typicode.com/posts/1
    Should Be Equal As Strings      1       ${response.json()}[id]

Grab Avatar Url
    Create Session                 github          https://api.github.com
    ${resp}=                       GET On Session     github    /users/jandias
    Should Be Equal As Strings     ${resp.status_code}  200
    Dictionary Should Contain Key  ${resp.json()}       avatar_url