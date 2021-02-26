*** Settings ***
Library    SeleniumLibrary

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
    title should be    YouTube

*** Test cases ***
Testcase -1- Open YouTube
    Open Page
    Delay
    Location should be success
    [Teardown]    close browser
