CREATE TABLE "modulos" (
	"modulo_id" SERIAL NOT NULL,
	"facilitador_id" int NOT NULL,
	"ementa" varchar (500) NOT NULL,
	"data_inicial" date,
	"data_final" date

-- FOREIGN KEY (facilitador_id) REFERENCES "facilitadores" (facilitador_id)

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

