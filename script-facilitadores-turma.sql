CREATE TABLE "alunos" (
  "aluno_id" serial PRIMARY KEY,
  "curso_id" int,
  "nome" varchar(50),
  "cpf" varchar(14),
  "genero" varchar(15),
  "estado" varchar(100),
  "data_nascimento" date,
  "telefone" varchar(50),
  "data_matricula" date,
  "forma_pagamento" varchar(50),
  "turma_id" int
);

CREATE TABLE "cursos" (
  "id" int PRIMARY key,
  "curso_id" int,
  "facilitador_id" int,
  "modulo_id" int,
  "nome_curso" varchar(50),
  "status" varchar(20)
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
  "turma_id" int,
  "facilitacao" varchar(50),
  "modulo_id" int,
  "curso_id" int
 );

CREATE TABLE "modulos" (
  "modulo_id" serial PRIMARY KEY,
  "facilitador_id" int,
  "ementa" varchar(500),
  "data_inicial" date,
  "data_final" date
);

CREATE TABLE "turma" (
  "turma_id" serial PRIMARY KEY,
  "aluno_id" int,
  "facilitador_id" int,
  "nome_turma" varchar(50)
);

CREATE TABLE "resilientes" (
  "resilientes_id" serial PRIMARY KEY,
  "aluno_id" int,
  "modulo_id" int,
  "curso_id" int,
  "avaliacao" int
);

ALTER TABLE "alunos" ADD FOREIGN KEY ("curso_id") REFERENCES "cursos" ("curso_id");

ALTER TABLE "alunos" ADD FOREIGN KEY ("turma_id") REFERENCES "turma" ("turma_id");

ALTER TABLE "cursos" ADD FOREIGN KEY ("facilitador_id") REFERENCES "facilitadores" ("facilitador_id");

ALTER TABLE "cursos" ADD FOREIGN KEY ("modulo_id") REFERENCES "modulos" ("modulo_id");

ALTER TABLE "facilitadores" ADD FOREIGN KEY ("turma_id") REFERENCES "turma" ("turma_id");

ALTER TABLE "facilitadores" ADD FOREIGN KEY ("modulo_id") REFERENCES "modulos" ("modulo_id");

ALTER TABLE "facilitadores" ADD FOREIGN KEY ("curso_id") REFERENCES "cursos" ("curso_id");

ALTER TABLE "modulos" ADD FOREIGN KEY ("facilitador_id") REFERENCES "facilitadores" ("facilitador_id");

ALTER TABLE "turma" ADD FOREIGN KEY ("aluno_id") REFERENCES "alunos" ("aluno_id");

ALTER TABLE "turma" ADD FOREIGN KEY ("facilitador_id") REFERENCES "facilitadores" ("facilitador_id");

ALTER TABLE "resilientes" ADD FOREIGN KEY ("aluno_id") REFERENCES "alunos" ("aluno_id");

ALTER TABLE "resilientes" ADD FOREIGN KEY ("modulo_id") REFERENCES "modulos" ("modulo_id");

ALTER TABLE "resilientes" ADD FOREIGN KEY ("curso_id") REFERENCES "cursos" ("curso_id");

INSERT INTO 
	alunos (curso_id,turma_id,nome,cpf,genero,estado,data_nascimento,telefone,data_matricula,forma_pagamento)
