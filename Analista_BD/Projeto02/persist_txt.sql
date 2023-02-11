SHOW VARIABLES LIKE 'secure_file_priv';
show databases;
show tables;
use bdproducoes;
select * from titulo limit 10;

-- necessario para não dar erro ao carregar valores int vazios --
SET sql_mode = ""
-- persiste dados em pessoa --
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Pessoa.txt'
                INTO TABLE pessoa 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n';

select * from pessoa limit 10;

-- persiste dados em titulo --
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Titulo.txt'
                INTO TABLE Titulo 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n';

select * from titulo limit 10;

-- persiste dados em Direção --
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Direcao.txt'
                INTO TABLE Direcao 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n';

select * from direcao limit 10;

-- persiste dados em Titulo_Detalhe --
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Titulo_Detalhe.txt'
                INTO TABLE Titulo_Detalhe 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n';

select * from Titulo_Detalhe limit 10;

-- persiste dados em Elenco --
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Elenco.txt'
                INTO TABLE Elenco 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n';

select * from Elenco limit 10;

-- persiste dados em Elenco --
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Elenco.txt'
                INTO TABLE Elenco 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n';

select * from Elenco limit 10;

-- persiste dados em Autoria --
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Autoria.txt'
                INTO TABLE Autoria 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n';

select * from Autoria limit 10;

-- persiste dados em Avaliacao --
LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Avaliacao.txt'
                INTO TABLE Avaliacao 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n';

select * from Avaliacao limit 10;





