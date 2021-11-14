*** Settings ***
Library            REST          https://jsonplaceholder.typicode.com
Documentation      Je potreba nainstalovat knihovnu "pip install --upgrade RESTinstance"

*** Variables ***
${json}    { "id": 11, "name": "Gil Alexander" }
&{dict}    name=Julie Langford
