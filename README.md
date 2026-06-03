# 🤖 Automação de Testes com Robot Framework

Este repositório contém uma suíte de testes de ponta a ponta (E2E) desenvolvida com **Robot Framework** e **SeleniumLibrary** para validar o fluxo de compra na plataforma de demonstração **DemoBlaze**.

O projeto demonstra a aplicação de boas práticas em automação de testes de interface Web (UI), estruturando Keywords (palavras-chave) legíveis e reutilizáveis.

---

## 🎯 Cenário de Teste Automatizado (`ChronosTest`)
O fluxo principal automatizado simula a experiência completa de um usuário final:
1.  **Adicionar item ao carrinho:**
    *   Acessa o site oficial da [DemoBlaze](https://www.demoblaze.com).
    *   Navega até a seção de *Laptops*.
    *   Seleciona o produto *MacBook Pro*.
    *   Clica em "Add to cart" e valida o alerta de confirmação do navegador.
2.  **Finalizar compra:**
    *   Acessa o carrinho de compras (*Cart*).
    *   Clica em "Place Order" para abrir o modal de checkout.
    *   Preenche o formulário com dados de faturamento (Nome, País, Cidade, Cartão de Crédito).
    *   Confirma a compra e valida a mensagem de sucesso do SweetAlert: *"Thank you for your purchase!"*.

---

## 🛠️ Tecnologias e Bibliotecas
*   **Framework de Testes:** Robot Framework
*   **Biblioteca Web:** SeleniumLibrary (com ChromeDriver)
*   **Linguagem de Suporte:** Python

---

## 📁 Estrutura de Arquivos
```text
Robot Sem Complicação/
├── chronos.robot       # Script de teste principal (Settings, Variables, Keywords, Test Cases)
├── result/             # Pasta gerada automaticamente com relatórios e screenshots de execução
└── README.md           # Documentação do projeto
```

---

## 🚀 Como Executar o Projeto

### Prerrequisitos
1.  Ter o **Python 3.x** instalado.
2.  Ter o **Google Chrome** e o **ChromeDriver** compatível instalado no sistema (e adicionado ao PATH).

### 1. Instalar Dependências
Instale o Robot Framework e a SeleniumLibrary executando no seu terminal:
```bash
pip install robotframework robotframework-seleniumlibrary
```

### 2. Executar os Testes
Para rodar a suíte de testes e gerar os relatórios na pasta `result`:
```bash
robot -d result chronos.robot
```

### 3. Analisar Resultados
Após a execução, abra o arquivo `result/report.html` ou `result/log.html` em qualquer navegador para ver o relatório gráfico detalhado do teste.

---

*Desenvolvido por Vanessa de Carvalho Faria.*
