
  

# <font  color="#DAA520">Resilia - Banco Resilia Data - Data Analytics: Módulo 3</font>

## Objetivo do Projeto

  

Projeto desenvolvido no final do Módulo 3 do curso Data Analytics, da Resilia Educação, Turma 20. Este projeto foi desenvolvido pelo Squad 6 (Squad de Milhões 🌽🌽🌽), composto pelos estudantes:

  

- Bárbara de Avelar Ferraz Prins (Braba): Colaborador(a) II;
![enter image description here](https://cdn-icons-png.flaticon.com/24/3536/3536505.png) [LinkedIn](https://www.linkedin.com/in/barbara-avelar/)
  

- Camilla Sampaio (Camilllllllllla): Gestor(a) do Conhecimento;
![enter image description here](https://cdn-icons-png.flaticon.com/24/3536/3536505.png) [LinkedIn](https://www.linkedin.com/in/camilla-sampaio-0b8ab3218/)
  

- Jaqueline Sindie Damasceno (Jaque): Co-facilitador(a);
![enter image description here](https://cdn-icons-png.flaticon.com/24/3536/3536505.png) [LinkedIn](https://www.linkedin.com/in/jaquelinesindie/)
  

- José Luiz Ferreira Junior (Zé): Gestor(a) de Gente e Engajamento;
![enter image description here](https://cdn-icons-png.flaticon.com/24/3536/3536505.png) [LinkedIn](https://www.linkedin.com/in/jos%C3%A9-luiz-ferreira-junior-02a5141b1/)

  

- Marcus Vinicius dos Santos (Marcos): Colaborador(a) I.
![enter image description here](https://cdn-icons-png.flaticon.com/24/3536/3536505.png) [LinkedIn](https://www.linkedin.com/in/marcus-vinicius-santos/)
  
  

### Descrição do projeto

  

Você e a sua equipe foram escalados pela Resilia para modernizar o processo de armazenamento de dados da empresa! Vocês foram escolhidos para um projeto de construção de um banco de dados para gerenciamento da estrutura de ensino da empresa.

Para isso, vocês devem se atentar para o descritivo que será apresentado a seguir:

*“Hoje dentro da Resilia, são armazenadas diversas informações do braço de ensino da empresa como dados sobre os alunos, facilitadores, departamentos, módulos e cursos em planilhas. Essas informações são colocadas em planilhas diferentes o que dificulta muitas das vezes a extração de dados estratégicos para a empresa.”*

  

## Detalhes do projeto:

  

A partir desta apresentação do problema, você e sua equipe devem:

◆ Gerar uma representação das entidades e seus respectivos atributos;

◆ Criar a modelagem do banco de dados;

◆ Criar os scripts SQL para criação das tabelas com seus respectivos atributos e com a base de dados criadas;

◆ Inserir alguns dados, executar algumas consultas para gerar informações estratégicas para a área de ensino da Resilia.

  

➔ Após a criação do banco de dados, você e sua equipe deverão inserir dados para teste do banco de dados. Vocês deverão executar as consultas abaixo e apresentar seus resultados:

◆ Selecionar a quantidade total de estudantes cadastrados no banco;

◆ Selecionar todos os estudantes com os respectivos cursos que eles estão cadastrados;

◆ Selecionar quais pessoas facilitadoras atuam em mais de uma turma.

➔ Além disso, vocês deverão pensar em mais três perguntas que deverão ser respondidas através de scripts SQL.

  

### Requisitos:

  

● Representação das entidades e os respectivos atributos de cada uma delas;

● Modelagem completa do banco de dados com entidades, atributos e relacionamentos;

● Scripts SQL de criação das tabelas com seus atributos e chaves;

● Resultado de alguns selects que deverão ser executados após a criação do banco de dados.

  

## Estrutura do projeto


O BD Resilia é composto por 9 tabelas:  **cursos, facilitadores, modulos, turma, alunos, resilientes, alocacao, log_facilitadores e log_alunos**.

O relacionamento entre as tabelas pode ser visualizado no seguinte diagrama:

![Diagrama do Banco de Dados: Resilia](https://media.discordapp.net/attachments/1005571000999628843/1014509333687582741/Projeto_M3.png?width=730&height=671)

  

### Criação das tabelas


Para iniciar a criação das tabelas, execute o arquivo `bd_resilia.sql`. Nele, será encontrada todas as informações sobre as tabelas, bem como os dados que populam as mesmas. 

### Queries

  

Após a criação das tabelas no passo anterior, as queries desenvolvidas para este projeto se encontram no arquivo  `queries_resilia.sql`. Ao todo, foram 7 perguntas respondidas pela squad, sendo elas:

 1. Quantidade total de estudantes cadastrados no banco;
 2. Estudantes e seus respectivos cursos;
 3. Pessoas facilitadoras que atuam em mais de uma turma;
 4. Qual estado BR possui mais alunos cadastrados?
 5. Qual a média de avalição do curso pelos resilientes?
 6. Qual facilitador deu aula durante o mês 6 e 9 de 2022?
 7. Quais alunos (e suas respectivas turmas) que já concluiram o curso?
