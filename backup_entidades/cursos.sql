CREATE TABLE "cursos" (
	"curso_id" SERIAL NOT NULL,
	"aluno_id" INT NOT NULL,
	"modulo_id" INT NOT NULL,
	"nomecurso" varchar (50),
	"status" varchar(20)

-- FOREIGN KEY (aluno_id) REFERENCES "alunos" (aluno_id)
-- FOREIGN KEY (modulo_id) REFERENCES "modulos" (modulo_id)

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


																		  
