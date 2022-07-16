**Settings**
Resource    ../resources/Cadastrar.robot
# Library to use "Generate Random String" method
Library  String 

Test Setup  Open Session
Test Teardown   Close Session

**Test Cases**
Cadastrar pessoa válida
    ${Name} =   Generate Random String  6
    ${Email} =   Catenate    ${Name}   @test.com
    Click CadastrarUsuário
    Input Name Query  ${Name}
    Input Email Query    ${Email}
    Click Identificação Query  Mulher
    Click Estado Query    Alagoas
    Click BotaoCadastrar

    # Solução do ASSERT para identificar um toast message
    Wait Until Page Contains    Cadastro realizado com sucesso

# Cadastrar pessoa duplicada

# Cadastrar com Nome Vazio

# Cadastrar com Email Vazio
