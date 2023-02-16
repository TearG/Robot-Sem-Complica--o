*** Settings ***
Documentation   Robot Framework Sem Complicação
Library         SeleniumLibrary            timeout=2000

*** Variables ***
${url}                      https://www.demoblaze.com
${navegador}                chrome

*** Keywords ***
Adicionar item carrinho de compra
   Open Browser                     ${url}        ${navegador}
   Maximize Browser Window
   Click Link                       Laptops
   Wait Until Element Is Visible    link=MacBook Pro
   Click Link                       MacBook Pro
   Wait Until Element Is Visible    xpath=//div[2]//a
   Click Element                    xpath=//div[2]//a
   Alert Should Be Present

Finalizar Compra
   Click Link                        Cart    
   Click Button                      css=.btn-success
   Wait Until Element Is Visible     id=name
   Input Text                        id=name       Vanessa Faria
   Input Text                        id=country    Brasil
   Input Text                        id=city       Rio de Janeiro
   Input Text                        id=card       12345678910
   Input Text                        id=month      02
   Input Text                        id=year       1990
   Click Button                      xpath=//button[text()="Purchase"]
   Element Text Should Be            css=.sweet-alert > h2    Thank you for your purchase!
   Click Button                      css=.confirm

*** Test Cases ***
ChronosTest
   Adicionar item carrinho de compra
   Finalizar Compra
   