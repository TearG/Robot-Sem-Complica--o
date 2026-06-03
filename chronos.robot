*** Settings ***
Documentation   Robot Framework Sem Complicação - Testes Automatizados E2E
Library         SeleniumLibrary            timeout=2000
Test Teardown   Close Browser

*** Variables ***
${url}                      https://www.demoblaze.com
${navegador}                chrome
${NOME_CLIENTE}             Vanessa Faria
${PAIS}                     Brasil
${CIDADE}                   Rio de Janeiro
${CARTAO}                   12345678910
${MES_CARTAO}               02
${ANO_CARTAO}               1990

*** Keywords ***
Adicionar item carrinho de compra
   Open Browser                     ${url}        ${navegador}
   Maximize Browser Window
   Click Link                       Laptops
   Wait Until Element Is Visible    link=MacBook Pro
   Click Link                       MacBook Pro
   Wait Until Element Is Visible    xpath=//a[text()="Add to cart"]
   Click Element                    xpath=//a[text()="Add to cart"]
   Alert Should Be Present

Finalizar Compra
   Click Link                        Cart    
   Click Button                      css=a.btn-success
   Wait Until Element Is Visible     id=name
   Input Text                        id=name       ${NOME_CLIENTE}
   Input Text                        id=country    ${PAIS}
   Input Text                        id=city       ${CIDADE}
   Input Text                        id=card       ${CARTAO}
   Input Text                        id=month      ${MES_CARTAO}
   Input Text                        id=year       ${ANO_CARTAO}
   Click Button                      css=button[onclick="purchaseOrder()"]
   Element Text Should Be            css=.sweet-alert > h2    Thank you for your purchase!
   Click Button                      css=button.confirm

*** Test Cases ***
ChronosTest
   Adicionar item carrinho de compra
   Finalizar Compra
