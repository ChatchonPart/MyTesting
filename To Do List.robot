*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}      https://abhigyank.github.io/To-Do-List/

#*** Keywords ***

    
*** Test Cases ***
Test1 Search Success
#Open To-Do-List  
    Open Browser   ${URL}     ${BROWSER}
#ADD ITEM
    Wait Until Element Is Visible       //*[@id="new-task"]
    Input Text      //*[@id="new-task"]     Test1
    Wait Until Element Is Visible       //*[@id="add-item"]/button
    Click Element   //*[@id="add-item"]/button

#TO-DO-TASKS
    Wait Until Element Is Visible       //body/div[1]/div[1]/div[1]/a[2]/span[1]
    Click Element    //body/div[1]/div[1]/div[1]/a[2]/span[1]
    Page Should Contain     Test1
    Wait Until Element Is Visible       //*[@id="incomplete-tasks"]/li/label/span[4]
    Click Element    //*[@id="incomplete-tasks"]/li/label/span[4]

#COMPLETED
    Wait Until Element Is Visible       //body/div[1]/div[1]/div[1]/a[3]/span[1]
    Click Element    //body/div[1]/div[1]/div[1]/a[3]/span[1]
    Page Should Contain     Test1
    Sleep   3s
    Close Browser

Test2 ADD ITEM and Delete
#Open To-Do-List  
    Open Browser   ${URL}     ${BROWSER}
#ADD ITEM
    Wait Until Element Is Visible       //*[@id="new-task"]
    Input Text      //*[@id="new-task"]     Test2
    Wait Until Element Is Visible       //*[@id="add-item"]/button
    Click Element   //*[@id="add-item"]/button

#TO-DO-TASKS
    Wait Until Element Is Visible       //body/div[1]/div[1]/div[1]/a[2]/span[1]
    Click Element    //body/div[1]/div[1]/div[1]/a[2]/span[1]
    Wait Until Element Is Visible       //body/div[1]/div[1]/div[3]/ul[1]/li[1]/button[1]/span[1]
    Click Element    //body/div[1]/div[1]/div[3]/ul[1]/li[1]/button[1]/span[1]
    Sleep   3s
    Close Browser

Test3 ADD ITEM COMPLETED ,Delete
    Open Browser   ${URL}     ${BROWSER}
#ADD ITEM
    Wait Until Element Is Visible       //*[@id="new-task"]
    Input Text      //*[@id="new-task"]     Test3
    Wait Until Element Is Visible       //*[@id="add-item"]/button
    Click Element   //*[@id="add-item"]/button

#TO-DO-TASKS
    Wait Until Element Is Visible       //body/div[1]/div[1]/div[1]/a[2]/span[1]
    Click Element    //body/div[1]/div[1]/div[1]/a[2]/span[1]
    Page Should Contain     Test3
    Wait Until Element Is Visible       //*[@id="incomplete-tasks"]/li/label/span[4]
    Click Element    //*[@id="incomplete-tasks"]/li/label/span[4]
#COMPLETED
    Wait Until Element Is Visible       //body/div[1]/div[1]/div[1]/a[3]/span[1]
    Click Element    //body/div[1]/div[1]/div[1]/a[3]/span[1]
    Page Should Contain     Test3
    Wait Until Element Is Visible       //*[@id="1"]/span
    Click Element    //*[@id="1"]/span
    Sleep   3s
    Close Browser