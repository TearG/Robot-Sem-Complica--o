*** Settings ***
Documentation   Robot Framework Sem Complicação
Library         SeleniumLibrary            timeout=500

*** Test Cases ***
Run 
ChronosTest
   Open Browser            https://www.demoblaze.com    chrome
   
