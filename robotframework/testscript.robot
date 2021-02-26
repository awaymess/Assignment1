*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    gc
${url}    https://www.google.co.th/
${delay}    0.2


*** Keywords ***
Open Page
    Open Browser    ${url}    ${browser}

Delay
    Set Selenium speed    ${delay}

Location should be success
    Location should be    ${url}
    title should be    Google

*** Test cases ***
Testcase -1- Open Google
    Open Page
    Delay
    Location should be success
    [Teardown]    close browser


