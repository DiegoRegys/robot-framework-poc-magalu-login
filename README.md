# 🤖 Robot Framework POC – Automação de Login (Magalu)

## 📌 Objetivo

Este projeto tem como objetivo demonstrar a implementação de automação de testes utilizando Robot Framework, com foco na validação de fluxo de login em aplicação web.

A proposta é aplicar boas práticas de qualidade de software fora do ambiente corporativo, simulando cenários reais de teste end-to-end.

---

## 🧪 Tecnologias Utilizadas

- Robot Framework  
- Selenium Library  
- Python  
- Testes Web (E2E)  

---

## 🚀 Cenários Automatizados

- Login com credenciais válidas  
- Estrutura preparada para expansão (login inválido, validações de erro, etc.)  

---

## 🧠 Conceitos Aplicados

- Automação baseada em keywords  
- Separação de responsabilidades (testes, dados, keywords)  
- Organização de projeto escalável  
- Validação de fluxos críticos do usuário  

---

## ⚙️ Como executar o projeto

### 1. Clonar o repositório

git clone https://github.com/DiegoRegys/robot-framework-poc-magalu-login.git
cd robot-framework-poc-magalu-login

### 2. Crie e ative um ambiente virtual

python -m venv venv

source venv/bin/activate # Linux/Mac 

venv\Scripts\activate # Windows


### 3. Instale as dependências

pip install -r requirements.txt

### 4. Execute os testes

robot tests/

## 📊 Resultados

Após a execução, serão gerados relatórios padrão do Robot Framework:

- log.html

- report.html

- output.xml

Esses arquivos permitem análise detalhada da execução dos testes.

## 🔄 Possíveis melhorias
- Adição de novos cenários (login inválido, validações de erro)
- Integração com CI/CD (ex: GitHub Actions)
- Parametrização de dados de teste
- Integração com testes de API

## 💡 Sobre o projeto

Este projeto faz parte do meu desenvolvimento contínuo como QA Automation Engineer, com foco em:

- Qualidade de software
- Automação de testes
- Boas práticas de engenharia de testes

## 👤 Autor

Diego Regys Lopes

🔗 LinkedIn: https://www.linkedin.com/in/diego-regys
