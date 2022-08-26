CREATE TABLE "resiliente" (
  "resiliente_id" serial PRIMARY KEY,
  "aluno_id" int,
  "modulo_id" varchar(5),
  "curso_id" int,
  "avaliacao" int not null
  
-- FOREIGN KEY (aluno_id) REFERENCES "resiliente" (aluno_id),
-- FOREIGN KEY (modulo_id) REFERENCES "resiliente" (modulo_id), 
-- FOREIGN KEY (curso_id) REFERENCES "resiliente" (curso_id),
    
    
);

INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (18,'x',2,7);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (7,'x',2,5);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (16,'x',1,8);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (23,'x',2,10);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (12,'x',2,2);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (3,'x',2,4);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (4,'x',2,5);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (33,'x',1,9);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (31,'x',2,6);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (15,'x',1,7);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (24,'x',2,4);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (28,'x',2,3);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (2,'x',2,10);
INSERT INTO resiliente (aluno_id,modulo_id,curso_id,avaliacao) VALUES (27,'x',2,10);