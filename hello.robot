*** Settings ***
Library    CustomKeyword.py
Library    CustomContextMethod.py

*** Test Cases ***
TestCase1
    Log    Hello World
    Log    Nazdar

TestRepeat
     Repeat Keyword    5 times   Log    Nazdar svete

TestCustomKeyword
    showTest

TestCustomKeywordFail
    failTest    

TextCustomContext
    testContext