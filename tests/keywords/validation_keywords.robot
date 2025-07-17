*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Login Success
    Wait Until Element Is Visible    xpath=//a[@class='nav-link']    timeout=5s
    Page Should Contain Element      xpath=//a[@class='nav-link']
