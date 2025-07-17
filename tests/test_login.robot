*** Settings ***
Library           SeleniumLibrary
Resource          keywords/browser_keywords.robot
Resource          keywords/login_keywords.robot
Resource          keywords/validation_keywords.robot

Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser

*** Test Cases ***
Successful Login and Logout Test
    Login With Valid Credentials
    Verify Login Success
    Logout From Application
