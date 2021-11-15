*** Settings ***
Library            RequestsLibrary
Library            Collections
Documentation      https://www.youtube.com/watch?v=BW8bxgkSZHQ

*** Variables ***
${Base_url}         http://thetestingworldapi.com/

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
    Log                            ${resp.status_code}

Get Students
    Create Session                 Get_Student_Details     ${Base_url}
    ${response}=                   GET On Session          Get_Student_Details     api/studentsDetails
    Should Be Equal As Strings     ${response.json()}[0][first_name]    Test2
    log to console                 ${response.status_code}
    #log to console                 ${response.content}
    log to console                 ${response.json()}[0]
    log to console                 ${response.json()}[0][first_name]
    log                            ${response.status_code}