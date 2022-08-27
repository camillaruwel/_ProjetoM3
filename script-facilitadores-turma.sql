/*
 * CRIAÇÃO DAS TABELAS (ENTIDADES E ATRIBUTOS) 
 */
CREATE TABLE "facilitadores" (
  "facilitador_id" serial PRIMARY KEY,
  "nome" varchar(100),
  "CPF" varchar(14),
  "genero" varchar(15),
  "data_nascimento" date,
  "telefone" varchar(50),
  "email" varchar(100),
  "frente" varchar(50),
  "turma_id" int,
  "facilitacao" varchar(50),
  "modulo_id" int,
  "curso_id" int
  
CONSTRAINT fk_turma_id FOREIGN KEY (turma_id) REFERENCES turma (turma_id),
CONSTRAINT fk_modulo_id FOREIGN KEY (modulo_id) REFERENCES modulo (modulo_id),
CONSTRAINT fk_curso_id FOREIGN KEY (curso_id) REFERENCES cursos (turma_id)
  );

CREATE TABLE "turma" (
  "turma_id" serial PRIMARY KEY,
  "aluno_id" int,
  "facilitador_id" int,
  "nome_turma" varchar(50)
  
CONSTRAINT fk_aluno_id FOREIGN KEY (aluno_id) REFERENCES alunos (aluno_id),
CONSTRAINT fk_facilitador_id FOREIGN KEY (facilitador_id) REFERENCES facilitadores (facilitador_id),
);


/*
* INSERÇÃO DOS DADOS FACILITADORES 
*/
INSERT INTO facilitadores (nome, "CPF", genero, data_nascimento, telefone, email, frente, turma_id, facilitacao, modulo_id, curso_id) 
VALUES 
	('Andreia Gabrielly Olivia Drumond','374.745.875-05','Feminino','1945/07/19','(88) 98151-7771','andreia_gabrielly_drumond@nhrtaxiaereo.com','WebDev Full Stack', 01, 'Soft Skill',01,02),
	('Renan Edson Nascimento','851.862.451-78','Masculino','1973/08/25','(69) 98842-8159','renan_nascimento@metroquali.com.br','WebDev Full Stack', 01, 'Hard Skill',01,02),
	('Alícia Fabiana Andreia da Conceição','038.347.549-00','Feminino','1945/07/10','(21) 99809-6173','alicia_fabiana_daconceicao@tam.com.br','WebDev Full Stack', 02,'Soft Skill',02,01),
	('Elias Cauê Raul Oliveira','226.637.080-46','Masculino','1943/08/23','(67) 99813-8748','elias.caue.oliveira@igly.com.br','WebDev Full Stack', 02, 'Hard Skill',02,01),
	('Bárbara Heloisa Lima','898.714.207-81','Feminino','1950/06/15','(84) 99910-9447','barbaraheloisalima@cernizza.com.br','WebDev Full Stack', 03,'Soft Skill',03,02),
	('Caio Thales Silva','188.762.519-44','Masculino','1969/06/16','(63) 98441-8185','caio-silva79@dinamicaconsultoria.com','WebDev Full Stack', 03, 'Hard Skill',03,01),
	('Carolina Sophia Costa','136.725.587-22','Feminino','1997/03/26','(82) 98277-8032','carolina_sophia_costa@focusgrafica.com.br','Data Analytics', 04,'Soft Skill',01,02),
	('Joaquim Emanuel Mendes','875.751.797-55','Masculino','1997/04/15','(92) 99481-3604','joaquimemanuelmendes@fertility.com.br','Data Analytics', 04, 'Hard Skill',01,01),
	('Isabella Julia Duarte','165.206.636-54','Feminino','1997/02/17','(81) 98509-5871','isabella_duarte@cladm.com.br','Data Analytics', 05,'Soft Skill',02,01),
	('Miguel Tomás Figueiredo','089.376.662-35','Masculino','1996/04/25','(21) 99403-6878','miguel.tomas.figueiredo@uou.com.br','Data Analytics', 05, 'Hard Skill',02,02),
	('Paulo Paulo Galvão','420.605.282-40', 'Masculino','1995/02/04','(48) 98668-9943','paulo-galvao79@bom.com.br','WebDev Full Stack', 06,'Soft Skill',04,02),
	('Silvana Luiza Camila Ribeiro','699.133.088-44', 'Feminino','1995/02/04','(69) 99779-1814','silvana-ribeiro96@atento.com.br','WebDev Full Stack', 06, 'Hard Skill',04,02),
	('Vera Joana Barros','225.312.784-19', 'Feminino','1995/04/19','(34) 99536-9463','vera_joana_barros@pss.adv.br','WebDev Full Stack', 07, 'Soft Skill',05,01),
	('Isis Regina Nogueira','454.866.359-23', 'Feminino','1995/07/22','(71) 99588-3562','isis-nogueira82@structureesquadrias.com.br','WebDev Full Stack', 07, 'Hard Skill',05,02),
	('Stefany Gabrielly Fabiana Novaes','306.182.117-13', 'Feminino','1993/07/16','(99) 99601-4365','stefanygabriellynovaes@gracomonline.com.br','WebDev Full Stack', 08, 'Soft Skill',01,02),
	('Eloá Luciana da Rosa','942.494.036-02', 'Feminino','1993/08/24','(95) 98502-3469','eloa.luciana.darosa@termakui.com.br','WebDev Full Stack', 08, 'Hard Skill',01,02),
	('Cláudio Vinicius Raimundo Barros','021.765.428-27', 'Masculino','1993/06/15','(68) 98374-9776','claudio-barros95@newpark.com','WebDev Full Stack', 09, 'Soft Skill',02,01),
	('Alana Letícia Juliana Jesus','070.326.358-73', 'Feminino','1992/01/12','(81) 99928-5763','alana_leticia_jesus@deltaturismo.com.br','WebDev Full Stack', 09, 'Hard Skill',02,01),
	('Davi Oliver Caldeira','714.328.909-48', 'Masculino','1989/02/02','(47) 98844-0782','davi.oliver.caldeira@portalpublicidade.com.br','Data Analytics', 10, 'Soft Skill',03,02),
	('Nathan Sebastião Drumond','916.274.162-42', 'Masculino','1989/02/15','(61) 99496-3062','nathan.sebastiao.drumond@eclatt.com.br','Data Analytics', 10, 'Hard Skill',03,02);

