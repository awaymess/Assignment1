*** Settings ***
Library    Selenium2Library

*** Variables ***
${browser}    gc
${url}    https://www.youtube.com/
${delay}    0.3


*** Keywords ***
Open Page
    Open Browser    ${url}    ${browser}

Delay
    Set Selenium speed    ${delay}

Location should be success
    Location should be    ${url}
    title should be    youtube

*** Test cases ***
Testcase -1- Open youtube
    Open Page
    Delay
    Location should be success
    [Teardown]    close browser
