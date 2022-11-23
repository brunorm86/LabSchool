-- TABELA ENDERECO
INSERT INTO
lab_school.endereco(id, cep, logradouro, numero, complemento, bairro, cidade, uf)
VALUES 
(DEFAULT,'88900-051','Avenida Sete de Setembro','2270','','Centro','Araranguá','SC'),
(DEFAULT,'88034-500','Avenida Buriti','680','Ap 120','Itacorubi','Florianópolis','SC'),
(DEFAULT,'95280-000','Rua Adelmar Vieira Velho','120','Casa','Centro','São José dos Ausentes','RS'),
(DEFAULT,'24310-550','Travessa 1º de Maio','03','Ap 22','Cantagalo','Niterói','RJ'),
(DEFAULT,'66026-025','Vila Adiel','00','Lote 2 Casa 3','Jurunas','Belém','PA'),
(DEFAULT,'77001-217','Quadra 301 Norte Avenida Teotônio Segurado','21','','Plano Diretor Norte','Palmas','TO'),
(DEFAULT,'85504-280','Rua Abel Bortot','1852','Travessa','Vila Isabel','Pato Branco','PR'),
(DEFAULT,'74786-616','Rua 04','002','Apartamento','Conjunto Residencial Irisville','Goiânia','GO'),
(DEFAULT,'49060-010','Rua Abdias Bezerra','1335','Bloco 02 Apto 34','Palestina','Aracaju','SE'),
(DEFAULT,'29112-130','Rua 10 de Abril','278','','Jardim Marilândia','Vila Velha','ES');

-- TABELA ALUNO 
INSERT INTO
lab_school.aluno(id, endereco_id, nome, cpf, data_nascimento, telefone, estado_matricula, nota_processo_seletivo)
VALUES
(DEFAULT, 10, 'José da Silva', '05074115958', '1999-01-08', '48996051385','ATIVA', 8),
(DEFAULT, 9, 'Lindiana Oliveira', '88574896358', '1989-11-08', '55996053256','ATIVA', 8.8),
(DEFAULT, 9, 'Robersvaldo Oliveira', '81723702960', '1992-12-18', '48986082262','INATIVA', 7.8),
(DEFAULT, 8, 'Esther Rosângela Duarte', '06765631984', '1994-10-11', '49993350166','INATIVA', 9.8),
(DEFAULT, 7, 'Pedro Henrique Anthony Rocha', '06599436978', '1994-03-21', '47996988105','ATIVA', 7.5),
(DEFAULT, 6, 'Sérgio Sebastião Martins', '13205248937', '1974-03-21', '48996047501','ATIVA', 6.5),
(DEFAULT, 6, 'Ana Marli Bárbara Mendes', '81931350914', '1979-03-21', '47983095885','ATIVA', 5.5),
(DEFAULT, 4, 'Julia Natália Carvalho', '18971277904', '1997-06-11', '47996516757','INATIVA', 8.0),
(DEFAULT, 3, 'Anderson Benício da Rocha', '93112961986', '1996-09-21', '49998429252','INATIVA', 9.0),
(DEFAULT, 3, 'Patrícia Liz Assunção', '68504073920', '1976-09-21', '47995256331','ATIVA', 5.0);

--TABELA PROFESSOR
INSERT INTO
lab_school.professor(id, endereco_id, nome, cpf, data_nascimento, telefone, experiencia_anos, 
					ativo_sistema, formacao_professor)
