# 2023.2_G1_Logico

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo (de acordo com a Planilha de Divisão dos Grupos)**: 01<br>
**Paradigma**: Lógico<br>

## Alunos
|Matrícula | Aluno |
| -- | -- |
| 22/2015103  |  Debora Caires de Souza Moreira |
| 18/0016067  |  Erick Levy Barbosa dos Santos |
| 20/2016480  |  Hellen Fernanda Mendonça de Faria |
| 19/0090901  |  Laura Pinos de Oliveira |
| 21/2005426  |  Lucas Gomes Caldas |
| 20/0073249  |  Pedro Vitor Augusto de Jesus |
| 18/0011472  |  Rodolfo Cabral Neves |
| 18/0027352  |  Rodrigo Carvalho dos Santos |
| 19/0037997  |  Sidney Fernando Ferreira Lemes |


## Sobre 
<p align='justify'>
Este projeto consiste na criação de um sistema de recomendação e  que proporciona ao estudante do curso de Engenharia de Software uma proposta de uma grade horária mais adequada para os seus estudos, considerando fatores externos como atividades extra-curriculares, estágios e/ou trabalho, de modo a evitar reprovações ou trancamentos por não conseguir atingir aos objetivos acadêmicos causados por emoções negativas como  por exemplo frustração, e de modo a melhorar consequentemente a saúde mental ao estudante.</p> 


## Screenshots
adicionar descrição

## Instalação 

**Linguagens**: Prolog, Python e Java<br>

### Prolog
Windows: Fazer download [aqui](https://www.swi-prolog.org/download/stable)

Ubuntu:
```bash
    $ sudo apt install swi-prolog
```
## Uso 

**É necessário ter o JAVA instalado para utilziar a dependencia tabula_py do python**

### Como Executar
```bash
    $ pip install -r requirements.tx
```
```bash
    $ python main.py caminho/para/seu_historico_do_sigaa.pdf 
```
```bash
    $ menu.
```

### Como Utilizar com ambiente virtual python
```bash
    $ python -m venv venv
```
```bash
    $ source venv/bin/activate
```
```bash
    $ pip install -r requirements.txt
```
```bash
    $ python main.py caminho/para/seu_historico_do_sigaa.pdf 
```

O programa vai imprimir o número de materias cursadas e solicitar o número de matérias que dejesa cursar, assim, caso seja 5, siga esse exemplo:
```bash
    $ 5.
```
E após isso ele irá perguntar se você deseja salvar um arquivo que armazena a base de fatos de disciplinas não cursadas, caso deseseje digite:
```
    $ s.
```
Caso contrário digite qualquer outra coisa finalizando com o caractere de ponto.

## Vídeo de apresentação
https://www.youtube.com/watch?v=5x4WsTnK2Ao

## Participações
Apresente, brevemente, como cada membro do grupo contribuiu para o projeto.
|Nome do Membro | Contribuição | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) |
| -- | -- | -- |
| Debora Caires de Souza Moreira    |Implementei o predicado que filtra as disciplinas não cursadas, tentei iniciar um back-end e um front mas que não tive sucesso porque dependia do restante do projeto finalizado para saber o que tinha implementado. Também ajudei a popular o banco  | Excelente |
| Erick Levy Barbosa dos Santos     | Inserção das materias optativas na base de dados ,criação da base logica do prolog e concerto de bugs| Excelente |
| Hellen Fernanda Mendonça de Faria | Participei das reuniões da equipe, juntamente na escolha do projeto. Fiquei responsável por criar a base de dados junto com a Laura e fizemos isso de forma eficaz e limpa. | Excelente |
| Laura Pinos de Oliveira           | Ajudei na construção do banco adicionando turmas, horários e professores, ajudei no predicado de disciplinas | Excelente|
| Lucas Gomes Caldas                 | Participei na integração do Python com o Prolog, em que consiste em criar iniciar o os scripts em Python para converter o histórico do aluno em base de dados Prolog e iniciar a main do Prolog em um processo a parte. Além disso, criei o menu principal e função para contar quantas matérias o aluno já fez. | Excelente |
| Pedro Vitor Augusto de Jesus      | Concentrei a maior parte dos meus esforços na atividade de verificação de conflitos entre as disciplinas, participei ativamente na definição do escopo do projeto e também contribuí para a integração entre as diferentes funções. | Excelente|
| Rodolfo Cabral Neves              | <p align='justify'>Adicionar a base de dados de atividades complementares e de disciplinas optativas do curso de Engenharia de Software, documentação do projeto</p>.  | Excelente |
| Rodrigo Carvalho dos Santos       | Criação da base logica do prolog, estudo de como implementar o algoritmo de recomendação ,criação das cadeias e concerto de bugs | Excelente |
| Sidney Fernando Ferreira Lemes    | Eu ajudei na criação de um script para ler o histórico do aluno e montar a base de dados prolog das disciplinas cursadas, além de receber a entrada do usuário em relação à quantidade de matérias que deseja cursar.| Excelente |

## Fontes

SWI-Prolog downloads. Disponível em: <https://www.swi-prolog.org/download/stable>.

‌