/*
 * INSERLÇÃO DOS DADOS TURMA
 */
select * from turma t 

insert into turma (aluno_id, facilitador_id, nome_turma)
values 
	(01,01,'T1'), 
	(02,02,'T2'),
	(03,02,'T3'),
	(04,04,'T4'),
	(05,02,'T5'),
	(06,06,'T6'),
	(07,07,'T7'),
	(08,08,'T8'),
	(09,08,'T9'),
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

CREATE TABLE "resiliente" (
  "resiliente_id" serial PRIMARY KEY,
  "aluno_id" int,
  "modulo_id" int,
  "curso_id" int,
  "avaliacao" int not null
  
FOREIGN KEY (aluno_id) REFERENCES "resiliente" (aluno_id),
FOREIGN KEY (modulo_id) REFERENCES "resiliente" (modulo_id), 
FOREIGN KEY (curso_id) REFERENCES "resiliente" (curso_id),
    
    
);

INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (18,1,2,7);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (7,2,2,5);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (16,3,1,8);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (23,4,2,10);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (12,5,2,2);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (3,2,2,4);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (4,2,2,5);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (33,3,1,9);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (31,4,2,6);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (15,1,1,7);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (24,2,2,4);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (28,2,2,3);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (2,4,2,10);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (27,5,2,10);

CREATE TABLE "cursos" (
	"curso_id" SERIAL NOT NULL,
	"aluno_id" INT NOT NULL,
	"modulo_id" INT NOT NULL,
	"nomecurso" varchar (50),
	"status" varchar(20)

FOREIGN KEY (aluno_id) REFERENCES "alunos" (aluno_id)
FOREIGN KEY (modulo_id) REFERENCES "modulos" (modulo_id)

);

INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,01,01,'Data analytics', 'Em andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,02,02,'Data analytics','Concluído');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,03,03,'Data analytics','Não Iniciado');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,04,04,'Data analytics','Não Iniciado');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,05,05,'Data analytics','Concluído');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,06,01,'Data analytics', 'Em andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,07,05,'Data analytics','Concluído');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,08,04,'Data analytics','Não Iniciado');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,09,03,'Data analytics', 'Em andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,10,02,'Data analytics', 'Em andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,11,01,'Data analytics','Concluído');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,12,05,'Data analytics','Concluído');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,13,05,'Data analytics', 'Em andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,14,04,'Data analytics', 'Em andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,15,04,'Data analytics','Concluído');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,16,03,'WebDev Full Stack', 'Em Andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,17,03,'WebDev Full Stack', 'Concluído');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,18,03,'WebDev Full Stack', 'Não Iniciado');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,19,02,'WebDev Full Stack', 'Concluído');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,20,02,'WebDev Full Stack', 'Concluído');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,21,01,'WebDev Full Stack', 'Não Iniciado');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,22,01,'WebDev Full Stack', 'Em Andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,23,01,'WebDev Full Stack', 'Em Andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,24,01,'WebDev Full Stack', 'Concluído');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,25,02,'WebDev Full Stack', 'Não Iniciado');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,26,02,'WebDev Full Stack', 'Não Iniciado');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,27,03,'WebDev Full Stack', 'Não Iniciado');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,28,03,'WebDev Full Stack', 'Em Andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (01,29,05,'WebDev Full Stack', 'Em Andamento');
INSERT INTO cursos (curso_id, aluno_id,modulo_id,nomecurso,status) VALUES (02,30,02,'WebDev Full Stack', 'Em Andamento');