VALUES
(DEFAULT, 1, 'Josefa Sophie Ribeiro', '99084747909', '1966-09-21', '49992144735', 15,'Sim','MESTRADO'),
(DEFAULT, 2, 'Felipe Gabriel Manoel Assis', '52501845960', '1976-11-21', '48981754322', 5,'Sim','PÓS-GRADUAÇÃO'),
(DEFAULT, 3, 'Eduarda Jennifer Rodrigues', '90985736909', '1986-09-21', '48989316687', 10,'Não','DOUTORADO'),
(DEFAULT, 4, 'Renato Maya Nascimento', '03267398908', '1977-06-11', '47988843977', 20,'Não','PÓS-DOUTORADO'),
(DEFAULT, 1, 'Joaquim Luiz Tiago Figueiredo', '03267398908', '1977-06-11', '47988843977', 20,'Não','PÓS-DOUTORADO'),
(DEFAULT, 5, 'Guilherme Gael Gonçalves', '31475169973', '1957-01-19', '48989971042', 20,'Sim','DOUTORADO'),
(DEFAULT, 5, 'Guilhermina Otávia Gonçalves', '76362561937', '1977-11-11', '47983802731', 10,'Sim','PÓS-GRADUAÇÃO'),
(DEFAULT, 7, 'Fátima Luzia Isadora Pereira', '41051446937', '1997-06-11', '48982927626', 2,'Não','GRADUAÇÃO'),
(DEFAULT, 10, 'Camila Eduarda Melo', '63424139912', '1987-01-19', '48994435456', 10,'Não','DOUTORADO'),
(DEFAULT, 8, 'Daniel Luan Nathan Aragão', '03963059974', '2000-02-21', '47996639340', 1,'Sim','PÓS-GRADUAÇÃO');

--TABELA PEDAGOGO
INSERT INTO
lab_school.pedagogo(id, endereco_id, nome, cpf, data_nascimento, telefone, ativo_sistema)
VALUES
(DEFAULT, 9,'Cecília Daniela Marlene Araújo','25830014939','1990-12-22','47983989980','Sim'),
(DEFAULT, 9,'Eduarda Nina Hadassa Castro','56503870957','1970-10-22','47983643154','Sim'),
(DEFAULT, 2,'Arthur Thales Matheus Nunes','55070752987','1980-09-12','49992158232','Não'),
(DEFAULT, 4,'Benjamin Giovanni Benjamin da Mata','10346567912','1987-02-22','48991468023','Não'),
(DEFAULT, 1,'Renan Martin da Rosa','97054561945','1989-04-02','48985236785','Sim'),
(DEFAULT, 3,'Eduarda Beatriz Almada','73040476904','1999-04-02','49987186664','Sim'),
(DEFAULT, 10,'Rosângela Heloise Aparício','03259402900','1979-11-02','47982948630','Sim'),
(DEFAULT, 6,'Gabriela Lavínia Camila Silva','99825062932','1988-08-28','47989610405','Não'),
(DEFAULT, 7,'Anderson Noah Almeida','49863313963','1981-01-18','48999233379','Não'),
(DEFAULT, 7,'Letícia Isis Ayla Monteiro','03406069916','1991-01-18','48998660364','Sim');

--TABELA ATENDIMENTO_PEDAGOGICO
INSERT INTO
lab_school.atendimento_pedagogico(id, pedagogo_id, aluno_id, titulo, descricao, categoria_atendimento, ativo_sistema)
VALUES
(DEFAULT, 1,2, 'Problemas de Disciplina', 'Aluno com problemas de comportamento nas aulas', 'DISCIPLINAR', 'Sim'),
(DEFAULT, 8,10,'Dúvidas sobre conteúdo', 'Tira-dúvidas sobre Matemática','OUTROS','Não'),
(DEFAULT, 3,7, 'Problemas de Comportamento', 'Aluno com problemas de comportamentos', 'DISCIPLINAR', 'Não'),
(DEFAULT, 4,7,'Dúvidas sobre conteúdos', 'Tira-dúvidas sobre Matemática e Física','OUTROS','Sim'),
(DEFAULT, 5,2, 'Problemas Psicológicos', 'Aluno alega ataques de pânico', 'PSICOLÓGICO', 'Sim'),
(DEFAULT, 5,6,'Problemas de Atenção', 'Aluno com suspeita de TDAH','PSICOLÓGICO','Não'),
(DEFAULT, 7,7, 'Solicitação de auxílio-transporte', 'Aluna solicita auxílio-transporte para si e irmão', 'SOCIAL', 'Sim'),
(DEFAULT, 6,7,'Resolução de conflitos', 'Alunos se brigaram na hora do recreio','DISCIPLINAR','Sim'),
(DEFAULT, 9,2, 'Problemas Psicológicos', 'Aluno alega depressão', 'PSICOLÓGICO', 'Sim'),
(DEFAULT, 10,6,'Violência familiar', 'Aluna alega sofrer abusos do padrasto','SOCIAL','Não');
