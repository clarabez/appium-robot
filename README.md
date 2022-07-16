# Robot-appium: automação para Android

Este projeto realiza o fluxo de automação do aplicativo [Curso de Appium](https://github.com/clarabez/appium-android-app) utilizando o [Robot Framework](https://robotframework.org/robotframework/).

Para isso, utilizei os recursos da [biblioteca robot-framework-appiumlibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary) e também [demais keywords da documentação](http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html).

### Sobre o aplivativo em teste

O aplicativo [Curso de Appium](https://github.com/clarabez/appium-android-app) vem sendo desenvolvido para o ensino/aprendizado de automação mobile com Appium. É um aplicativo simples, com o objetivo de realizar cadastros, mas traz elementos muito comuns de fluxos de automação mobile: EditText, spinner para fazer scroll up/down em listas, toast messages, etc.

<div align="center">
<img src="imagens/tela_principal_app.png" width="200" height="400">
</div>


### Organização do projeto

````
appium-robot/
  apks/
  imagens/
  resources/
  .gitignore
  curso.robot
````

<ul>
- imagens: imagens do README.md
- apks: aplicativos em uso no projeto.
- resources: abstrações das telas, contendo as palavras-chave utilizadas nos fluxos de teste. Pretendo deixar 1 arquivo para cada tela.
- tests: fluxos de teste de cada tela da aplicação.
- .gitignore: arquivo padrão.
- curso.robot: rascunho do início do projeto, onde deixei tudo num único arquivo e só depois fui separando as funcionalidades. Deixei no projeto porque pode ser útil par alguém.
</ul>



### Passo a passo para executar o projeto

Sugiro o uso de algum ambiente virtual (virtualenv)

Instalar a biblioteca [robotframework-appiumlibrary](http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html):
```
pip install --upgrade robotframework-appiumlibrary
```

Instalar o [appium-python-client](https://pypi.org/project/Appium-Python-Client/):
```
pip install appium-python-client
```