CREATE TABLE "modulos" (
	"modulo_id" SERIAL NOT NULL,
	"facilitador_id" int NOT NULL,
	"ementa" varchar (500) NOT NULL,
	"data_inicial" date,
	"data_final" date

FOREIGN KEY (facilitador_id) REFERENCES "facilitadores" (facilitador_id)

);

INSERT INTO modulos (modulo_id,facilitador_id,"ementa",data_inicial,data_final) VALUES (01,01, 'Introdução à lógica de programação para dados e preparação para
Processos Seletivos','2021-09-01','2021-10-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (02,01, 'Estrutura de dados e Inteligência emocional','2020-05-01','2020-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (03,01, 'Modelos de armazenamento de dados e Relacionamento Interpessoal','2020-06-01','2020-07-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (04,02, 'Análise e visualização de dados e Metodologias Ágeis','2020-07-01','2020-08-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (05,02,'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação','2020-08-01', '2020-09-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (06, 02, 'Estrutura de dados e Inteligência emocional','2021-05-01','2021-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (07,03, 'Estrutura de dados e Inteligência emocional','2020-07-01','2020-08-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (08, 03, 'Introdução à lógica de programação para dados e preparação para
Processos Seletivos','2021-08-01','2021-09-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (09, 03, 'Análise e visualização de dados e Metodologias Ágeis','2015-05-01','2015-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (10,04, 'Análise e visualização de dados e Metodologias Ágeis','2015-06-01','2015-07-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (11, 04, 'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação','2015-07-01','2015-08-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (12, 04, 'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação','2015-08-01','2015-09-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (13, 05, 'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação','2015-09-01','2015-10-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (14, 05, 'Modelos de armazenamento de dados e Relacionamento Interpessoal','2016-08-01','2106-9-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (15, 05, 'Modelos de armazenamento de dados e Relacionamento Interpessoal','2016-05-01','2016-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (16, 06, 'Modelos de armazenamento de dados e Relacionamento Interpessoal','2016-06-01','2016-07-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (17, 06, 'Estrutura de dados e Inteligência emocional','2014-05-01','2014-05-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (18, 06, 'Estrutura de dados e Inteligência emocional','2013-08-01','2013-08-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (19, 01, 'Estrutura de dados e Inteligência emocional','2022-09-01','2022-10-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (20, 02, 'Introdução à lógica de programação para dados e preparação para
Processos Seletivos','2017-05-01','2017-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (21, 03, 'Modelos de armazenamento de dados e Relacionamento Interpessoal','2018-09-01','2018-10-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (22, 04, 'Visualização de dados com Power BI e Tableau, Postura profissional e Inovação','2018-06-01','2018-07-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (23, 05, 'Estrutura de dados e Inteligência emocional','2019-05-01','2019-06-01');
INSERT INTO modulos (modulo_id,facilitador_id,ementa,data_inicial,data_final) VALUES (24, 06, 'Estrutura de dados e Inteligência emocional','2022-06-01','2022--7-01');

CREATE TABLE alunos (
	aluno_id SERIAL NOT NULL,
	curso_id INT NOT NULL,
	turma_id INT NOT NULL,
	nome VARCHAR(100) NOT NULL,
	cpf VARCHAR(14) NOT NULL,
	genero VARCHAR(20),
	estado VARCHAR(100) NOT NULL,
	data_nascimento DATE,
	telefone VARCHAR(50),
	data_matricula DATE NOT NULL,
	forma_pagamento VARCHAR(50),
	PRIMARY KEY (aluno_id),
	CONSTRAINT alunos_fk_curso_id FOREIGN KEY (curso_id) REFERENCES cursos (curso_id),
	CONSTRAINT alunos_fk_turma_id FOREIGN KEY (turma_id) REFERENCES turma (turma_id)
);

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

