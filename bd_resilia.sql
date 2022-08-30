/*
* CRIAÇÃO DAS TABELAS DO SISTEMA RESILIA DATA
*/
CREATE TABLE "cursos" (
  "curso_id" serial primary key,
  "nome_curso" varchar(50)
);

CREATE TABLE "facilitadores" (
  "facilitador_id" serial PRIMARY KEY,
  "nome" varchar(100),
  "cpf" varchar(14),
  "genero" varchar(15),
  "data_nascimento" date,
  "telefone" varchar(50),
  "email" varchar(100),
  "frente" varchar(50),
  "facilitacao" varchar(50)
 );


CREATE TABLE "modulos" (
  "modulo_id" serial PRIMARY KEY,
  "curso_id" int,
  "ementa" varchar(500),
  
  constraint fk_curso foreign key(curso_id) references cursos(curso_id)
);

CREATE TABLE "turma" (
  "turma_id" serial PRIMARY KEY,
  "curso_id" int,
  "nome_turma" varchar(50),
  "status" varchar(50),
  "data_inicial_turma" date,
  "data_final_turma" date,
  
  constraint fk_curso foreign key(curso_id) references cursos(curso_id)
);

CREATE TABLE "alunos" (
  "aluno_id" serial PRIMARY KEY,
  "nome" varchar(50),
  "cpf" varchar(14),
  "genero" varchar(15),
  "estado" varchar(100),
  "data_nascimento" date,
  "telefone" varchar(50),
  "forma_pagamento" varchar(50),
  "turma_id" int,
  
  constraint fk_turma foreign key(turma_id) references turma(turma_id)
);

CREATE TABLE "resilientes" (
  "resilientes_id" serial PRIMARY KEY,
  "aluno_id" int,
  "avaliacao" int,
  
  constraint fk_aluno foreign key(aluno_id) references alunos(aluno_id)
);

create table "alocacao" (
	"alocacao_id" SERIAL primary key,
	"turma_id" int,
	"modulo_id" int,
	"facilitador_id" int,
	"data_inicio_modulo" date,
	"data_final_modulo" date,
	
	constraint fk_turma foreign key(turma_id) references turma(turma_id),
	constraint fk_modulo foreign key(modulo_id) references modulos(modulo_id),
	constraint fk_facilitador foreign key(facilitador_id) references facilitadores(facilitador_id)
);


/**
 * INSERÇÃO DOS DADOS NAS TABELAS
 */
-------------------------------------------- CURSOS

INSERT INTO cursos (nome_curso) VALUES ('Data analytics');
INSERT INTO cursos (nome_curso) VALUES ('WebDev Full Stack');

-------------------------------------------- FACILITADORES 

