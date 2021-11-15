*** Settings ***
Library            RequestsLibrary
Library            Collections

*** Variables ***
${url}            https://api.pps.dev.skoda-auto.com
${bearerToken}    "Bearer eyJh..."
&{headers}        Authorization=${bearerToken}     Content-Type=application/json

*** Test Cases ***
#Health
#    Create Session                 health                 ${url}
#    ${resp}=                       GET On Session         health     /health
#    Should Be Equal As Strings     ${resp.status_code}    200

System Info
    Create Session                 sys_info               ${url}
    ${resp}=                       GET On Session         sys_info   /maintenance/system-info    headers=${headers}
    Should Be Equal As Strings     ${resp.status_code}    200
    log to console                 ${resp.json()}