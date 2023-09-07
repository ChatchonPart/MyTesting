*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}      http://the-internet.herokuapp.com/login

  
*** Test Cases ***
Test1 Login success
#Open the-internet.herokuapp.com
    Open Browser   ${URL}     ${BROWSER}
#Login
    Wait Until Element Is Visible       //input[@id='username']
    Input Text      //input[@id='username']     tomsmith
    Wait Until Element Is Visible       //input[@id='password']
    Input Text      //input[@id='password']     SuperSecretPassword!    
    Wait Until Element Is Visible       //i[contains(text(),'Login')]
    Click Element   //i[contains(text(),'Login')]

#Secure Area
    Wait Until Element Is Visible       //i[contains(text(),'Logout')]
    Click Element    //i[contains(text(),'Logout')]
    Sleep   3s
    Close Browser

Test2 Test2 Login failed - Password incorrect
#Open the-internet.herokuapp.com
    Open Browser   ${URL}     ${BROWSER}
#Login
    Wait Until Element Is Visible       //input[@id='username']
    Input Text      //input[@id='username']     tomsmith
    Wait Until Element Is Visible       //input[@id='password']
    Input Text      //input[@id='password']     Password!    
    Wait Until Element Is Visible       //i[contains(text(),'Login')]
    Click Element   //i[contains(text(),'Login')]
    Sleep   3s
    Close Browser

Test3 Login failed - Username not found
#Open the-internet.herokuapp.com
    Open Browser   ${URL}     ${BROWSER}
#Login
    Wait Until Element Is Visible       //input[@id='username']
    Input Text      //input[@id='username']     tomholland
    Wait Until Element Is Visible       //input[@id='password']
    Input Text      //input[@id='password']     SuperSecretPassword!    
    Wait Until Element Is Visible       //i[contains(text(),'Login')]
    Click Element   //i[contains(text(),'Login')]
    Sleep   3s
    Close Browser