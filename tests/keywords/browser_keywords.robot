*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***
${URL}         https://robotsparebinindustries.com
${BROWSER}     Chrome

*** Keywords ***
Open Browser To Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-gpu
    Create Webdriver    Chrome    options=${options}
    Go To    ${URL}
    Maximize Browser Window
