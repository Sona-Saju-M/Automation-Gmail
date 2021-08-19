*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${message}  Hello
*** Test Cases ***
LoginTest
    Open Browser    https://mail.google.com/mail/u/0/#inbox     chrome
    Maximize Browser Window
    input text      id:identifierId         sona.saju@terralogic.com
    click element   class:VfPpkd-vQzf8d
    Sleep           5s
    input text      name:password       Sona@123
    click element   class:VfPpkd-vQzf8d
    sleep           5s
    Capture Page Screenshot   C:/Users/Sona Sanju-2441/PycharmProjects/Gmail/LoginTest.png
    sleep           5s
ComposeTest
    click element   xpath://div[contains(text(), 'Compose')]
    sleep           5s
    input text      xpath:(//textarea[@class='vO'])[1]            sona.saju@terralogic.com
    sleep           3s
    input text      name:subjectbox                     Automation mail
    sleep           5s
    Choose File     xpath = //input[@name='Filedata']   C:/Users/Sona Sanju-2441/PycharmProjects/Gmail/LoginTest.png
    sleep           5s
    click element   xpath://div[@class="T-I J-J5-Ji aoO v7 T-I-atl L3"]
    sleep           5s