-- -----------------------------------------------------
-- Database futurodev
-- -----------------------------------------------------
CREATE DATABASE futurodev;

-- -----------------------------------------------------
-- Schema lab_school
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS lab_school;

-- -----------------------------------------------------
-- Create data types
-- -----------------------------------------------------
CREATE TYPE estado AS ENUM('RR','AP','AM','PA','AC','RO','TO','MA','PI','CE','RN',
						   'PB','PE','AL','SE','BA', 'MT', 'DF','GO','MS','MG','ES','RJ','SP','PR','SC','RS'); 

CREATE TYPE matricula AS ENUM('ATIVA','INATIVA');

CREATE TYPE ativo AS ENUM('Sim','Não');

CREATE TYPE categoria AS ENUM('DISCIPLINAR','PSICOLÓGICO','SOCIAL','OUTROS');

CREATE TYPE formacao AS ENUM('GRADUAÇÃO','PÓS-GRADUAÇÃO','MESTRADO','DOUTORADO','PÓS-DOUTORADO');

-- -----------------------------------------------------
-- Table lab_school.endereco
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS lab_school.endereco (
  id SERIAL PRIMARY KEY NOT NULL,
  cep VARCHAR(9) NOT NULL,
  logradouro VARCHAR(64) NOT NULL,
  numero VARCHAR(10) NOT NULL,
  complemento VARCHAR(45) NULL,
  bairro VARCHAR(64) NOT NULL,
  cidade VARCHAR(64) NOT NULL,
  uf estado NOT NULL
	);
	
-- -----------------------------------------------------
-- Table lab_school.aluno
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS lab_school.aluno (
  id SERIAL PRIMARY KEY NOT NULL,
  endereco_id INT NOT NULL,
  nome VARCHAR(50) NOT NULL,
  cpf VARCHAR(11) NOT NULL UNIQUE,
  data_nascimento DATE NOT NULL,
  telefone VARCHAR(11) NULL,
  estado_matricula matricula NOT NULL,
  nota_processo_seletivo INT NOT NULL
);

-- -----------------------------------------------------
-- Table lab_school.professor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS lab_school.professor (
  id SERIAL PRIMARY KEY NOT NULL,
  endereco_id INT NOT NULL,
  nome VARCHAR(50) NOT NULL,
  cpf VARCHAR(11) NOT NULL UNIQUE,
  data_nascimento DATE NOT NULL,
  telefone VARCHAR(11) NULL,
  experiencia_anos INT NOT NULL,
  ativo_sistema ativo NOT NULL,
  formacao_professor formacao NOT NULL
);

-- -----------------------------------------------------
-- Table lab_school.pedagogo
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS lab_school.pedagogo (
  id SERIAL PRIMARY KEY NOT NULL,
  endereco_id INT NOT NULL,
  nome VARCHAR(50) NOT NULL,
  cpf VARCHAR(11) NOT NULL UNIQUE,
  data_nascimento DATE NOT NULL,
  telefone VARCHAR(11) NULL,
  ativo_sistema ativo NOT NULL
);

-- -----------------------------------------------------
-- Table lab_school.atendimento_pedagogico
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS lab_school.atendimento_pedagogico (
  id SERIAL PRIMARY KEY NOT NULL,
  pedagogo_id INT NOT NULL,
  aluno_id INT NOT NULL,
  titulo VARCHAR(50) NOT NULL,
  descricao VARCHAR(500) NOT NULL,
  categoria_atendimento categoria NOT NULL,
  ativo_sistema ativo NOT NULL
);  
  
-- -----------------------------------------------------
-- Alter tables: adding FKs
-- -----------------------------------------------------
ALTER TABLE lab_school.pedagogo
ADD FOREIGN KEY (endereco_id) REFERENCES lab_school.endereco(id);

ALTER TABLE lab_school.aluno
ADD FOREIGN KEY (endereco_id) REFERENCES lab_school.endereco(id);

ALTER TABLE lab_school.professor
ADD FOREIGN KEY (endereco_id) REFERENCES lab_school.endereco(id);