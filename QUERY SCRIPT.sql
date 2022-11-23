-- SELECT COM JOIN
SELECT a.nome, e.cep, e.logradouro, e.numero, e.complemento, e.bairro, e.cidade, e.uf 
from lab_school.aluno a
INNER JOIN lab_school.endereco e ON e.id = a.endereco_id
ORDER BY a.nome;

SELECT a.nome, p.nome
FROM lab_school.aluno a
INNER JOIN  lab_school.atendimento_pedagogico t ON
t.aluno_id = a.id 
INNER JOIN lab_school.pedagogo p ON
t.pedagogo_id = p.id;


-- SELECT endereco
SELECT bairro FROM lab_school.endereco
WHERE uf='SC';

SELECT id, cep FROM lab_school.endereco
WHERE uf!='SC';

SELECT logradouro, bairro FROM lab_school.endereco
WHERE cidade='Florianópolis' OR cidade='São José dos Ausentes';

SELECT id, cep,logradouro, uf FROM lab_school.endereco
WHERE bairro!='Centro' AND uf!='SC';

SELECT id, cep,logradouro,numero,complemento,bairro FROM lab_school.endereco
WHERE uf IN ('SC','TO','DF','GO');

-- SELECT aluno
SELECT nome, cpf, nota_processo_seletivo FROM lab_school.aluno
WHERE nota_processo_seletivo>=6 AND estado_matricula='ATIVA'
ORDER BY nome;

SELECT id, nome, telefone FROM lab_school.aluno
WHERE estado_matricula = 'INATIVA'
ORDER BY nome;

SELECT nome, cpf, telefone, data_nascimento FROM lab_school.aluno
WHERE data_nascimento>='1980-01-01' AND data_nascimento<='2000-12-31'
ORDER BY data_nascimento;

SELECT nome, estado_matricula, nota_processo_seletivo FROM lab_school.aluno
ORDER BY nota_processo_seletivo DESC;

SELECT nome, nota_processo_seletivo FROM lab_school.aluno
WHERE estado_matricula = 'ATIVA'
ORDER BY nota_processo_seletivo ASC;

-- SELECT professor
SELECT nome, cpf, experiencia_anos FROM lab_school.professor
WHERE experiencia_anos>=6 AND ativo_sistema='Sim'
ORDER BY nome;

SELECT id, nome, telefone FROM lab_school.professor
WHERE ativo_sistema = 'Não'
ORDER BY nome;

SELECT nome, cpf, telefone, data_nascimento, formacao_professor FROM lab_school.professor
WHERE data_nascimento>='1965-01-01' AND data_nascimento<='2000-12-31'
ORDER BY formacao_professor;

SELECT nome, experiencia_anos, formacao_professor, data_nascimento FROM lab_school.professor
ORDER BY data_nascimento DESC;

SELECT nome, experiencia_anos FROM lab_school.professor
WHERE ativo_sistema = 'Sim'
ORDER BY experiencia_anos ASC;

-- SELECT pedagogo
SELECT nome, cpf, telefone FROM lab_school.pedagogo
WHERE ativo_sistema='Não'
ORDER BY nome;

SELECT id, nome,data_nascimento FROM lab_school.pedagogo
WHERE data_nascimento>'1980-01-01' AND data_nascimento<'1995-12-31'
ORDER BY data_nascimento;

SELECT nome, cpf, telefone, data_nascimento FROM lab_school.pedagogo
WHERE data_nascimento>='1965-01-01' AND ativo_sistema = 'Não'
ORDER BY nome;

SELECT nome, data_nascimento FROM lab_school.pedagogo
ORDER BY data_nascimento DESC;

SELECT nome,cpf FROM lab_school.pedagogo
WHERE ativo_sistema = 'Sim'
ORDER BY cpf ASC;

-- SELECT atendimento_pedagogico
SELECT id, pedagogo_id, aluno_id FROM lab_school.atendimento_pedagogico
WHERE categoria_atendimento='OUTROS' AND ativo_sistema='Sim'
ORDER BY id;

SELECT a.nome, p.nome
FROM lab_school.aluno a
INNER JOIN  lab_school.atendimento_pedagogico t ON
t.aluno_id = a.id AND t.categoria_atendimento = 'DISCIPLINAR'
INNER JOIN lab_school.pedagogo p ON
t.pedagogo_id = p.id;

SELECT a.nome,a.data_nascimento, p.nome, p.data_nascimento, t.categoria_atendimento
FROM lab_school.aluno a
INNER JOIN  lab_school.atendimento_pedagogico t ON
t.aluno_id = a.id AND t.categoria_atendimento != 'DISCIPLINAR' AND t.ativo_sistema='Sim'
INNER JOIN lab_school.pedagogo p ON
t.pedagogo_id = p.id;

SELECT a.nome,a.data_nascimento, a.cpf, a.telefone, t.categoria_atendimento
FROM lab_school.aluno a
INNER JOIN  lab_school.atendimento_pedagogico t ON
t.aluno_id = a.id
INNER JOIN lab_school.pedagogo p ON
t.pedagogo_id = p.id AND p.ativo_sistema = 'Sim';

SELECT id, titulo, descricao FROM lab_school.atendimento_pedagogico
WHERE categoria_atendimento = 'SOCIAL';