INSERT INTO facilitadores (nome, cpf, genero, data_nascimento, telefone, email, frente,facilitacao) 
VALUES 
	('Andreia Gabrielly Olivia Drumond','374.745.875-05','Feminino','1945/07/19','(88) 98151-7771','andreia_gabrielly_drumond@nhrtaxiaereo.com','WebDev Full Stack', 'Soft Skill'),
	('Renan Edson Nascimento','851.862.451-78','Masculino','1973/08/25','(69) 98842-8159','renan_nascimento@metroquali.com.br','WebDev Full Stack', 'Hard Skill'),
	('Alícia Fabiana Andreia da Conceição','038.347.549-00','Feminino','1945/07/10','(21) 99809-6173','alicia_fabiana_daconceicao@tam.com.br','WebDev Full Stack', 'Soft Skill'),
	('Elias Cauê Raul Oliveira','226.637.080-46','Masculino','1943/08/23','(67) 99813-8748','elias.caue.oliveira@igly.com.br','WebDev Full Stack', 'Hard Skill'),
	('Bárbara Heloisa Lima','898.714.207-81','Feminino','1950/06/15','(84) 99910-9447','barbaraheloisalima@cernizza.com.br','WebDev Full Stack', 'Soft Skill'),
	('Caio Thales Silva','188.762.519-44','Masculino','1969/06/16','(63) 98441-8185','caio-silva79@dinamicaconsultoria.com','WebDev Full Stack', 'Hard Skill'),
	('Carolina Sophia Costa','136.725.587-22','Feminino','1997/03/26','(82) 98277-8032','carolina_sophia_costa@focusgrafica.com.br','Data Analytics', 'Soft Skill'),
	('Joaquim Emanuel Mendes','875.751.797-55','Masculino','1997/04/15','(92) 99481-3604','joaquimemanuelmendes@fertility.com.br','Data Analytics', 'Hard Skill'),
	('Isabella Julia Duarte','165.206.636-54','Feminino','1997/02/17','(81) 98509-5871','isabella_duarte@cladm.com.br','Data Analytics','Soft Skill'),
	('Miguel Tomás Figueiredo','089.376.662-35','Masculino','1996/04/25','(21) 99403-6878','miguel.tomas.figueiredo@uou.com.br','Data Analytics','Hard Skill'),
	('Paulo Paulo Galvão','420.605.282-40', 'Masculino','1995/02/04','(48) 98668-9943','paulo-galvao79@bom.com.br','WebDev Full Stack','Soft Skill'),
	('Silvana Luiza Camila Ribeiro','699.133.088-44', 'Feminino','1995/02/04','(69) 99779-1814','silvana-ribeiro96@atento.com.br','WebDev Full Stack','Hard Skill'),
	('Vera Joana Barros','225.312.784-19', 'Feminino','1995/04/19','(34) 99536-9463','vera_joana_barros@pss.adv.br','WebDev Full Stack','Soft Skill'),
	('Isis Regina Nogueira','454.866.359-23', 'Feminino','1995/07/22','(71) 99588-3562','isis-nogueira82@structureesquadrias.com.br','WebDev Full Stack','Hard Skill'),
	('Stefany Gabrielly Fabiana Novaes','306.182.117-13', 'Feminino','1993/07/16','(99) 99601-4365','stefanygabriellynovaes@gracomonline.com.br','WebDev Full Stack','Soft Skill'),
	('Eloá Luciana da Rosa','942.494.036-02', 'Feminino','1993/08/24','(95) 98502-3469','eloa.luciana.darosa@termakui.com.br','WebDev Full Stack','Hard Skill'),
	('Cláudio Vinicius Raimundo Barros','021.765.428-27', 'Masculino','1993/06/15','(68) 98374-9776','claudio-barros95@newpark.com','WebDev Full Stack','Soft Skill'),
	('Alana Letícia Juliana Jesus','070.326.358-73', 'Feminino','1992/01/12','(81) 99928-5763','alana_leticia_jesus@deltaturismo.com.br','WebDev Full Stack','Hard Skill'),
	('Davi Oliver Caldeira','714.328.909-48', 'Masculino','1989/02/02','(47) 98844-0782','davi.oliver.caldeira@portalpublicidade.com.br','Data Analytics','Soft Skill'),
	('Nathan Sebastião Drumond','916.274.162-42', 'Masculino','1989/02/15','(61) 99496-3062','nathan.sebastiao.drumond@eclatt.com.br','Data Analytics','Hard Skill');
	
-------------------------------------------- MODULOS

INSERT INTO modulos (curso_id,ementa) VALUES (1, 'Introdução à lógica de programação para dados e preparação para Processos Seletivos');
INSERT INTO modulos (curso_id,ementa) VALUES (1, 'Estrutura de dados e Inteligência emocional');
INSERT INTO modulos (curso_id,ementa) VALUES (1, 'Modelos de armazenamento de dados e Relacionamento Interpessoal');
INSERT INTO modulos (curso_id,ementa) VALUES (1, 'Análise e visualização de dados e Metodologias Ágeis');
INSERT INTO modulos (curso_id,ementa) VALUES (1, 'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação');
INSERT INTO modulos (curso_id,ementa) VALUES (2, 'INTRODUÇÃO A DESENVOLVIMENTO FRONT-END E CRIAÇÃO DE HÁBITOS DE SUCESSO');
INSERT INTO modulos (curso_id,ementa) VALUES (2, 'ORIENTAÇÃO A OBJETOS,UTILIZAÇÃO DE APLICAÇÕES HTTP E INTELIGÊNCIA EMOCIONAL');
INSERT INTO modulos (curso_id,ementa) VALUES (2, 'MODELOS DE ARMAZENAMENTO DE DADOS E METODOLOGIAS ÁGEIS');
INSERT INTO modulos (curso_id,ementa) VALUES (2, 'FRAMEWORKS, BIBLIOTECAS, TECNOLOGIAS SERVER-SIDE BACK-END, POSTURA PROFISSIONAL E INOVAÇÃO');
INSERT INTO modulos (curso_id,ementa) VALUES (2, 'FRAMEWORKS, BIBLIOTECAS, TECNOLOGIAS CLIENT-SIDE FRONT-END, FOCO EM CARREIRA E PROCESSO SELETIVO');

