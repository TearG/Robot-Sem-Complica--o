*** Settings ***
Documentation   Robot Framework Sem Complicação
Library         SeleniumLibrary            timeout=2000

*** Test Cases ***
Run 
ChronosTest
   Open Browser            https://www.demoblaze.com    chrome
   Maximize Browser Window
