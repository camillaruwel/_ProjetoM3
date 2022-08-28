-- PERGUNTA 1: Quantidade total de estudantes cadastrados no banco
select count(distinct aluno_id) as alunos from alunos as a;

-- PERGUNTA 2: Estudantes e seus respectivos cursos
select 
	a.nome,
	c.nome_curso 
from alunos as a
left join turma as t 
	on t.turma_id = a.turma_id 
left join cursos as c 
	on c.curso_id = t.curso_id 
order by 1

-- PERGUNTA 3: Pessoas facilitadoras que atuam em mais de uma turma
select 
	f.nome,
	f.facilitacao,
	al.turma_id,
	lower(m.ementa) as ementa  
from facilitadores as f
left join alocacao as al
	on al.facilitador_id = f.facilitador_id 
left join modulos as m 
	on m.modulo_id = al.modulo_id 
where al.turma_id is not null

-- PERGUNTA 4: Qual estado BR possui mais alunos cadastrados?
select 
	estado,
	count(distinct aluno_id) as alunos
from alunos as a
group by 1
order by 2 desc

-- PERGUNTA 5: Qual estado BR possui mais alunos?
select 
	c.nome_curso,
	avg(r.avaliacao) as nota 
from resilientes as r
left join alunos as a 
	on a.aluno_id = r.aluno_id 
left join turma as t 
	on t.turma_id = a.turma_id 
left join cursos as c 
	on c.curso_id = t.curso_id 
group by 1
order by 2 desc


-- PERGUNTA 6: Qual a média da nota atribuída ao curso pelos alunos?
select 
	f.nome,
	f.frente,
	f.facilitacao 
from facilitadores as f
left join alocacao as al
	on al.facilitador_id = f.facilitador_id 
where al.data_inicio_modulo >= date('2022-06-01')
and al.data_final_modulo <= date('2022-09-01')

-- PERGUNTA 7: De Milhões 🌽(Quais alunos (e suas respectivas turmas) que já concluiram o curso?)
select
    a.nome,
    t.nome_turma,
    c.nome_curso,
    t.status
from alunos as a
left join turma as t
	on a.turma_id = t.turma_id
left join cursos as c 
	on c.curso_id = t.curso_id 
group by 1,2,3,4
having t.status = 'Concluído'
order by 2 desc;
