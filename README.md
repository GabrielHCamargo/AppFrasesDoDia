# AppFrasesDoDia
Aplicativo teste para desenvolvimento inicial do Flutter.

O APP Frases do Dia, foi o primeiro aplicativo que desenvolvi usando o Framework Flutter, ele possibilitou colocar em prática conceitos importantes do desenvolvimento com flutter como, por exemplo:
    1 - Scaffold;
    2 - Botões;
    3 - Mudanças de estado;

O APP é composto por um Widget Statefull dentro do arquivo main, no qual se encontra um Widget Scaffold definindo um AppBar da cor Green com seu título e um BottomNavigatorBar da cor blue com um botão escrito "Nova Frase", inicialmente dentro do body do APP temos o logo e uma frase inícial que informa o usuário para clicar no botão e gerar uma nova frase, esse processo de troca de frases é consequência do seguinte método:

O onPressed do botão chama uma função/método criada, na qual essa método coloca na variável numeros, um número aleatório por meio da classe Random, e faz uma mudança de estado usando o setState na variável que exibe o texto na tela, _frases, aplicando dentro dessa variável uma frase do array frases utilizando como índice o número aleatório gerado pela classe Random, toda vez que o usuário clicar em "Nova Frase".

# ENTRE EM CONTATO COMIGO:
    WHATSAPP: +55 (35) 9 8452-5250.
    INSTAGRAN: @eu.gabrielcamargo.

Att,
GABRIEL CAMARGO
Co-founder | Tecnologia
Trade X Card
gabrielhcamargocontato@gmail.com
http://tradexcard.com.br