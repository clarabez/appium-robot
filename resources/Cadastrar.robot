**Settings**
Library  AppiumLibrary

**Keywords**
Open Session
    Set Appium Timeout  10
    Open Application    http://localhost:4723/wd/hub
    ...                 platformName=Android
    ...                 deviceName=Any
    ...                 app=${EXECDIR}/apks/app-curso-appium.apk
    ...                 appPackage=com.example.cursoappium

Close Session
    Close Application

Click CadastrarUsuário
    Wait Until Page Contains Element    button_cadastrar
    Click Element   button_cadastrar

Input Name Query
    [Arguments]  ${query}
    Wait Until Page Contains Element    TextInputNome
    Input Text  TextInputNome   ${query}

Input Email Query
    [Arguments]  ${query}
    Input Text  TextInputEmail   ${query}

Click Identificação Query
    [Arguments]  ${query}
    Click Text   ${query}

Click Estado Query
    [Arguments]  ${query}
    Wait Until Page Contains    Acre
    Click text   Acre
    Wait Until Page Contains   Alagoas
    # TODO: inserir um Scroll Down até achar elemento de valor X
    #AppiumLibrary.Scroll down   Mato Grosso do Sul (MS)
    #Scroll Down    Mato Grosso (MS)
    Click Text  ${query}

Click BotaoCadastrar
    Click Element   BotaoCadastrar