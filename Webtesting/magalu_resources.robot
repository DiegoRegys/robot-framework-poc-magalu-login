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
${TELA-ESQUECI-SENHA}         xpath=//*[contains(text(),"Recuperação de senha")]

${CAMPO-EMAIL-LOGIN}          xpath=//*[@placeholder='Digite seu e-mail, CPF ou CNPJ']
${CAMPO-SENHA-LOGIN}          xpath=//*[@id='input-password']
${CAMPO-ESQUECI-MINHA-SENHA}  xpath=//*[contains(text(),"Esqueci minha senha")]
${BTN-CONTINUAR-LOGIN}        xpath=//*[@data-testid="login-with-password"]
${BTN-ENTRAR-SEM-SENHA}       xpath=//*[contains(text(),"Entrar sem senha")]
${LABEL-DADOS-INVALIDOS}      xpath=//*[contains(text(),"Dados inválidos")]  
${LABEL-EMAIL-INVALIDO}       xpath=//*[contains(text(),"Insira um CPF, CNPJ ou E-mail válido.")]
${LABEL-EMAIL-NAO-CADASTRADO}       xpath=//*[contains(text(),"E-mail ou CPF não cadastrado")]

${EMAIL_NAO_CADASTRADO}       diego.regys@gmail.com.br
${EMAIL-INVALIDO}             diego.regys@gmailcom
${EMAIL-VALIDO}               diego.regys@gmail.com
${SENHA-VALIDA}               Chrono95
${SENHA-INVALIDA}             123456789
${TELA-IDENTIFICACAO-CODIGO}  xpath=//*[contains(text(),"Código de acesso à conta")]


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

Preencher o campo de email com "email_invalido"
    Input Text    ${CAMPO-EMAIL-LOGIN}   ${EMAIL-INVALIDO}    

Preencher o campo de senha com "senha_invalida"
    Input Text    ${CAMPO-SENHA-LOGIN}   ${SENHA-INVALIDA}

Preencher o campo de senha com "senha_valida"
    Input Text    ${CAMPO-SENHA-LOGIN}    ${SENHA-VALIDA}

Clicar no botao de continuar
    Click Element    ${BTN-CONTINUAR-LOGIN}

Verificar se o login foi realizado com sucesso
    Wait Until Element Is Visible    ${TELA-IDENTIFICACAO-CODIGO}  timeout=10

Verificar se a mensagem de erro por daos incorretos
    Wait Until Element Is Visible    ${LABEL-DADOS-INVALIDOS}  timeout=10

Verificar se a mensagem de erro email invalido
    Wait Until Element Is Visible    ${LABEL-EMAIL-INVALIDO}  timeout=10

Verificar se o link 'Esqueci minha senha' esta visivel
    Wait Until Element Is Visible    ${CAMPO-ESQUECI-MINHA-SENHA}     timeout=10

Clicar no link 'Esqueci minha senha'
    Click Element                    ${CAMPO-ESQUECI-MINHA-SENHA}

Verificar se a tela de recuperacao de senha e exibida
    Wait Until Element Is Visible    ${TELA-ESQUECI-SENHA}

Verificar se o botao de Entrar sem Senha visivel
    Wait Until Element Is Visible    ${BTN-ENTRAR-SEM-SENHA}  timeout=10

Deixar o campo de senha vazio
    Clear Element Text    ${CAMPO-SENHA-LOGIN}

Clicar no botao de Entrar sem Senha
    Click Element    ${BTN-ENTRAR-SEM-SENHA}

Verificar se é direcionado para a tela de verificacao por codigo
    Wait Until Element Is Visible    ${TELA-IDENTIFICACAO-CODIGO}  timeout=10

Preencher o campo de email com "email_nao_cadastrado"
    Input Text    ${CAMPO-EMAIL-LOGIN}   ${EMAIL_NAO_CADASTRADO}

Verificar se a mensagem de erro por email nao cadastrado e exibida
    Wait Until Element Is Visible    ${LABEL-EMAIL-NAO-CADASTRADO}  timeout=10