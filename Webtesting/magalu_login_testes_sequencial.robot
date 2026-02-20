*** Settings ***
Documentation     Suite de testes automatizados para a funcionalidade de login do site Magalu.
...               Esta suite abrange diversos cenarios de teste para validar o processo de login,
...               incluindo casos de sucesso e falha, bem como verificacoes de elementos da interface do usuario.
Resource          magalu_resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador

*** Test Cases ***

CT001 - Login Valido
    [Documentation]    Teste de login com credenciais validas no site Magalu.
    ...                Verifica se o usuario consegue logar com sucesso utilizando um email e senha validos.
    [Tags]             login  valido
    Acessar home page do site Magalu
    Entrar na tela de login
    Verificar se esta na tela de login
    Verificar se o campo de email esta visivel
    Verificar se o campo de senha esta visivel
    Verificar se o botao de continuar esta visivel
    Preencher o campo de email com "email_valido"
    Preencher o campo de senha com "senha_valida"
    Clicar no botao de continuar
    Verificar se o login foi realizado com sucesso

CT002 - Login Senha Invalida
     [Documentation]    Teste de login com senha invalida no site Magalu.
     ...                Verifica se o sistema exibe a mensagem de erro correta ao tentar logar
     ...                com uma senha incorreta.
     [Tags]             login  invalido
     Acessar home page do site Magalu
     Entrar na tela de login
     Verificar se esta na tela de login
     Verificar se o campo de email esta visivel
     Verificar se o campo de senha esta visivel
     Verificar se o botao de continuar esta visivel
     Preencher o campo de email com "email_valido"
     Preencher o campo de senha com "senha_invalida"
     Clicar no botao de continuar
     Verificar se a mensagem de erro por daos incorretos

CT003 - Login Email Invalido
     [Documentation]    Teste de login com email invalido no site Magalu.
     ...                Verifica se o sistema exibe a mensagem de erro correta ao tentar logar
     ...                com um email incorreto.
     [Tags]             login  invalido
     Acessar home page do site Magalu
     Entrar na tela de login
     Verificar se esta na tela de login
     Verificar se o campo de email esta visivel
     Verificar se o campo de senha esta visivel
     Verificar se o botao de continuar esta visivel
     Preencher o campo de email com "email_invalido"
     Preencher o campo de senha com "senha_valida"
     Clicar no botao de continuar
     Verificar se a mensagem de erro email invalido

CT004 - Validar Tela Esqueci Minha Senha
     Acessar home page do site Magalu
     Entrar na tela de login
     Verificar se esta na tela de login
     Verificar se o link 'Esqueci minha senha' esta visivel
     Clicar no link 'Esqueci minha senha'
     Verificar se a tela de recuperacao de senha e exibida

# CT005 - Entrar sem Senha com email Valido
#     Acessar home page do site Magalu
#     Entrar na tela de login
#     Verificar se esta na tela de login
#     Verificar se o campo de email esta visivel
#     Verificar se o botao de Entrar sem Senha visivel
#     Preencher o campo de email com "email_valido"
#     Deixar o campo de senha vazio
#     Clicar no botao de Entrar sem Senha
#     Verificar se é direcionado para a tela de verificacao por codigo

# CT006 - Entrar sem Senha com email não cadastrado
#     Acessar home page do site Magalu
#     Entrar na tela de login
#     Verificar se esta na tela de login
#     Verificar se o campo de email esta visivel
#     Verificar se o botao de Entrar sem Senha visivel
#     Preencher o campo de email com "email_nao_cadastrado"
#     Deixar o campo de senha vazio
#     Clicar no botao de Entrar sem Senha
#     Verificar se a mensagem de erro por email nao cadastrado e exibida

# CT007 - Entrar Sem Senha com email vazio
#     Acessar home page do site Magalu
#     Entrar na tela de login
#     Verificar se esta na tela de login
#     Verificar se o campo de email esta visivel
#     Verificar se o botao de Entrar sem Senha visivel
#     Deixar o campo de email vazio
#     Deixar o campo de senha vazio
#     Clicar no botao de Entrar sem Senha
#     Verificar se a mensagem de erro por email vazio e exibida

# CT008 - Criar Conta
#     Acessar home page do site Magalu
#     Entrar na tela de login
#     Verificar se esta na tela de login
#     Verificar se o input de email do criar conta esta visivel
#     Verificar se o botão continuar do criar conta esta visivel
#     Preencher o input de email do criar conta com "novo_email" valido
#     Clicar no link 'Criar Conta'
#     Verificar se a tela de criacao de conta e exibida

# CT009 - Criar Conta com email ja cadastrado
#     Acessar home page do site Magalu
#     Entrar na tela de login
#     Verificar se esta na tela de login
#     Verificar se o input de email do criar conta esta visivel
#     Verificar se o botão continuar do criar conta esta visivel
#     Preencher o input de email do criar conta com "email_ja_cadastrado"
#     Clicar no link 'Criar Conta'
#     Verificar se a mensagem de erro por email ja cadastrado e exibida

# CT010 - Criar Conta com email invalido
#     Acessar home page do site Magalu
#     Entrar na tela de login
#     Verificar se esta na tela de login
#     Verificar se o input de email do criar conta esta visivel
#     Verificar se o botão continuar do criar conta esta visivel
#     Preencher o input de email do criar conta com "email_invalido"
#     Clicar no link 'Criar Conta'
#     Verificar se a mensagem de erro por email invalido e exibida

# CT011 - Clicar 'Duvidas? Fale Conosco'
#     Acessar home page do site Magalu
#     Entrar na tela de login
#     Verificar se esta na tela de login
#     Verificar se o link 'Duvidas? Fale Conosco' esta visivel
#     Clicar no link 'Duvidas? Fale Conosco'
#     Verificar se a tela de 'Como posso ajudar' e exibida

# CT012 - Fazer Login com Google
#     Acessar home page do site Magalu
#     Entrar na tela de login
#     Verificar se esta na tela de login
#     Verificar se o botao 'Fazer Login' do Google esta visivel
#     Clicar no botao 'Fazer Login' do Google
#     Verificar se a tela de login do Google e exibida
#     Realizar o login com credenciais validas do Google
#     Verificar se o login no Magalu foi realizado com sucesso apos o login no Google

