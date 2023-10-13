*** Settings ***
Documentation       This file contains test cases for the login functionality.

Library             SeleniumLibrary

Suite Setup         Open browser    ${url}    ${browser}
Suite Teardown      Close browser


*** Variables ***
${url}          https://www.saucedemo.com/
${browser}      chrome
${Username}    standard_user
${Password}    secret_sauce
${Firstname}   achraf
${Lastname}    Nabaha
${postalcode}  26100



*** Test Cases ***
First Test
    Double Click Element    //*[@id="user-name"]
    Capture Page Screenshot





Login
    Input Text       //*[@id="user-name"]   ${Username}
    Sleep    2s
    Click Element    //*[@id="password"]
    Sleep    2s
    Input Text       //*[@id="password"]   ${Password}
    Click Element    //*[@id="login-button"]
    Capture Page Screenshot
Customize
   Click Element  //*[@id="item_4_title_link"]/div
    Sleep  0.5s
   Click Element  //*[@id="add-to-cart-sauce-labs-backpack"]
    Sleep  0.5s 
   Click Element  //*[@id="back-to-products"]
    Sleep  0.5s
   Click Element  //*[@id="item_1_title_link"]/div
    Sleep  0.5s
   Click Element  //*[@id="add-to-cart-sauce-labs-bolt-t-shirt"]
    Sleep  0.5s                                       
   click Element  //*[@id="shopping_cart_container"]/a
    Sleep  0.5s                 
   click Element  //*[@id="checkout"]
   Capture Page Screenshot
    

Your Information  
   Click Element  //*[@id="first-name"]
   Input Text     //*[@id="first-name"]     ${Firstname}
   Click Element   //*[@id="last-name"]
   Input Text     //*[@id="last-name"]      ${Lastname}
   Click Element   //*[@id="postal-code"]
   Input Text     //*[@id="postal-code"]    ${postalcode}
   Click Element  //*[@id="continue"]
   Capture Page Screenshot

Overview
   Click Element   //*[@id="finish"]
   Capture Page Screenshot
