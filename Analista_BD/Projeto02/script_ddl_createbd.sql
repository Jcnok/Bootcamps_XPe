-- Remove o BD se necessário --
-- DROP DATABASE bdproducoes;
 
 -- Criando o banco de dados: --
 CREATE SCHEMA IF NOT EXISTS `BDProducoes` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
 
 -- Seleciona o bdproducoes --
 use bdproducoes;
 
 -- Criando a tabela pessoa --
 CREATE TABLE IF NOT EXISTS Pessoa (
  cod_pessoa INT PRIMARY KEY,
  nom_pessoa VARCHAR(500) NOT NULL,
  ano_nascimento INT NULL,
  ano_falescimento INT NULL,
  dsc_profissao VARCHAR(1000) NULL
);

-- Criando a tabela titulo --
CREATE TABLE IF NOT EXISTS `bdproducoes`.`Titulo` (
  cod_titulo INT NOT NULL PRIMARY KEY,
  nom_titulo VARCHAR(1000) NULL  
);

-- Criando a tabela Direcao --
CREATE TABLE IF NOT EXISTS Direcao (
  cod_direcao INT PRIMARY KEY AUTO_INCREMENT,
  cod_titulo INT NOT NULL,
  cod_pessoa INT NOT NULL,
  FOREIGN KEY (cod_pessoa) REFERENCES Pessoa(cod_pessoa),
  FOREIGN KEY (cod_titulo) REFERENCES Titulo(cod_titulo)
);

-- Criando a tabela Titulo_detalhe --
CREATE TABLE IF NOT EXISTS Titulo_Detalhe (
  cod_titulo INT NOT NULL,
  tip_titulo VARCHAR(100) NOT NULL,
  nom_principal_titulo VARCHAR(1000) NOT NULL,
  nom_original_titulo VARCHAR(1000) NOT NULL,
  ind_adulto BIT NOT NULL,
  ano_lancamento INT NOT NULL,
  qtd_minutos SMALLINT NULL,
  dsc_genero VARCHAR(1000) NULL,
  genero VARCHAR(50) NOT NULL,
  FOREIGN KEY (cod_titulo) REFERENCES Titulo(cod_titulo)
);

-- Criando a tabela Elenco --
CREATE TABLE IF NOT EXISTS Elenco (
  cod_elenco INT PRIMARY KEY AUTO_INCREMENT,
  cod_titulo INT NOT NULL,
  cod_pessoa INT NOT NULL,
  dsc_funcao VARCHAR(1000) NOT NULL,
  dsc_personagem VARCHAR(1000) NOT NULL,
  FOREIGN KEY (cod_titulo) REFERENCES Titulo(cod_titulo),
  FOREIGN KEY (cod_pessoa) REFERENCES Pessoa(cod_pessoa)
);

-- Criando a tabela Autoria --
CREATE TABLE IF NOT EXISTS Autoria (
  cod_autoria INT PRIMARY KEY AUTO_INCREMENT,
  cod_titulo INT NOT NULL,
  cod_pessoa INT NOT NULL,
  FOREIGN KEY (cod_titulo) REFERENCES Titulo(cod_titulo),
  FOREIGN KEY (cod_pessoa) REFERENCES Pessoa(cod_pessoa)
);

-- Criando a tabela Avaliacao --
CREATE TABLE IF NOT EXISTS Avaliacao (
  cod_titulo INT NOT NULL,
  classificacao_media INT NOT NULL,
  qtd_votos INT NOT NULL,
  FOREIGN KEY (cod_titulo) REFERENCES Titulo(cod_titulo)
);

-- 3. Script DDL para garantir que todos os títulos tenham nome. --
ALTER TABLE titulo
MODIFY COLUMN nom_titulo VARCHAR(1000) NOT NULL;

-- 4. Alterar a coluna nome da tabela Pessoa para um tamanho de 1.000 caracteres.++
ALTER TABLE Pessoa
MODIFY COLUMN nom_pessoa VARCHAR(1000);

-- 5. Incluir o campo ind_status na tabela Titulo, sem ter que recriá-la.--
ALTER TABLE titulo
ADD COLUMN ind_status CHAR(1) NOT NULL DEFAULT 'A';


 
 
 