-------------------------------------------- TURMA

insert into turma (curso_id, nome_turma, status, data_inicial_turma, data_final_turma)
values 
	(1,'T1','Concluído','2019-01-10','2019-07-12'), 
	(1,'T2','Concluído','2019-03-01','2019-09-05'),
	(1,'T3','Concluído','2019-05-01','2019-11-01'),
	(1,'T4','Concluído','2019-08-01','2020-02-01'),
	(1,'T5','Concluído','2020-01-25','2020-07-28'),
	(1,'T6','Concluído','2020-02-25','2020-08-28'),
	(1,'T7','Concluído','2020-03-25','2020-09-28'),
	(2,'T8','Concluído','2019-04-01','2019-10-01'),
	(1,'T9','Concluído','2020-05-25','2020-11-28'),
	(1,'T10','Concluído','2020-06-25','2020-12-24'),
	(1,'T11','Concluído','2020-07-25','2021-01-28'),
	(2,'T12','Concluído','2020-08-25','2021-02-28'),
	(1,'T13','Concluído','2020-09-25','2020-03-28'),
	(1,'T14','Concluído','2020-10-25','2021-04-28'),
	(1,'T15','Concluído','2021-01-10','2021-07-20'),
	(1,'T16','Concluído','2021-03-25','2021-09-28'),
	(1,'T17', 'Em andamento','2021-05-25','2021-11-28'),
	(1,'T18', 'Em andamento','2021-08-25','2022-02-28'),
	(1,'T19', 'Em andamento','2022-02-25','2022-09-28'),
	(2,'T20', 'Em andamento','2022-05-19','2022-11-11');

-------------------------------------------- ALUNOS
INSERT INTO alunos (nome,cpf,genero,estado,data_nascimento,telefone,forma_pagamento, turma_id)
VALUES
	('Davi Luiz Cardoso','42758524783','Masculino','CE','1998-04-27','(85)-937882655','ISA',10),
	('Otávio Nunes','47367561790','Masculino','MA','1990-02-14','(98)-987882911','ISA',19),
	('Sofia das Neves','66456340802','Feminino','PB','2001-07-03','(83)-908992655','Parcelado durante o curso',20),
	('Sophia Pinto','22349632814','Não-Binário','MS','1996-06-10','(67)-967226651','Parcelado durante o curso',20),
	('Miguel Melo','90083364722','Masculino','SC','1996-01-05','(48)-972817726','ISA',20),
	('Yuri Nascimento','28816726717','Não-Binário','MG','1998-06-15','(31)-976227188','Parcelado durante o curso',19),
	('Maria Clara Silva','71889360805','Feminino','MG','2001-09-21','(31)-967228153','ISA',18),
	('Murilo Fernandes','71889360805','Masculino','MA','1994-08-08','(98)-909227716','Parcelado durante o curso',17),
	('Evelyn Rodrigues','10953541088','Feminino','PR','1997-03-18','(41)-972881093','Parcelado durante o curso',16),
	('Isabel das Neves','51577807022','Feminino','RJ','1999-05-17','(21)-910243618','ISA',15),
	('Caroline Santos','26622938024','Feminino','PE','1992-04-12','(87)-926337281','A vista',14),
	('Bryan Moreira','09178064090','Não-Binário','RJ','2000-10-15','(21)-963728163','ISA',18),
	('Heitor Freitas','98351025038','Masculino','GO','2000-12-04','(64)-967223529','A vista',13),
	('Danilo Melo','57999185094','Masculino','PE','2001-06-17','(87)-942568732','A vista',11),
	('Luiz Otávio Novaes','55689421022','Masculino','MA','2000-09-24','(98)-932115275','ISA',20),
	('Leandro Costa','26402375004','Masculino','PR','1996-05-19','(41)-972663826','ISA',12),
	('Vitor Gabriel Campos','82871343071','Masculino','GO','1999-04-28','(64)-964772816','Parcelado durante o curso',13),
	('Caroline Duarte','10172536090','Feminino','RJ','1998-08-18','(21)-902837190','ISA',5),
	('Francisco Correia','48427832060','Não-Binário','PE','1997-02-03','(87)-902816432','ISA',1),
	('Maria Sophia Caldeira','15546443057','Feminino','RJ','2000-01-09','(21)-967365241','A vista',3),
	('Luiz Miguel Duarte','54891119098','Masculino','SP','1995-08-19','(11)-982736219','ISA',13),
	('Larissa Lopes','28136999007','Feminino','PE','1997-05-15','(87)-982098126','ISA',20),
	('Mariana Fernandes','64042614051','Feminino','SP','2001-03-28','(11)-964832090','Parcelado durante o curso',11),
	('Gabrielly da Cruz','88216516061','Feminino','RJ','1999-08-19','(21)-910435267','ISA',16),
	('Kaique Rocha','99608483026','Masculino','GO','1996-09-12','(64)-985650485','ISA',17),
	('Maria Fernanda da Luz','92150664038','Feminino','RJ','2001-09-23','(21)-964768739','Parcelado durante o curso',18),
	('Davi Luiz Freitas','73277436004','Não-Binário','RS','1990-12-12','(51)-909378365','Parcelado durante o curso',19),
	('Camila Campos','73314871082','Feminino','ES','1999-07-08','(27)-909820164','ISA',20),
	('Yasmin da Rocha','13994803080','Feminino','SP','2000-08-16','(11)-987291816','Parcelado durante o curso',10),
	('Yago Pinto','45766616040','Masculino','PR','1998-11-10','(41)-973654364','ISA',9),
	('Luiz Felipe Viana','53211436090','Masculino','SP','1998-07-02','(11)-961998276','ISA',8),
	('Marcela Mota','82442780054','Feminino','PR','2001-06-17','(41)-976378251','ISA',3),
	('Renan Moraes','09476496037','Masculino','RJ','1993-05-13','(21)-930405722','Parcelado durante o curso',10),
	('Pietra Porto','44420972084','Feminino','PR','1996-04-17','(41)-987892256','Parcelado durante o curso',9),
	('Mariana Martins','51514057050','Feminino','SP','2001-12-04','(11)-903026752','Parcelado durante o curso',20);

