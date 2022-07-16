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
  requirements.txt
````

<ul>

- imagens: imagens do README.md

- apks: aplicativos em uso no projeto.
- resources: abstrações das telas, contendo as palavras-chave utilizadas nos fluxos de teste. Pretendo deixar 1 arquivo para cada tela.
- tests: fluxos de teste de cada tela da aplicação.
- .gitignore: arquivo padrão.
- curso.robot: rascunho do início do projeto, onde deixei tudo num único arquivo e só depois fui separando as funcionalidades. Deixei no projeto porque pode ser útil par alguém.
- requirements.txt: dependências do projeto.
</ul>

### Passo a passo para executar o projeto

Sugiro o uso de algum ambiente virtual (virtualenv) para isolar as bibliotecas utilizadas aqui, mas não tem problemas iniciar o projeto sem um ambiente virtual. Mais sobre [ambientes virtuais aqui](https://realpython.com/lessons/creating-virtual-environment/).


Clonar o projeto:
```
git clone https://github.com/clarabez/appium-robot.git
```

Instalar as dependências (com esse passo vc não precisa instalar bibliotecas individualmente, como nos 2 passos seguintes):
```
pip install -r requirements.txt
```

OU instalar as bibliotecas de forma de forma isolada.

Instalar a biblioteca [robotframework-appiumlibrary](http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html) (não precisa se vc instalou via requirements.txt):
```
pip install --upgrade robotframework-appiumlibrary
```

Instalar o [appium-python-client](https://pypi.org/project/Appium-Python-Client/) (não precisa se vc instalou via requirements.txt):
```
pip install appium-python-client
```

Para executar o projeto:
```
robot tests/testes_curso_appium.robot
```

Caso queira direcionar os arquivos de saída gerados pela execução, é só criar uma pasta no projeto e usar a flag -d indicando o nome da pasta:
```
robot -d <</pasta/logs>> tests/testes_curso_appium.robot
```
