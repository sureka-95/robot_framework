*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USERNAME}    maria
${PASSWORD}    thoushallnotpass

*** Keywords ***
Login With Valid Credentials
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Wait Until Element Is Visible    xpath=//button[@type='submit']    timeout=5s
    Scroll Element Into View         xpath=//button[@type='submit']
    Click Element                    xpath=//button[@type='submit']


Logout From Application
    Wait Until Element Is Visible    id=logout    timeout=5s
    Click Element    id=logout