-------------------------------------------- RESILIENTES

INSERT INTO resilientes (aluno_id,avaliacao) VALUES (2,7);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (3,5);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (4,8);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (5,10);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (6,2);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (7,4);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (8,5);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (12,9);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (15,6);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (22,7);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (25,4);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (26,3);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (27,10);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (28,10);
INSERT INTO resilientes (aluno_id,avaliacao) VALUES (35,10);

-------------------------------------------- ALOCAÇÃO

insert into alocacao (turma_id, modulo_id, facilitador_id, data_inicio_modulo, data_final_modulo) 
values 
    (17,10,1,'2022-07-18','2022-08-15'),
    (17,10,2,'2022-07-18','2022-08-15'),
    (18,9,3,'2022-07-11','2022-08-08'),
    (18,9,4,'2022-07-11','2022-08-08'),
    (19,8,5,'2022-08-15','2022-09-12'),
    (19,8,6,'2022-08-15','2022-09-12'),
    (20,3,7,'2022-08-01','2022-09-01'),
    (20,3,8,'2022-08-01','2022-09-01'),
    (17,6,11,'2022-01-18','2022-03-15'),
    (17,6,12,'2022-01-18','2022-03-15'),
    (17,7,3,'2022-03-15','2022-04-15'),
    (17,7,4,'2022-03-18','2022-04-15'),
    (17,8,5,'2022-04-18','2022-05-25'),
    (17,8,6,'2022-04-18','2022-05-25'),
    (17,9,13,'2022-06-18','2022-07-15'),
    (17,9,14,'2022-06-18','2022-07-15'),
    (18,6,5,'2022-04-18','2022-05-15'),
    (18,6,2,'2022-04-18','2022-05-15'),
    (18,7,3,'2022-05-18','2022-06-15'),
    (18,7,2,'2022-05-18','2022-06-15'),
    (18,8,1,'2022-06-18','2022-07-15'),
    (18,8,2,'2022-06-18','2022-07-15'),
    (19,6,5,'2022-06-15','2022-07-15'),
    (19,6,2,'2022-06-15','2022-07-15'),
    (19,7,5,'2022-07-15','2022-08-15'),
    (19,7,12,'2022-07-15','2022-08-15'),
    (20,2,7,'2022-06-28','2022-08-01'),
    (20,2,9,'2022-06-28','2022-08-01'),
    (20,1,7,'2022-05-21','2022-06-28'),
    (20,1,20,'2022-05-21','2022-06-28');
