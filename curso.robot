*** Settings ***
Library  AppiumLibrary

*** Variables ***
${REMOTE_URL}   http://localhost:4723/wd/hub
${ANDROID_APP}                ${CURDIR}/app-curso-appium.apk
${ANDROID_PLATFORM_NAME}      Android

*** Test Cases ***
Should register new and valid user
  Open Test Application
  Click CadastrarUsuário
  Input Name Query  Maria Clara
  Input Email Query    maria@maria.com
  Click Identificação Query  Mulher
  Click Estado Query    Alagoas

#   Input Search Query  Hello World!
#   Submit Search
#   Search Query Should Be Matching  Hello World!


*** Keywords ***
Open Test Application
    Open Application  http://127.0.0.1:4723/wd/hub
    ...  platformName=${ANDROID_PLATFORM_NAME}
    ...  app=${ANDROID_APP}  appPackage=com.example.cursoappium

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
    Click text   Acre
    Wait Until Page Contains   Alagoas
    Click Text  ${query}

Click BotaoCadastrar
    Click Element   BotaoCadatrar

Input Search Query
  [Arguments]  ${query}
  Input Text  txt_query_prefill  ${query}

Submit Search
  Click Element  btn_start_search

Search Query Should Be Matching
  [Arguments]  ${text}
  Wait Until Page Contains Element  android:id/search_src_text
  Element Text Should Be  android:id/search_src_text  ${text}