VALUES
	(1,14,'Davi Luiz Cardoso','42758524783','Masculino','Ceará-CE','1998-04-27','(85)-937882655','2021-02-14','ISA'),
	(2,8,'Otávio Nunes','47367561790','Masculino','Maranhão-MA','1990-02-14','(98)-987882911','2022-03-16','ISA'),
	(2,4,'Sofia das Neves','66456340802','Feminino','Paraíba-PB','2001-07-03','(83)-908992655','2021-03-20','Parcelado durante o curso'),
	(2,5,'Sophia Pinto','22349632814','Não-Binário','Mato Grosso do Sul-MS','1996-06-10','(67)-967226651','2022-02-22','Parcelado durante o curso'),
	(1,12,'Miguel Melo','90083364722','Masculino','Santa Catarina-SC','1996-01-05','(48)-972817726','2021-03-05','ISA'),
	(1,15,'Yuri Nascimento','28816726717','Não-Binário','Minas Gerais-MG','1998-06-15','(31)-976227188','2021-03-22','Parcelado durante o curso'),
	(2,2,'Maria Clara Silva','71889360805','Feminino','Minas Gerais-MG','2001-09-21','(31)-967228153','2022-02-18','ISA'),
	(1,18,'Murilo Fernandes','71889360805','Masculino','Maranhão-MA','1994-08-08','(98)-909227716','2022-03-26','Parcelado durante o curso'),
	(1,15,'Evelyn Rodrigues','10953541088','Feminino','Paraná-PR','1997-03-18','(41)-972881093','2021-02-17','Parcelado durante o curso'),
	(2,9,'Isabel das Neves','51577807022','Feminino','Rio de Janeiro-RJ','1999-05-17','(21)-910243618','2021-03-09','ISA'),
	(1,19,'Caroline Santos','26622938024','Feminino','Pernambuco-PE','1992-04-12','(87)-926337281','2022-01-19','A vista'),
	(2,3,'Bryan Moreira','09178064090','Não-Binário','Rio de Janeiro-RJ','2000-10-15','(21)-963728163','2021-01-25','ISA'),
	(2,9,'Heitor Freitas','98351025038','Masculino','Goiás-GO','2000-12-04','(64)-967223529','2022-01-16','A vista'),
	(1,10,'Danilo Melo','57999185094','Masculino','Pernambuco-PE','2001-06-17','(87)-942568732','2022-02-15','A vista'),
	(1,7,'Luiz Otávio Novaes','55689421022','Masculino','Maranhão-MA','2000-09-24','(98)-932115275','2021-03-06','ISA'),
	(1,2,'Leandro Costa','26402375004','Masculino','Paraná-PR','1996-05-19','(41)-972663826','2021-04-02','ISA'),
	(1,12,'Vitor Gabriel Campos','82871343071','Masculino','Goiás-GO','1999-04-28','(64)-964772816','2022-04-06','Parcelado durante o curso'),
	(2,1,'Caroline Duarte','10172536090','Feminino','Rio de Janeiro-RJ','1998-08-18','(21)-902837190','2021-04-16','ISA'),
	(2,12,'Francisco Correia','48427832060','Não-Binário','Pernambuco-PE','1997-02-03','(87)-902816432','2022-01-27','ISA'),
	(1,13,'Maria Sophia Caldeira','15546443057','Feminino','Rio de Janeiro-RJ','2000-01-09','(21)-967365241','2020-04-17','A vista'),
	(2,11,'Luiz Miguel Duarte','54891119098','Masculino','São Paulo-SP','1995-08-19','(11)-982736219','2020-03-19','ISA'),
	(1,11,'Larissa Lopes','28136999007','Feminino','Pernambuco-PE','1997-05-15','(87)-982098126','2020-01-25','ISA'),
	(2,2,'Mariana Fernandes','64042614051','Feminino','São Paulo-SP','2001-03-28','(11)-964832090','2021-03-22','Parcelado durante o curso'),
	(2,7,'Gabrielly da Cruz','88216516061','Feminino','Rio de Janeiro-RJ','1999-08-19','(21)-910435267','2020-04-12','ISA'),
	(1,20,'Kaique Rocha','99608483026','Masculino','Goiás-GO','1996-09-12','(64)-985650485','2020-02-19','ISA'),
	(1,18,'Maria Fernanda da Luz','92150664038','Feminino','Rio de Janeiro-RJ','2001-09-23','(21)-964768739','2022-04-08','Parcelado durante o curso'),
	(2,8,'Davi Luiz Freitas','73277436004','Não-Binário','Rio Grande do Sul-RS','1990-12-12','(51)-909378365','2020-02-19','Parcelado durante o curso'),
	(2,7,'Camila Campos','73314871082','Feminino','Espírito Santo-ES','1999-07-08','(27)-909820164','2021-04-18','ISA'),
	(2,20,'Yasmin da Rocha','13994803080','Feminino','São Paulo-SP','2000-08-16','(11)-987291816','2020-03-22','Parcelado durante o curso'),
	(1,14,'Yago Pinto','45766616040','Masculino','Paraná-PR','1998-11-10','(41)-973654364','2021-05-01','ISA'),
	(2,6,'Luiz Felipe Viana','53211436090','Masculino','São Paulo-SP','1998-07-02','(11)-961998276','2020-05-02','ISA'),
	(1,20,'Marcela Mota','82442780054','Feminino','Paraná-PR','2001-06-17','(41)-976378251','2022-02-12','ISA'),
	(1,5,'Renan Moraes','09476496037','Masculino','Rio de Janeiro-RJ','1993-05-13','(21)-930405722','2020-03-18','Parcelado durante o curso'),
	(1,17,'Pietra Porto','44420972084','Feminino','Paraná-PR','1996-04-17','(41)-987892256','2021-04-02','Parcelado durante o curso'),
	(2,16,'Mariana Martins','51514057050','Feminino','São Paulo-SP','2001-12-04','(11)-903026752','2022-02-26','Parcelado durante o curso');

INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (1,1,7,1,'Data analytics', 'Em andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (2,1,9,2,'Data analytics','Concluído');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (3,2,8,3,'Data analytics','Não Iniciado');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (4,2,10,4,'Data analytics','Não Iniciado');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (5,1,19,5,'Data analytics','Concluído');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (6,2,20,1,'Data analytics', 'Em andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (7,2,7,5,'Data analytics','Concluído');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (8,1,8,4,'Data analytics','Não Iniciado');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (9,2,9,3,'Data analytics', 'Em andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (10,1,10,2,'Data analytics', 'Em andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (11,2,19,1,'Data analytics','Concluído');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (12,1,20,5,'Data analytics','Concluído');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (13,1,20,5,'Data analytics', 'Em andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (14,1,19,4,'Data analytics', 'Em andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (15,1,10,4,'Data analytics','Concluído');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (16,2,2,3,'WebDev Full Stack', 'Em Andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (17,2,17,3,'WebDev Full Stack', 'Concluído');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (18,2,18,3,'WebDev Full Stack', 'Não Iniciado');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (19,2,3,2,'WebDev Full Stack', 'Concluído');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (20,2,5,2,'WebDev Full Stack', 'Concluído');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (21,1,4,1,'WebDev Full Stack', 'Não Iniciado');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (22,2,1,1,'WebDev Full Stack', 'Em Andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (23,1,14,1,'WebDev Full Stack', 'Em Andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (24,2,15,1,'WebDev Full Stack', 'Concluído');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (25,1,15,2,'WebDev Full Stack', 'Não Iniciado');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (26,2,4,2,'WebDev Full Stack', 'Não Iniciado');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (27,1,13,3,'WebDev Full Stack', 'Não Iniciado');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (28,2,12,3,'WebDev Full Stack', 'Em Andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (29,1,6,5,'WebDev Full Stack', 'Em Andamento');
INSERT INTO cursos (id,curso_id,facilitador_id,modulo_id,nome_curso,status) VALUES (30,2,1,2,'WebDev Full Stack', 'Em Andamento');

INSERT INTO facilitadores (nome, cpf, genero, data_nascimento, telefone, email, frente, turma_id, facilitacao, modulo_id, curso_id) 
VALUES 
	('Andreia Gabrielly Olivia Drumond','374.745.875-05','Feminino','1945/07/19','(88) 98151-7771','andreia_gabrielly_drumond@nhrtaxiaereo.com','WebDev Full Stack', 1, 'Soft Skill',1,2),
	('Renan Edson Nascimento','851.862.451-78','Masculino','1973/08/25','(69) 98842-8159','renan_nascimento@metroquali.com.br','WebDev Full Stack', 1, 'Hard Skill',1,2),
	('Alícia Fabiana Andreia da Conceição','038.347.549-00','Feminino','1945/07/10','(21) 99809-6173','alicia_fabiana_daconceicao@tam.com.br','WebDev Full Stack', 2,'Soft Skill',2,1),
	('Elias Cauê Raul Oliveira','226.637.080-46','Masculino','1943/08/23','(67) 99813-8748','elias.caue.oliveira@igly.com.br','WebDev Full Stack', 2, 'Hard Skill',2,1),
	('Bárbara Heloisa Lima','898.714.207-81','Feminino','1950/06/15','(84) 99910-9447','barbaraheloisalima@cernizza.com.br','WebDev Full Stack', 3,'Soft Skill',3,2),
	('Caio Thales Silva','188.762.519-44','Masculino','1969/06/16','(63) 98441-8185','caio-silva79@dinamicaconsultoria.com','WebDev Full Stack', 3, 'Hard Skill',3,1),
	('Carolina Sophia Costa','136.725.587-22','Feminino','1997/03/26','(82) 98277-8032','carolina_sophia_costa@focusgrafica.com.br','Data Analytics', 4,'Soft Skill',1,2),
	('Joaquim Emanuel Mendes','875.751.797-55','Masculino','1997/04/15','(92) 99481-3604','joaquimemanuelmendes@fertility.com.br','Data Analytics', 4, 'Hard Skill',1,1),
	('Isabella Julia Duarte','165.206.636-54','Feminino','1997/02/17','(81) 98509-5871','isabella_duarte@cladm.com.br','Data Analytics', 5,'Soft Skill',2,1),
	('Miguel Tomás Figueiredo','089.376.662-35','Masculino','1996/04/25','(21) 99403-6878','miguel.tomas.figueiredo@uou.com.br','Data Analytics', 5, 'Hard Skill',2,2),
	('Paulo Paulo Galvão','420.605.282-40', 'Masculino','1995/02/04','(48) 98668-9943','paulo-galvao79@bom.com.br','WebDev Full Stack', 6,'Soft Skill',4,2),
	('Silvana Luiza Camila Ribeiro','699.133.088-44', 'Feminino','1995/02/04','(69) 99779-1814','silvana-ribeiro96@atento.com.br','WebDev Full Stack', 6, 'Hard Skill',4,2),
	('Vera Joana Barros','225.312.784-19', 'Feminino','1995/04/19','(34) 99536-9463','vera_joana_barros@pss.adv.br','WebDev Full Stack', 7, 'Soft Skill',5,1),
	('Isis Regina Nogueira','454.866.359-23', 'Feminino','1995/07/22','(71) 99588-3562','isis-nogueira82@structureesquadrias.com.br','WebDev Full Stack', 7, 'Hard Skill',5,2),
	('Stefany Gabrielly Fabiana Novaes','306.182.117-13', 'Feminino','1993/07/16','(99) 99601-4365','stefanygabriellynovaes@gracomonline.com.br','WebDev Full Stack', 8, 'Soft Skill',1,2),
	('Eloá Luciana da Rosa','942.494.036-02', 'Feminino','1993/08/24','(95) 98502-3469','eloa.luciana.darosa@termakui.com.br','WebDev Full Stack', 8, 'Hard Skill',1,2),
	('Cláudio Vinicius Raimundo Barros','021.765.428-27', 'Masculino','1993/06/15','(68) 98374-9776','claudio-barros95@newpark.com','WebDev Full Stack', 9, 'Soft Skill',2,1),
	('Alana Letícia Juliana Jesus','070.326.358-73', 'Feminino','1992/01/12','(81) 99928-5763','alana_leticia_jesus@deltaturismo.com.br','WebDev Full Stack', 9, 'Hard Skill',2,1),
	('Davi Oliver Caldeira','714.328.909-48', 'Masculino','1989/02/02','(47) 98844-0782','davi.oliver.caldeira@portalpublicidade.com.br','Data Analytics', 10, 'Soft Skill',3,2),
	('Nathan Sebastião Drumond','916.274.162-42', 'Masculino','1989/02/15','(61) 99496-3062','nathan.sebastiao.drumond@eclatt.com.br','Data Analytics', 10, 'Hard Skill',3,2);
	
INSERT INTO modulos (modulo_id,facilitador_id,"ementa",data_inicial,data_final) VALUES (1,1, 'Introdução à lógica de programação para dados e preparação para
Processos Seletivos','2021-09-01','2021-10-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (2,1, 'Estrutura de dados e Inteligência emocional','2020-05-01','2020-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (3,1, 'Modelos de armazenamento de dados e Relacionamento Interpessoal','2020-06-01','2020-07-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (4,2, 'Análise e visualização de dados e Metodologias Ágeis','2020-07-01','2020-08-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (5,2,'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação','2020-08-01', '2020-09-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (6,2, 'Estrutura de dados e Inteligência emocional','2021-05-01','2021-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (7,3, 'Estrutura de dados e Inteligência emocional','2020-07-01','2020-08-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (8,3, 'Introdução à lógica de programação para dados e preparação para
Processos Seletivos','2021-08-01','2021-09-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (9,3, 'Análise e visualização de dados e Metodologias Ágeis','2015-05-01','2015-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (10,4, 'Análise e visualização de dados e Metodologias Ágeis','2015-06-01','2015-07-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (11,4, 'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação','2015-07-01','2015-08-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (12,4, 'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação','2015-08-01','2015-09-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (13,5, 'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação','2015-09-01','2015-10-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (14,5, 'Modelos de armazenamento de dados e Relacionamento Interpessoal','2016-08-01','2106-9-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (15,5, 'Modelos de armazenamento de dados e Relacionamento Interpessoal','2016-05-01','2016-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (16,6, 'Modelos de armazenamento de dados e Relacionamento Interpessoal','2016-06-01','2016-07-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (17,6, 'Estrutura de dados e Inteligência emocional','2014-05-01','2014-05-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (18,6, 'Estrutura de dados e Inteligência emocional','2013-08-01','2013-08-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (19,1, 'Estrutura de dados e Inteligência emocional','2022-09-01','2022-10-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (20,2, 'Introdução à lógica de programação para dados e preparação para
Processos Seletivos','2017-05-01','2017-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (21,3, 'Modelos de armazenamento de dados e Relacionamento Interpessoal','2018-09-01','2018-10-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (22,4, 'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação','2018-06-01','2018-07-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (23,5, 'Estrutura de dados e Inteligência emocional','2019-05-01','2019-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (24,6, 'Estrutura de dados e Inteligência emocional','2022-06-01','2022--7-01');

insert into turma (aluno_id, facilitador_id, nome_turma)
values 
	(1,1,'T1'), 
	(2,2,'T2'),
	(3,2,'T3'),
	(4,4,'T4'),
	(5,2,'T5'),
	(6,6,'T6'),
	(7,7,'T7'),
	(8,8,'T8'),
	(9,8,'T9'),
	(10,10,'T10'),
	(11,11,'T11'),
	(12,12,'T12'),
	(13,13,'T13'),
	(14,14,'T14'),
	(15,15,'T15'),
	(16,16,'T16'),
	(17,17,'T17'),
	(18,18,'T18'),
	(19,19,'T19'),
	(20,20,'T20');
	
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (18,1,2,7);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (7,2,2,5);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (16,3,1,8);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (23,4,2,10);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (12,5,2,2);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (3,2,2,4);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (4,2,2,5);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (33,3,1,9);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (31,4,2,6);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (15,1,1,7);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (24,2,2,4);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (28,2,2,3);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (2,4,2,10);
INSERT INTO resilientes (aluno_id,modulo_id,curso_id,avaliacao) VALUES (27,5,2,10);