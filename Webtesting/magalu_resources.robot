from selenium import webdriver
chrome_options = Options()
chrome_options.add_argument("--dislable-notifications")
service = Service("./chromedriver.exe")

driver = webdriver.Chrome(service=service, options=chrome_options)

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                        https://www.magazineluiza.com.br/
${HEADER-SEARCH-INPUT}        xpath=//*[@data-testid='header-search-input']
${BTNLOGIN}                   xpath=//*[contains(text(),"Entre ou Cadastre-se")]
${TELALOGIN}                  xpath=//*[@class='LoginPage-title']
${CAMPO-EMAIL-LOGIN}          xpath=//*[@placeholder='Digite seu e-mail, CPF ou CNPJ']
${CAMPO-SENHA-LOGIN}          xpath=//*[@id='input-password']
${BTN-CONTINUAR-LOGIN}        xpath=//*[@data-testid="login-with-password"]
${EMAIL-VALIDO}               diego.regys@gmail.com
${SENHA-VALIDA}               Chrono95
${TELA-IDENTIFICACAO-CODIGO}  xpath=//*[@data-testid='ResetPasswordIdentification']


*** KeyWords ***

Abrir o navegador
    Open Browser   browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar home page do site Magalu
    Go To    ${URL}
    Wait Until Element Is Visible    ${HEADER-SEARCH-INPUT}

Entrar na tela de login
    Wait Until Element Is Visible       ${BTNLOGIN}
    Click Element                       ${BTNLOGIN}

Verificar se esta na tela de login
    Wait Until Element Is Visible       ${TELALOGIN}

Verificar se o campo de email esta visivel
    Wait Until Element Is Visible       ${CAMPO-EMAIL-LOGIN}

Verificar se o campo de senha esta visivel
    Wait Until Element Is Visible       ${CAMPO-SENHA-LOGIN}

Verificar se o botao de continuar esta visivel
    Wait Until Element Is Visible       ${BTN-CONTINUAR-LOGIN}

Preencher o campo de email com "email_valido"
    Input Text    ${CAMPO-EMAIL-LOGIN}   ${EMAIL-VALIDO}

Preencher o campo de senha com "senha_valida"
    Input Text    ${CAMPO-SENHA-LOGIN}    ${SENHA-VALIDA}

Clicar no botao de continuar
    Click Element    ${BTN-CONTINUAR-LOGIN}

Verificar se o login foi realizado com sucesso
    Wait Until Element Is Visible    ${TELA-IDENTIFICACAO-CODIGO}  timeout=10