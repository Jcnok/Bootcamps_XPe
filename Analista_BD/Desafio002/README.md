# Bootcamp: Analista de Banco de Dados  - Desafio do Módulo 2

<img src="./xpe.png" align='left' alt="drawing" width="150" heigth="150"/>

<img src="./bd.jpg" align='center' alt="drawing" width="300" heigth="300"/>

## Objetivos de Ensino

### Exercitar os seguintes conceitos trabalhados no Módulo:



* **1. Modelo de dados relacional.**
* **2. Banco de dados relacional.**
* **3. Instruções da classe DDL para a criação de estruturas de dados.**
* **4. Instruções da classe DML para consultar, inserir, excluir e atualizar dados;**
* **5. Instruções da classe TCL para controlar transações;**
* **6. Instruções da classe DCL para conceder e revogar privilégios.**

## Enunciado:


**A XPE inaugurará, em breve, seu site de E-commerce para serviços
educacionais e necessita de uma aplicação que permita o cadastramento de
seus clientes e o controle dos serviços adquiridos por eles. A XPE trabalha
com vários fornecedores (parceiros), que oferecem diversos tipos de serviços,
como aulas particulares a distância, monitoria/tutoria/produção de conteúdo
para cursos rápidos, bootcamps, cursos de graduação, MBAs etc., bem como
consultoria para criação de conteúdo/produtos de ensino a distância. Um
mesmo fornecedor pode oferecer mais de um tipo de serviço. Quando um
cliente compra um serviço, é emitida uma nota de pedido relacionando todos
os serviços (produtos) que envolveram a transação e a forma de pagamento
selecionada pelo cliente.**
* **Para esse sistema, foi desenvolvido, inicialmente, o modelo de dados físico relacional a seguir:**

![img](./eer.png)

**A empresa lhe contratou como o(a) analista de banco de dados responsável
por implementar e gerenciar esse modelo de dados, construir as queries
demandadas pelos desenvolvedores e sanar as dúvidas da equipe do projeto
referentes à Linguagem SQL.**

<a name="ancora"></a>
### Os alunos deverão desempenhar as seguintes atividades:


* ## [Atividades.](#ancora0)
    * ### [Criar a conexão com o MySQL.](#ancora0.1)
    * ### [1-Gerar o script DDL para criar, no SQL Server, as respectivas estruturas de dados no banco BDecommerce.](#ancora1)
    * ### [2-Gerar o script DML para inserir dados fictícios em todas as tabelas do schema físico criado no item anterior.](#ancora2)
    
    * ### [3-Desenvolver uma query SQL para gerar uma lista única com os contatos(nome, endereço e telefone) de clientes e fornecedores, sem informações repetidas, ordenada alfabeticamente. Esse relatório deve conter as colunas com o label Nome da Pessoa, Endereço e Telefone.](#ancora3)
    * ### [4-Depois que a tabela  FORMA_PAGAMENTO já estava populada, a empresa solicitou a inclusão de mais uma coluna (IND_STATUS char(1) NOT NULL) para indicar se a forma de pagamento está disponível (‘D’) ou indisponível (‘I’). Desenvolva o script para as duas formas existentes para se incluir essa nova coluna sem ter que recriar a tabela, e considerando que todas as formas de pagamento atuais da tabela estão disponíveis.](#ancora4)
    * ### [5-A empresa solicitou que a coluna VLR_TOTAL_PEDIDO da tabela PEDIDO, que já se encontra populada, seja alterada para NOT NULL. Construa uma query DML com um SELECT para você executar previamente e verificar se o comando abaixo será concluído com sucesso ou não.](#ancora5)
            * ALTER TABLE PEDIDO
              ALTER COLUMN VLR_TOTAL_PEDIDO numeric (10,2) NOT NULL;
    
    * ### [6-Na consulta abaixo, criada por um desenvolvedor, ela deveria retornar 5 colunas, mas estão sendo retornadas 7 colunas. Foi solicitado que você corrija a query para apresentar as 5 colunas com os labels: COD_CLIENTE, NOME COMPLETO, CPF_CNPJ, DSC_ENDERECO_COBRANCA e AS CELULAR.](#ancora6)    
            *   SELECT COD_CLIENTE, NOM_CLIENTE, 'NOME COMPLETO',
                NUM_CPF_CNPJ CPF_CNPJ, DSC_ENDERECO_COBRANCA,
                NUM_TELEFONE, ‘CELULAR’
                FROM CLIENTE
                ORDER BY NOM_CLIENTE
                GO

    * ### [7-A empresa que te contratou solicitou que você explique o motivo pelo qual a query abaixo (para retornar os pedidos dos clientes) está dando erro de execução, e reescreva-a de forma que ela possa ser executada com sucesso.](#ancora7)
            *   SELECT C.NOM_CLIENTE AS "NOME DO CLIENTE", P.NUM_PEDIDO
                PEDIDO, P.DAT_PEDIDO AS "DATA DO PEDIDO",
                P.VLR_TOTAL_PEDIDO
                FROM CLIENTE C JOIN PEDIDO P
                ON C.COD_CLIENTE = P.COD_CLIENTE
                WHERE YEAR ("DATA DO PEDIDO") = '2020'
                ORDER BY "NOME DO CLIENTE";
    * ### [8-A empresa solicitou que você providencie uma query para listar todos os serviços e os respectivos fornecedores, ordenando essa lista alfabeticamente pelo nome do fornecedor e descendentemente pelo valor do serviço. A lista deve possuir as colunas NOM_FORNECEDOR, NUM_TELEFONE, DSC_SERVICO, TIP_SERVICO e VLR_SERVICO. Foi solicitado também que a query use o padrão ANSI-92 para relacionar as tabelas.](#ancora8)
    
    * ### [9- A empresa irá fazer uma enxugada no portfólio atual, de forma que consiga oferecer novos serviços que estão sendo criados pelos fornecedores. Para isso, ela precisa que você elabore uma query que liste os serviços que nunca foram vendidos, ou que tiveram um total de vendas menor que 5 em 2019. O relatório precisa conter as colunas DSC_SERVICO, TIP_SERVICO, VLR_SERVICO e NOM_FORNECEDOR. Foi solicitado que a query, neste caso, use padrão ANSI-89 para relacionar as tabelas.](#ancora9)
    
    * ### [10-Devido a algum problema na aplicação, alguns pedidos estão sem o valor total do pedido (coluna VLR_TOTAL_PEDIDO da tabela PEDIDO está nula), ou com valor calculado erroneamente (deveria ser a soma de todos os valores, do mesmo pedido, da coluna VLR_TOTAL_ITEM da tabela ITEM_PEDIDO). A empresa solicita que você desenvolva uma query para listar os pedidos que estão com esse problema. A query deve retornar as colunas NUM_PEDIDO, DAT_PEDIDO e VLR_TOTAL_PEDIDO. A empresa também solicita que você escreva a query para atualizar a coluna VLR_TOTAL_PEDIDO de forma correta.](#ancora10)
    
    * ### [11-Foi identificado um problema no modelo de dados original, no qual a coluna NUM_CPF_CNPJ da tabela CLIENTE foi criada de forma a aceitar nulo. Com o intuito de verificar o tamanho do problema, a empresa solicitou a um de seus desenvolvedores que elaborasse uma query para listar o percentual de clientes cadastrados que estão sem essa informação. O desenvolvedor criou a query abaixo:](#ancora11)
            * SELECT CAST
            (
            ( SELECT CAST(COUNT (NUM_CPF_CNPJ) AS numeric (3,2))
            FROM CLIENTE WHERE NUM_CPF_CNPJ IS NULL
            )
            /
            ( SELECT CAST(COUNT (NUM_CPF_CNPJ) AS numeric (3,2))
            FROM CLIENTE
            ) * 100 AS int
            ) AS "Percentual de Clientes sem Informação de Documento"
            A empresa constatou que não há nenhum erro de sintaxe na query, mas
            solicitou sua consultoria para informar se a query calculará o percentual
            de clientes cadastrados sem CPF/CNPJ de forma correta. Em caso
            negativo, ela solicita que você forneça a query com o ajuste necessário.
    
    * ### [12-.Foi feita uma regulamentação nova para sistemas de venda de serviços on-line, onde todas as informações disponibilizadas para os clientes no site devem ser exibidas em letras MAIÚSCULAS. A alteração na camada da aplicação para os novos dados serem inseridos já foi feita, mas é preciso tratar o backlog das informações que já se encontravam persistidas no banco de dados. De acordo com o modelo de dados, existem 7 colunas do tipo string que precisam ter os dados alterados para maiúsculo. O desenvolvedor informou que seriam necessários 7 comandos DML para fazer essa alteração, mas você disse que consegue otimizar para fazer com 4 comandos. Quais seriam esses 4 comandos?](#ancora12)
    
    * ### [13-A empresa precisará de um relatório que liste a quantidade de itens vendidos mensalmente e o valor total desses itens por fornecedor, no ano corrente. Todos os fornecedores devem estar listados, mesmo se ainda não tiver nenhum produto vendido. Selecione as instruções abaixo que serão necessárias para essa query e coloque-as na devida ordem.](#ancora13)
            * GROUP BY F.NOM_FORNECEDOR, P.DAT_PEDIDO
             SELECT F.NOM_FORNECEDOR, MONTH(P.DAT_PEDIDO) AS MÊS,
             SUM(I.QTD_SERVICO) AS "TOTAL DE ITENS",
             LEFT JOIN SERVICO S
             GROUP BY F.NOM_FORNECEDOR
             FROM FORNECEDOR F
             COUNT(I.QTD_SERVICO) AS "TOTAL DE ITENS",
             ON I.NUM_PEDIDO = P.NUM_PEDIDO
             INNER JOIN SERVICO S
             ORDER BY F.NOM_FORNECEDOR
             GROUP BY F.NOM_FORNECEDOR, MONTH (P.DAT_PEDIDO)
             JOIN ITEM_PEDIDO I
             ON S.COD_SERVICO = I.COD_SERVICO
             SUM(I.VLR_TOTAL_ITEM) AS "VALOR TOTAL"
             ON F.COD_FORNECEDOR = S.COD_FORNECEDOR
             JOIN PEDIDO P
             RIGHT JOIN PEDIDO P
             WHERE YEAR(P.DAT_PEDIDO) = YEAR(GETDATE())
             HAVING YEAR(P.DAT_PEDIDO) = YEAR(GETDATE())
    
    * ### [14-Para retornar a lista de clientes que não fizeram pedidos, foi construída a query abaixo.](#ancora14)       
          * SELECT NOM_CLIENTE, NUM_TELEFONE
            FROM CLIENTE
            WHERE COD_CLIENTE NOT IN (SELECT COD_CLIENTE FROM PEDIDO)
            ORDER BY NOM_CLIENTE;                
            A empresa solicita sua consultoria para informar se a query em questão
            atende ao requisito (listar clientes que não fizeram pedidos), se há uma
            forma mais otimizada de obter o mesmo resultado e qual seria essa query.        
        
    * ### [15-Foi encontrada a query abaixo no código da aplicação e a empresa está solicitando sua ajuda para identificar o que essa query faz. Em adição, informe uma query mais otimizada para atingir o mesmo resultado,sem utilizar uma subconsulta correlacionada ou multivalorada.](#ancora15)
          * SELECT C.NOM_CLIENTE, C.NUM_TELEFONE
            FROM CLIENTE C
            WHERE EXISTS (
            SELECT P.COD_CLIENTE
            FROM PEDIDO P
            WHERE P.COD_CLIENTE = C.COD_CLIENTE
            )
            ORDER BY C.NOM_CLIENTE;
            A empresa solicitou que você elabore uma query para gerar uma cópia dos
            dados da tabela ITEM_PEDIDO. Essa tabela com a cópia dos dados deve se
            chamar TMP_ITEM_PEDIDO.
                    
    * ### [16-A empresa solicitou que você elabore uma query para excluir os clientes que estão cadastrados no banco de dados, mas que não fizeram nenhum pedido.](#ancora16)
    
    * ### [17. Foi solicitado que você gere uma query para inserir os dados abaixo na tabela FORMA_PAGAMENTO, que funcione independentemente da ordem que as colunas foram criadas.](#ancora17)
    ![img](./tab.png)
    
    * ### [18-Dado o código abaixo:](#ancora18)
          *  BEGIN TRANSACTION Transacao1
            INSERT INTO FORMA_PAGAMENTO
            (COD_FORMA_PAGAMENTO, DSC_FORMA_PAGAMENTO)
            VALUES (1, 'CARTÃO DE DÉBITO');
            BEGIN TRANSACTION Transacao2
            INSERT INTO FORMA_PAGAMENTO
            (COD_FORMA_PAGAMENTO, DSC_FORMA_PAGAMENTO)
            VALUES (2, 'CARTÃO DE CRÉDITO');
            SELECT * FROM FORMA_PAGAMENTO ORDER BY 1;
            COMMIT TRANSACTION Transacao2
            INSERT INTO FORMA_PAGAMENTO
            (COD_FORMA_PAGAMENTO, DSC_FORMA_PAGAMENTO)
            VALUES (3, 'BOLETO');
            SELECT @@TRANCOUNT AS 'PRIMEIRA CONTAGEM';
            SELECT *
            FROM FORMA_PAGAMENTO
            ORDER BY DSC_FORMA_PAGAMENTO;
            COMMIT TRANSACTION Transacao1
            INSERT INTO FORMA_PAGAMENTO
            (COD_FORMA_PAGAMENTO, DSC_FORMA_PAGAMENTO)
            VALUES (4, 'FATURA');
            SELECT @@TRANCOUNT AS 'SEGUNDA CONTAGEM';
            SELECT * FROM FORMA_PAGAMENTO;
            **Informe quais os dados serão retornados para cada um dos comandos**
            SELECT executados dentro da query acima:
            • SELECT * FROM FORMA_PAGAMENTO ORDER BY 1 
            • SELECT @@TRANCOUNT AS 'PRIMEIRA CONTAGEM' 
            • SELECT * FROM FORMA_PAGAMENTO
            o ORDER BY DSC_FORMA_PAGAMENTO
            • SELECT @@TRANCOUNT AS 'SEGUNDA CONTAGEM' 
            • SELECT * FROM FORMA_PAGAMENTO 
            
    * ### [19-Após a execução do bloco SQL abaixo, quantas linhas de fato serão inseridas na tabela FORMA_PAGAMENTO?](#ancora19)
            *  BEGIN TRANSACTION Transacao1
            INSERT INTO FORMA_PAGAMENTO
            (COD_FORMA_PAGAMENTO, DSC_FORMA_PAGAMENTO)
            VALUES (199, 'CARTÃO DE DÉBITO');
            BEGIN TRANSACTION Transacao2
            INSERT INTO FORMA_PAGAMENTO
            (COD_FORMA_PAGAMENTO, DSC_FORMA_PAGAMENTO)
            VALUES (299, 'CARTÃO DE CRÉDITO');
            COMMIT TRANSACTION Transacao2
            INSERT INTO FORMA_PAGAMENTO
            (COD_FORMA_PAGAMENTO, DSC_FORMA_PAGAMENTO)
            VALUES (399, 'BOLETO');
            ROLLBACK
            COMMIT TRANSACTION Transacao1
            INSERT INTO FORMA_PAGAMENTO
            (COD_FORMA_PAGAMENTO, DSC_FORMA_PAGAMENTO)
            VALUES (499, 'FATURA')
            
    * ### [20-Foi solicitada a você a criação de um objeto de código compilado (uma procedure) para fazer a inserção de dados na tabela CLIENTE de forma que os dados sejam passados como parâmetros. Forneça o código DDL para a criação dessa procedure, de nome SP_INSERE_CLIENTE, e o exemplo de execução dela.](#ancora20)    
    
    * ### [21..A empresa solicitou que você construa o script DCL de forma que o usuário da aplicação de nome UserApp tenha permissão para selecionar, inserir, atualizar e excluir dados de todas as tabelas, mas não tenha permissão de inserção direta na tabela CLIENTE (para inserir dados de cliente, o usuário deverá usar uma procedure, de nome SP_INSERE_CLIENTE). Forneça os comandos que devem estar nesse script DCL.](#ancora21)
    
    

## Contexto.
<a id="ancora1"></a>
[voltar](#ancora).

* As tabelas Titulo e Titulo_Detalhe permitem armazenar informações básicas e técnicas sobre as produções, enquanto as tabelas Avaliacao, Direcao, Autoria e Elenco permitem armazenar informações específicas sobre os aspectos críticos, direção e elenco de cada produção.
* A tabela Pessoa é importante para garantir a integridade dos dados, pois permite que todas as pessoas envolvidas na produção sejam identificadas de maneira única.
* Além disso, é importante estabelecer relações adequadas entre as tabelas para garantir a integridade dos dados e a consistência do modelo de dados. Por exemplo, a tabela Direcao deve ter uma relação com a tabela Titulo para indicar quais diretores estão associados a quais produções, e a tabela Pessoa deve ter uma relação com as tabelas Direcao, Autoria e Elenco para identificar as pessoas envolvidas na produção.

## Atividades:
<a id="ancora3"></a>
[voltar](#ancora).

###  **Criar a conexão com o MySQL.**  
<a id="ancora0.1"></a>
[voltar](#ancora).


```python
#importação das bibliotecas para conexão 1
import mysql.connector
import pandas as pd
import warnings
warnings.filterwarnings('ignore')
```

###  **1.Solução .**
<a id="ancora1"></a>
[voltar](#ancora).


```python
# Excluír o banco de dados.
drop_bd='''
DROP DATABASE e-commerce-xpe;'''
cursor.execute(drop_bd)
cursor.execute('SHOW databases')
for i in cursor:
    if 'bdproducoes' in i:
        print(i)
```


```python
# Criando o banco de dados e-commerce-xpe e conferindo se o bd foi criado;
criar='''CREATE SCHEMA IF NOT EXISTS `e-commerce-xpe` ;'''
con = mysql.connector.connect(host='localhost',user='julio',password='')
cursor = con.cursor()
cursor.execute(criar)
cursor.execute('SHOW databases')
for i in cursor:
    if 'e-commerce-xpe' in i:
        print(i)
```

    ('e-commerce-xpe',)
    


```python
# Conectando ao database e-commerce-xpe recém criada
con = mysql.connector.connect(host='localhost',database='e-commerce-xpe',user='julio',password='')
cursor = con.cursor()
```

#### CRIANDO A TABELA CLIENTE


```python
# Criando a tabela de CLIENTE;
criar='''
CREATE TABLE IF NOT EXISTS CLIENTE (
  COD_CLIENTE INT NOT NULL,
  NOM_CLIENTE VARCHAR(100) NOT NULL,
  NUM_CPF_CNPJ DECIMAL(15) NULL,
  DSC_ENDERECO_COBRANCA VARCHAR(1000) NOT NULL,
  NUM_TELEFONE DECIMAL(14) NOT NULL,
  PRIMARY KEY (COD_CLIENTE))
ENGINE = InnoDB;
'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('cliente',)
    

#### CRIANDO A TABELA FORMA_PAGAMENTO


```python
# Criando a tabela de FORMA_PAGAMENTO;
criar='''
CREATE TABLE IF NOT EXISTS FORMA_PAGAMENTO (
  COD_FORMA_PAGAMENTO INT NOT NULL,
  DSC_FORMA_PAGAMENTO VARCHAR(100) NOT NULL,
  PRIMARY KEY (COD_FORMA_PAGAMENTO))
ENGINE = InnoDB;
'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('cliente',)
    ('forma_pagamento',)
    

#### CRIANDO A TABELA PEDIDO


```python
# Criando a tabela de PEDIDO;
criar='''
CREATE TABLE IF NOT EXISTS PEDIDO (
  NUM_PEDIDO VARCHAR(45) NOT NULL,
  COD_CLIENTE_FK INT NOT NULL,
  DAT_PEDIDO DATE NOT NULL,
  VLR_TOTAL_PEDIDO DECIMAL(10,2) NULL,
  COD_FORMA_PAGAMENTO_FK INT NOT NULL,
  PRIMARY KEY (NUM_PEDIDO),  
  CONSTRAINT fk_PEDIDO_CLIENTE
  FOREIGN KEY (COD_CLIENTE_FK)
    REFERENCES CLIENTE (COD_CLIENTE),    
  CONSTRAINT fk_PEDIDO_FORMA_PAGAMENTO
    FOREIGN KEY (COD_FORMA_PAGAMENTO_FK)
    REFERENCES FORMA_PAGAMENTO (COD_FORMA_PAGAMENTO))    
ENGINE = InnoDB;'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('cliente',)
    ('forma_pagamento',)
    ('pedido',)
    

#### CRIANDO A TABELA FORNECEDOR


```python
# Criando a tabela de FORNCECEDOR;
criar='''
CREATE TABLE IF NOT EXISTS FORNECEDOR (
  COD_FORNECEDOR INT NOT NULL,
  NOM_FORNECEDOR VARCHAR(100) NOT NULL,
  NUM_CNPJ DECIMAL(15) NULL,
  DSC_ENDERECO VARCHAR(1000) NOT NULL,
  NUM_TELEFONE DECIMAL(14) NOT NULL,
  PRIMARY KEY (COD_FORNECEDOR))
ENGINE = InnoDB;
'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('cliente',)
    ('forma_pagamento',)
    ('fornecedor',)
    ('pedido',)
    

#### CRIANDO A TABELA SERVICO


```python
# Criando a tabela de SERVICO;
criar='''
CREATE TABLE IF NOT EXISTS SERVICO (
  COD_SERVICO INT NOT NULL,
  COD_FORNECEDOR_FK INT NOT NULL,
  DSC_SERVICO VARCHAR(500) NOT NULL,
  TIP_SERVICO VARCHAR(50) NOT NULL,
  VLR_SERVICO DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (COD_SERVICO),  
  CONSTRAINT fk_SERVICO_FORNECEDOR
    FOREIGN KEY (COD_FORNECEDOR_FK)
    REFERENCES FORNECEDOR (COD_FORNECEDOR))
ENGINE = InnoDB;
'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('cliente',)
    ('forma_pagamento',)
    ('fornecedor',)
    ('pedido',)
    ('servico',)
    

#### CRIANDO A TABELA ITEM_PEDIDO


```python
# Criando a tabela de ITEM_PEDIDO;
criar='''
CREATE TABLE IF NOT EXISTS ITEM_PEDIDO (
  NUM_PEDIDO_FK VARCHAR(45) NOT NULL,
  COD_ITEM_PEDIDO INT NOT NULL,
  COD_SERVICO_FK INT NOT NULL,
  QTD_SERVICO DECIMAL(2) NOT NULL,
  VLR_TOTAL_ITEM DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (NUM_PEDIDO_FK, COD_ITEM_PEDIDO),  
  CONSTRAINT fk_ITEM_PEDIDO_SERVICO
    FOREIGN KEY (COD_SERVICO_FK)
    REFERENCES SERVICO (COD_SERVICO),    
  CONSTRAINT fk_ITEM_PEDIDO_PEDIDO
    FOREIGN KEY (NUM_PEDIDO_FK)
    REFERENCES PEDIDO (NUM_PEDIDO))
ENGINE = InnoDB;
'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('cliente',)
    ('forma_pagamento',)
    ('fornecedor',)
    ('item_pedido',)
    ('pedido',)
    ('servico',)
    

###  **2.Solução .**
<a id="ancora2"></a>
[voltar](#ancora).

#### Criando a tabela de Pessoa;


```python
# Criando a tabela de Pessoa;
criar='''
CREATE TABLE IF NOT EXISTS Pessoa (
  cod_pessoa INT PRIMARY KEY,
  nom_pessoa VARCHAR(500) NOT NULL,
  ano_nascimento INT NULL,
  ano_falescimento INT NULL,
  dsc_profissao VARCHAR(1000) NULL
);'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('pessoa',)
    

#### Criando a tabela de Titulo;


```python
#Criando a tabela de Titulo;
criar='''
CREATE TABLE IF NOT EXISTS Titulo (
  cod_titulo INT NOT NULL PRIMARY KEY,
  nom_titulo VARCHAR(1000) NULL  
);'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('pessoa',)
    ('titulo',)
    

#### Criando a tabela de Direção;


```python
#Criando a tabela de Direcao;
criar='''
CREATE TABLE IF NOT EXISTS Direcao (
  cod_direcao INT PRIMARY KEY AUTO_INCREMENT,
  cod_titulo INT NOT NULL,
  cod_pessoa INT NOT NULL,
  FOREIGN KEY (cod_pessoa) REFERENCES Pessoa(cod_pessoa),
  FOREIGN KEY (cod_titulo) REFERENCES Titulo(cod_titulo)
);'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('direcao',)
    ('pessoa',)
    ('titulo',)
    

#### Criando a tabela de Titulo_Detalhe;


```python
#Criando a tabela de Titulo_Detalhe;
criar='''
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
);'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('direcao',)
    ('pessoa',)
    ('titulo',)
    ('titulo_detalhe',)
    

#### Criando a tabela de Elenco;


```python
#Criando a tabela de Elenco;
criar='''
CREATE TABLE IF NOT EXISTS Elenco (
  cod_elenco INT PRIMARY KEY AUTO_INCREMENT,
  cod_titulo INT NOT NULL,
  cod_pessoa INT NOT NULL,
  dsc_funcao VARCHAR(1000) NOT NULL,
  dsc_personagem VARCHAR(1000) NOT NULL,
  FOREIGN KEY (cod_titulo) REFERENCES Titulo(cod_titulo),
  FOREIGN KEY (cod_pessoa) REFERENCES Pessoa(cod_pessoa)
);'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('direcao',)
    ('elenco',)
    ('pessoa',)
    ('titulo',)
    ('titulo_detalhe',)
    

#### Criando a tabela de Autoria;


```python
#Criando a tabela de Autoria;
criar='''
CREATE TABLE IF NOT EXISTS Autoria (
  cod_autoria INT PRIMARY KEY AUTO_INCREMENT,
  cod_titulo INT NOT NULL,
  cod_pessoa INT NOT NULL,
  FOREIGN KEY (cod_titulo) REFERENCES Titulo(cod_titulo),
  FOREIGN KEY (cod_pessoa) REFERENCES Pessoa(cod_pessoa)
);'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('autoria',)
    ('direcao',)
    ('elenco',)
    ('pessoa',)
    ('titulo',)
    ('titulo_detalhe',)
    

#### Criando a tabela de Avaliacao;


```python
#Criando a tabela de Avaliacao;
criar='''
CREATE TABLE IF NOT EXISTS Avaliacao (
  cod_titulo INT NOT NULL,
  classificacao_media INT NOT NULL,
  qtd_votos INT NOT NULL,
  FOREIGN KEY (cod_titulo) REFERENCES Titulo(cod_titulo)
);'''
cursor.execute(criar)
cursor.execute('SHOW tables')
for i in cursor:
  print(i)
```

    ('autoria',)
    ('avaliacao',)
    ('direcao',)
    ('elenco',)
    ('pessoa',)
    ('titulo',)
    ('titulo_detalhe',)
    

###  **3.Solução.**
<a id="ancora3"></a>
[voltar](#ancora).


```python
# Alterando a tabela titulo;
Altera='''
ALTER TABLE titulo
MODIFY COLUMN nom_titulo VARCHAR(1000) NOT NULL;'''
cursor.execute(Altera)
cursor.execute('desc titulo')
for i in cursor:
  print(i)
```

    ('cod_titulo', b'int', 'NO', bytearray(b'PRI'), None, '')
    ('nom_titulo', b'varchar(1000)', 'NO', bytearray(b''), None, '')
    

###  **4.Solução .**
<a id="ancora4"></a>
[voltar](#ancora).


```python
# Criando a tabela de Pessoa;
Altera='''
ALTER TABLE Pessoa
MODIFY COLUMN nom_pessoa VARCHAR(1000);'''
cursor.execute(Altera)
cursor.execute('desc pessoa')
for i in cursor:
  print(i)
```

    ('cod_pessoa', b'int', 'NO', bytearray(b'PRI'), None, '')
    ('nom_pessoa', b'varchar(1000)', 'YES', bytearray(b''), None, '')
    ('ano_nascimento', b'int', 'YES', bytearray(b''), None, '')
    ('ano_falescimento', b'int', 'YES', bytearray(b''), None, '')
    ('dsc_profissao', b'varchar(1000)', 'YES', bytearray(b''), None, '')
    

###  **5.Solução .**
<a id="ancora5"></a>
[voltar](#ancora).


```python
# Criando a tabela de Titulo;
Altera='''
ALTER TABLE titulo
ADD COLUMN ind_status CHAR(1) NOT NULL DEFAULT 'A';'''
cursor.execute(Altera)
cursor.execute('desc titulo')
for i in cursor:
  print(i)
```

    ('cod_titulo', b'int', 'NO', bytearray(b'PRI'), None, '')
    ('nom_titulo', b'varchar(1000)', 'NO', bytearray(b''), None, '')
    ('ind_status', b'char(1)', 'NO', bytearray(b''), b'A', '')
    

**Nota: No exemplo acima, o valor padrão de ind_status é 'A', o que significa "ativo".**

###  **6.Solução .**
<a id="ancora6"></a>
[voltar](#ancora).

####  **Persistindo dados na tabela Pessoa.**
<a id="ancora3.7.1"></a>
[voltar](#ancora).


```python
cursor.execute('SET sql_mode = "" ') # necessário pois não estava aceitando carregar os valores em branco.
```


```python
load = '''LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Pessoa.txt'
                INTO TABLE pessoa 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n';
        '''
# Consultando uma tabela.
cursor = con.cursor()
cursor.execute(load)
```


```python
# Consultando a tabela.
cursor = con.cursor()
cursor.execute('SELECT * FROM pessoa LIMIT 10')
result = cursor.fetchall()
for i in result:
    print(i)
```

    (1, 'Fred Astaire', 1899, 1987, 'soundtrack,actor,miscellaneous')
    (2, 'Lauren Bacall', 1924, 2014, 'actress,soundtrack')
    (3, 'Brigitte Bardot', 1934, 0, 'actress,soundtrack,producer')
    (4, 'John Belushi', 1949, 1982, 'actor,writer,soundtrack')
    (5, 'Ingmar Bergman', 1918, 2007, 'writer,director,actor')
    (6, 'Ingrid Bergman', 1915, 1982, 'actress,soundtrack,producer')
    (7, 'Humphrey Bogart', 1899, 1957, 'actor,soundtrack,producer')
    (8, 'Marlon Brando', 1924, 2004, 'actor,soundtrack,director')
    (9, 'Richard Burton', 1925, 1984, 'actor,producer,soundtrack')
    (10, 'James Cagney', 1899, 1986, 'actor,soundtrack,director')
    


```python
# Lib para visualizar as consultas em formato de dataframe.
import pandas as pd
```


```python
# Convertendo as consulta para o tipo pandas dataset - apenas para facilitar a visualização.
pd.read_sql('SELECT * FROM pessoa LIMIT 10',con=con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>cod_pessoa</th>
      <th>nom_pessoa</th>
      <th>ano_nascimento</th>
      <th>ano_falescimento</th>
      <th>dsc_profissao</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>Fred Astaire</td>
      <td>1899</td>
      <td>1987</td>
      <td>soundtrack,actor,miscellaneous</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>Lauren Bacall</td>
      <td>1924</td>
      <td>2014</td>
      <td>actress,soundtrack</td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
      <td>Brigitte Bardot</td>
      <td>1934</td>
      <td>0</td>
      <td>actress,soundtrack,producer</td>
    </tr>
    <tr>
      <th>3</th>
      <td>4</td>
      <td>John Belushi</td>
      <td>1949</td>
      <td>1982</td>
      <td>actor,writer,soundtrack</td>
    </tr>
    <tr>
      <th>4</th>
      <td>5</td>
      <td>Ingmar Bergman</td>
      <td>1918</td>
      <td>2007</td>
      <td>writer,director,actor</td>
    </tr>
    <tr>
      <th>5</th>
      <td>6</td>
      <td>Ingrid Bergman</td>
      <td>1915</td>
      <td>1982</td>
      <td>actress,soundtrack,producer</td>
    </tr>
    <tr>
      <th>6</th>
      <td>7</td>
      <td>Humphrey Bogart</td>
      <td>1899</td>
      <td>1957</td>
      <td>actor,soundtrack,producer</td>
    </tr>
    <tr>
      <th>7</th>
      <td>8</td>
      <td>Marlon Brando</td>
      <td>1924</td>
      <td>2004</td>
      <td>actor,soundtrack,director</td>
    </tr>
    <tr>
      <th>8</th>
      <td>9</td>
      <td>Richard Burton</td>
      <td>1925</td>
      <td>1984</td>
      <td>actor,producer,soundtrack</td>
    </tr>
    <tr>
      <th>9</th>
      <td>10</td>
      <td>James Cagney</td>
      <td>1899</td>
      <td>1986</td>
      <td>actor,soundtrack,director</td>
    </tr>
  </tbody>
</table>
</div>



####  **Persistindo dados na tabela Título.**
<a id="ancora3.8"></a>
[voltar](#ancora).


```python
# -- persistindo registros na tabela Titulo --
load = '''LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Titulo.txt' 
                INTO TABLE titulo 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n';
        '''
# Consultando uma tabela.
cursor = con.cursor()
cursor.execute(load)
```


```python
# Convertendo as consulta para o tipo pandas dataset - apenas para facilitar a visualização.
pd.read_sql('SELECT * FROM titulo LIMIT 10',con=con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>cod_titulo</th>
      <th>nom_titulo</th>
      <th>ind_status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>Carmencita</td>
      <td>A</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>Le clown et ses chiens</td>
      <td>A</td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
      <td>Pauvre Pierrot</td>
      <td>A</td>
    </tr>
    <tr>
      <th>3</th>
      <td>4</td>
      <td>Un bon bock</td>
      <td>A</td>
    </tr>
    <tr>
      <th>4</th>
      <td>5</td>
      <td>Blacksmith Scene</td>
      <td>A</td>
    </tr>
    <tr>
      <th>5</th>
      <td>6</td>
      <td>Chinese Opium Den</td>
      <td>A</td>
    </tr>
    <tr>
      <th>6</th>
      <td>7</td>
      <td>Corbett and Courtney Before the Kinetograph</td>
      <td>A</td>
    </tr>
    <tr>
      <th>7</th>
      <td>8</td>
      <td>Edison Kinetoscopic Record of a Sneeze</td>
      <td>A</td>
    </tr>
    <tr>
      <th>8</th>
      <td>9</td>
      <td>Miss Jerry</td>
      <td>A</td>
    </tr>
    <tr>
      <th>9</th>
      <td>10</td>
      <td>La sortie de l'usine Lumière à Lyon</td>
      <td>A</td>
    </tr>
  </tbody>
</table>
</div>



####  **Persistindo dados na tabela Direção.**
<a id="ancora3.9"></a>
[voltar](#ancora).


```python
# -- persistindo registros na tabela Direção --
load = '''LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Direcao.txt' 
                INTO TABLE direcao 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n'; 
        '''
# Consultando uma tabela.
cursor = con.cursor()
cursor.execute(load)
```


```python
# Convertendo as consulta para o tipo pandas dataset - apenas para facilitar a visualização.
pd.read_sql('SELECT * FROM direcao LIMIT 10',con=con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>cod_direcao</th>
      <th>cod_titulo</th>
      <th>cod_pessoa</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>1</td>
      <td>5690</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>2</td>
      <td>721526</td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
      <td>3</td>
      <td>721526</td>
    </tr>
    <tr>
      <th>3</th>
      <td>4</td>
      <td>4</td>
      <td>721526</td>
    </tr>
    <tr>
      <th>4</th>
      <td>5</td>
      <td>5</td>
      <td>5690</td>
    </tr>
    <tr>
      <th>5</th>
      <td>6</td>
      <td>6</td>
      <td>5690</td>
    </tr>
    <tr>
      <th>6</th>
      <td>7</td>
      <td>8</td>
      <td>5690</td>
    </tr>
    <tr>
      <th>7</th>
      <td>8</td>
      <td>9</td>
      <td>85156</td>
    </tr>
    <tr>
      <th>8</th>
      <td>9</td>
      <td>10</td>
      <td>525910</td>
    </tr>
    <tr>
      <th>9</th>
      <td>10</td>
      <td>11</td>
      <td>804434</td>
    </tr>
  </tbody>
</table>
</div>



####  **Persistindo dados na tabela Titulo_Detalhe.**
<a id="ancora3.10"></a>
[voltar](#ancora).


```python
# -- persistindo registros na tabela Titulo_Detalhe --
load = '''LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Titulo_Detalhe.txt' 
                INTO TABLE titulo_detalhe 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n'; 
        '''
# Consultando uma tabela.
cursor = con.cursor()
cursor.execute(load)
```


```python
# Convertendo as consulta para o tipo pandas dataset - apenas para facilitar a visualização.
pd.read_sql('SELECT * FROM titulo_detalhe LIMIT 10',con=con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>cod_titulo</th>
      <th>tip_titulo</th>
      <th>nom_principal_titulo</th>
      <th>nom_original_titulo</th>
      <th>ind_adulto</th>
      <th>ano_lancamento</th>
      <th>qtd_minutos</th>
      <th>dsc_genero</th>
      <th>genero</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>short</td>
      <td>Carmencita</td>
      <td>Carmencita</td>
      <td>1</td>
      <td>1894</td>
      <td>1</td>
      <td>Documentary,Short</td>
      <td></td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>short</td>
      <td>Le clown et ses chiens</td>
      <td>Le clown et ses chiens</td>
      <td>1</td>
      <td>1892</td>
      <td>5</td>
      <td>Animation,Short</td>
      <td></td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
      <td>short</td>
      <td>Pauvre Pierrot</td>
      <td>Pauvre Pierrot</td>
      <td>1</td>
      <td>1892</td>
      <td>4</td>
      <td>Animation,Comedy,Romance</td>
      <td></td>
    </tr>
    <tr>
      <th>3</th>
      <td>4</td>
      <td>short</td>
      <td>Un bon bock</td>
      <td>Un bon bock</td>
      <td>1</td>
      <td>1892</td>
      <td>0</td>
      <td>Animation,Short</td>
      <td></td>
    </tr>
    <tr>
      <th>4</th>
      <td>5</td>
      <td>short</td>
      <td>Blacksmith Scene</td>
      <td>Blacksmith Scene</td>
      <td>1</td>
      <td>1893</td>
      <td>1</td>
      <td>Comedy,Short</td>
      <td></td>
    </tr>
    <tr>
      <th>5</th>
      <td>6</td>
      <td>short</td>
      <td>Chinese Opium Den</td>
      <td>Chinese Opium Den</td>
      <td>1</td>
      <td>1894</td>
      <td>1</td>
      <td>Short</td>
      <td></td>
    </tr>
    <tr>
      <th>6</th>
      <td>7</td>
      <td>short</td>
      <td>Corbett and Courtney Before the Kinetograph</td>
      <td>Corbett and Courtney Before the Kinetograph</td>
      <td>1</td>
      <td>1894</td>
      <td>1</td>
      <td>Short,Sport</td>
      <td></td>
    </tr>
    <tr>
      <th>7</th>
      <td>8</td>
      <td>short</td>
      <td>Edison Kinetoscopic Record of a Sneeze</td>
      <td>Edison Kinetoscopic Record of a Sneeze</td>
      <td>1</td>
      <td>1894</td>
      <td>1</td>
      <td>Documentary,Short</td>
      <td></td>
    </tr>
    <tr>
      <th>8</th>
      <td>9</td>
      <td>movie</td>
      <td>Miss Jerry</td>
      <td>Miss Jerry</td>
      <td>1</td>
      <td>1894</td>
      <td>45</td>
      <td>Romance</td>
      <td></td>
    </tr>
    <tr>
      <th>9</th>
      <td>10</td>
      <td>short</td>
      <td>Exiting the Factory</td>
      <td>La sortie de l'usine Lumière à Lyon</td>
      <td>1</td>
      <td>1895</td>
      <td>1</td>
      <td>Documentary,Short</td>
      <td></td>
    </tr>
  </tbody>
</table>
</div>



####  **Persistindo dados na tabela Elenco.**
<a id="ancora3.11"></a>
[voltar](#ancora).


```python
# -- persistindo registros na tabela Elenco --
load = '''LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Elenco.txt' 
                INTO TABLE Elenco 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n'; 
        '''
# Consultando uma tabela.
cursor = con.cursor()
cursor.execute(load)
```


```python
# Convertendo as consulta para o tipo pandas dataset - apenas para facilitar a visualização.
pd.read_sql('SELECT * FROM elenco LIMIT 10',con=con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>cod_elenco</th>
      <th>cod_titulo</th>
      <th>cod_pessoa</th>
      <th>dsc_funcao</th>
      <th>dsc_personagem</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>1</td>
      <td>1588970</td>
      <td>self</td>
      <td>["Herself"]</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>1</td>
      <td>5690</td>
      <td>director</td>
      <td></td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
      <td>1</td>
      <td>374658</td>
      <td>cinematographer</td>
      <td></td>
    </tr>
    <tr>
      <th>3</th>
      <td>4</td>
      <td>2</td>
      <td>721526</td>
      <td>director</td>
      <td></td>
    </tr>
    <tr>
      <th>4</th>
      <td>5</td>
      <td>2</td>
      <td>1335271</td>
      <td>composer</td>
      <td></td>
    </tr>
    <tr>
      <th>5</th>
      <td>6</td>
      <td>3</td>
      <td>721526</td>
      <td>director</td>
      <td></td>
    </tr>
    <tr>
      <th>6</th>
      <td>7</td>
      <td>3</td>
      <td>1335271</td>
      <td>composer</td>
      <td></td>
    </tr>
    <tr>
      <th>7</th>
      <td>8</td>
      <td>4</td>
      <td>721526</td>
      <td>director</td>
      <td></td>
    </tr>
    <tr>
      <th>8</th>
      <td>9</td>
      <td>4</td>
      <td>1335271</td>
      <td>composer</td>
      <td></td>
    </tr>
    <tr>
      <th>9</th>
      <td>10</td>
      <td>5</td>
      <td>443482</td>
      <td>actor</td>
      <td>["Blacksmith"]</td>
    </tr>
  </tbody>
</table>
</div>



####  **Persistindo dados na tabela Autoria.**
<a id="ancora3.12"></a>
[voltar](#ancora).


```python
# -- persistindo registros na tabela Autoria --
load = '''LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Autoria.txt' 
                INTO TABLE Autoria 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n'; 
        '''
# Consultando uma tabela.
cursor = con.cursor()
cursor.execute(load)
```


```python
# Convertendo as consulta para o tipo pandas dataset - apenas para facilitar a visualização.
pd.read_sql('SELECT * FROM autoria LIMIT 10',con=con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>cod_autoria</th>
      <th>cod_titulo</th>
      <th>cod_pessoa</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>9</td>
      <td>85156</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>36</td>
      <td>410331</td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
      <td>76</td>
      <td>410331</td>
    </tr>
    <tr>
      <th>3</th>
      <td>4</td>
      <td>91</td>
      <td>617588</td>
    </tr>
    <tr>
      <th>4</th>
      <td>5</td>
      <td>108</td>
      <td>410331</td>
    </tr>
    <tr>
      <th>5</th>
      <td>6</td>
      <td>109</td>
      <td>410331</td>
    </tr>
    <tr>
      <th>6</th>
      <td>7</td>
      <td>110</td>
      <td>410331</td>
    </tr>
    <tr>
      <th>7</th>
      <td>8</td>
      <td>111</td>
      <td>410331</td>
    </tr>
    <tr>
      <th>8</th>
      <td>9</td>
      <td>112</td>
      <td>410331</td>
    </tr>
    <tr>
      <th>9</th>
      <td>10</td>
      <td>113</td>
      <td>410331</td>
    </tr>
  </tbody>
</table>
</div>



####  **Persistindo dados na tabela Avaliacao.**
<a id="ancora3.13"></a>
[voltar](#ancora).


```python
# -- persistindo registros na tabela Avaliacao --
load = '''LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 8.0//Uploads//Avaliacao.txt' 
                INTO TABLE Avaliacao 
                CHARACTER SET LATIN1
                FIELDS TERMINATED BY '\t'
                LINES TERMINATED BY '\r\n'; 
        '''
# Consultando uma tabela.
cursor = con.cursor()
cursor.execute(load)
```


```python
# Convertendo as consulta para o tipo pandas dataset - apenas para facilitar a visualização.
pd.read_sql('SELECT * FROM Avaliacao LIMIT 10',con=con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>cod_titulo</th>
      <th>classificacao_media</th>
      <th>qtd_votos</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1049</td>
      <td>36</td>
      <td>8</td>
    </tr>
    <tr>
      <th>1</th>
      <td>1062</td>
      <td>61</td>
      <td>956</td>
    </tr>
    <tr>
      <th>2</th>
      <td>1066</td>
      <td>38</td>
      <td>5</td>
    </tr>
    <tr>
      <th>3</th>
      <td>1072</td>
      <td>56</td>
      <td>206</td>
    </tr>
    <tr>
      <th>4</th>
      <td>1083</td>
      <td>54</td>
      <td>82</td>
    </tr>
    <tr>
      <th>5</th>
      <td>1084</td>
      <td>51</td>
      <td>124</td>
    </tr>
    <tr>
      <th>6</th>
      <td>1091</td>
      <td>54</td>
      <td>139</td>
    </tr>
    <tr>
      <th>7</th>
      <td>1101</td>
      <td>45</td>
      <td>14</td>
    </tr>
    <tr>
      <th>8</th>
      <td>1105</td>
      <td>65</td>
      <td>685</td>
    </tr>
    <tr>
      <th>9</th>
      <td>1112</td>
      <td>33</td>
      <td>14</td>
    </tr>
  </tbody>
</table>
</div>



### **7.Solução .** 
<a id="ancora7"></a>
[voltar](#ancora).

#### **a. Total de títulos ativos.**
<a id="ancora4.2"></a>
[voltar](#ancora).


```python
# Total de titulos Ativos.
query = '''SELECT 
    COUNT(*)
FROM
    titulo
WHERE
    ind_status = 'A';
        '''
cursor = con.cursor()
cursor.execute(query)
result = cursor.fetchall()
for i in result:
    print(i)
```

    (19614,)
    

#### **b. Relação dos títulos em ordem alfabética e seus detalhes.**
<a id="ancora4.3"></a>
[voltar](#ancora).


```python
# Relação da tab. titulo com titulos detalhes ordenado por nome.
query = '''SELECT 
    t.cod_titulo AS codigo,
    t.nom_titulo AS nome,
    d.tip_titulo AS tipo,
    d.ano_lancamento AS ano,
    d.qtd_minutos AS duração,
    d.dsc_genero AS genero
FROM
    titulo t
        JOIN
    titulo_detalhe d ON t.cod_titulo = d.cod_titulo
ORDER BY t.nom_titulo;
        '''
pd.read_sql(query,con).head(10)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>codigo</th>
      <th>nome</th>
      <th>tipo</th>
      <th>ano</th>
      <th>duração</th>
      <th>genero</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>22731</td>
      <td>-But the Flesh Is Weak</td>
      <td>movie</td>
      <td>1932</td>
      <td>77</td>
      <td>Comedy</td>
    </tr>
    <tr>
      <th>1</th>
      <td>28533</td>
      <td>¡Centinela, alerta!</td>
      <td>movie</td>
      <td>1937</td>
      <td>80</td>
      <td>Musical</td>
    </tr>
    <tr>
      <th>2</th>
      <td>22756</td>
      <td>¡Que viva Mexico!</td>
      <td>movie</td>
      <td>1932</td>
      <td>88</td>
      <td>History</td>
    </tr>
    <tr>
      <th>3</th>
      <td>24642</td>
      <td>¡Tango!</td>
      <td>movie</td>
      <td>1933</td>
      <td>80</td>
      <td>Musical,Romance</td>
    </tr>
    <tr>
      <th>4</th>
      <td>8805</td>
      <td>¿Quién me hará olvidar sin morir?</td>
      <td>movie</td>
      <td>1916</td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <th>5</th>
      <td>28534</td>
      <td>¿Quién me quiere a mí?</td>
      <td>movie</td>
      <td>1936</td>
      <td>84</td>
      <td>Drama</td>
    </tr>
    <tr>
      <th>6</th>
      <td>24806</td>
      <td>...heute abend bei mir</td>
      <td>movie</td>
      <td>1934</td>
      <td>91</td>
      <td></td>
    </tr>
    <tr>
      <th>7</th>
      <td>26026</td>
      <td>...nur ein Komödiant</td>
      <td>movie</td>
      <td>1935</td>
      <td>95</td>
      <td></td>
    </tr>
    <tr>
      <th>8</th>
      <td>31761</td>
      <td>...One Third of a Nation...</td>
      <td>movie</td>
      <td>1939</td>
      <td>79</td>
      <td>Drama</td>
    </tr>
    <tr>
      <th>9</th>
      <td>32177</td>
      <td>...som en tjuv om natten</td>
      <td>movie</td>
      <td>1940</td>
      <td>98</td>
      <td>Comedy</td>
    </tr>
  </tbody>
</table>
</div>



* **Apesar de nome estar ordenado podemos ver que existem os critérios dos caracteres**

#### **c. Relação dos títulos em ordem alfabética, seus autores e diretores(quando existirem essas duas últimas informações).**
<a id="ancora4.4"></a>
[voltar](#ancora).


```python
query ='''SELECT 
    T.nom_titulo AS 'Nome do Título',
    aut.nom_pessoa AS 'Autor',
    dir.nom_pessoa AS 'Diretor'
FROM
    Titulo AS T
        LEFT JOIN
    autoria AS TA ON T.cod_titulo = TA.cod_titulo
        LEFT JOIN
    pessoa AS aut ON TA.cod_pessoa = aut.cod_pessoa
        LEFT JOIN
    direcao AS TD ON T.cod_titulo = TD.cod_titulo
        LEFT JOIN
    pessoa AS dir ON TD.cod_pessoa = dir.cod_pessoa
WHERE
    aut.nom_pessoa IS NOT NULL
        AND dir.nom_pessoa IS NOT NULL
ORDER BY T.nom_titulo ASC; '''
pd.read_sql(query,con).head(10)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Nome do Título</th>
      <th>Autor</th>
      <th>Diretor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>-But the Flesh Is Weak</td>
      <td>Ivor Novello</td>
      <td>Jack Conway</td>
    </tr>
    <tr>
      <th>1</th>
      <td>.45 Calibre War</td>
      <td>Ford Beebe</td>
      <td>Leo D. Maloney</td>
    </tr>
    <tr>
      <th>2</th>
      <td>'Blue Blazes' Rawden</td>
      <td>J.G. Hawks</td>
      <td>William S. Hart</td>
    </tr>
    <tr>
      <th>3</th>
      <td>'Midst Woodland Shadows</td>
      <td>Ralph Ince</td>
      <td>Ralph Ince</td>
    </tr>
    <tr>
      <th>4</th>
      <td>'Neath the Arizona Skies</td>
      <td>Burl R. Tuttle</td>
      <td>Harry L. Fraser</td>
    </tr>
    <tr>
      <th>5</th>
      <td>'Neath Western Skies</td>
      <td>Sally Winters</td>
      <td>J.P. McGowan</td>
    </tr>
    <tr>
      <th>6</th>
      <td>'Round the World in 80 Days</td>
      <td>Jules Verne</td>
      <td>Ralph Ince</td>
    </tr>
    <tr>
      <th>7</th>
      <td>$1000 a Touchdown</td>
      <td>Delmer Daves</td>
      <td>James P. Hogan</td>
    </tr>
    <tr>
      <th>8</th>
      <td>$50,000 Reward</td>
      <td>Frank Howard Clark</td>
      <td>Clifford S. Elfelt</td>
    </tr>
    <tr>
      <th>9</th>
      <td>10,000 Dollars</td>
      <td>Frank Lloyd</td>
      <td>Frank Lloyd</td>
    </tr>
  </tbody>
</table>
</div>



#### **d. Relação dos 100 títulos mais bem avaliados, suas avaliações e total de votos.**
<a id="ancora4.5"></a>
[voltar](#ancora).


```python
query = '''SELECT 
  nom_titulo, 
  classificacao_media, 
  COUNT(classificacao_media) AS total_votos 
FROM 
  Titulo 
  LEFT JOIN Avaliacao ON Titulo.cod_titulo = Avaliacao.cod_titulo 
GROUP BY 
  nom_titulo 
ORDER BY 
  classificacao_media DESC 
LIMIT 100; 
'''
pd.read_sql(query,con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>nom_titulo</th>
      <th>classificacao_media</th>
      <th>total_votos</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Golod... golod... golod</td>
      <td>94</td>
      <td>1</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Milionar pentru o zi</td>
      <td>90</td>
      <td>1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>It's a Wise Child</td>
      <td>89</td>
      <td>1</td>
    </tr>
    <tr>
      <th>3</th>
      <td>His Glorious Night</td>
      <td>88</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Nishizumi senshacho-den</td>
      <td>88</td>
      <td>1</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>95</th>
      <td>Otona no miru ehon - Umarete wa mita keredo</td>
      <td>80</td>
      <td>1</td>
    </tr>
    <tr>
      <th>96</th>
      <td>Der Sträfling aus Stambul</td>
      <td>80</td>
      <td>1</td>
    </tr>
    <tr>
      <th>97</th>
      <td>Free Eats</td>
      <td>80</td>
      <td>1</td>
    </tr>
    <tr>
      <th>98</th>
      <td>Igloo</td>
      <td>80</td>
      <td>1</td>
    </tr>
    <tr>
      <th>99</th>
      <td>My Man Godfrey</td>
      <td>80</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
<p>100 rows × 3 columns</p>
</div>



### **8.Solução .**
<a id="ancora8"></a>
[voltar](#ancora).

#### **a ‒ Títulos sem avaliação.**
<a id="ancora5.1"></a>
[voltar](#ancora).


```python
query = '''SELECT 
    nom_titulo as "Titulos sem votação"
FROM
    Titulo
        LEFT JOIN
    avaliacao ON titulo.cod_titulo = avaliacao.cod_titulo
WHERE
    avaliacao.qtd_votos < 1;
'''
pd.read_sql(query,con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Titulos sem votação</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>
</div>



* **Todos os títulos possuem avaliações.**

#### **b ‒ Títulos sem o detalhe da duração (qtd_minutos) ou informação do gênero (dsc_genero).**
<a id="ancora5.2"></a>
[voltar](#ancora).


```python
query = '''SELECT 
    nom_titulo AS 'Titulos sem duração ou sem informação do genero'
FROM
    titulo
        LEFT JOIN
    titulo_detalhe ON titulo.cod_titulo = titulo_detalhe.cod_titulo
WHERE
    titulo_detalhe.qtd_minutos < 1
        OR dsc_genero IS NULL; 
'''
pd.read_sql(query,con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Titulos sem duração ou sem informação do genero</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Un bon bock</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Opening of the Kiel Canal</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Awakening of Rip</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Barque sortant du port de Trouville</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Bateau-mouche sur la Seine</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
    </tr>
    <tr>
      <th>4656</th>
      <td>Kalyani</td>
    </tr>
    <tr>
      <th>4657</th>
      <td>Miyamoto Musashi - Dai-ichi-bu: Kusawake no hi...</td>
    </tr>
    <tr>
      <th>4658</th>
      <td>Peter, Paul und Nanette</td>
    </tr>
    <tr>
      <th>4659</th>
      <td>Sibiryaki</td>
    </tr>
    <tr>
      <th>4660</th>
      <td>Simón Bolívar</td>
    </tr>
  </tbody>
</table>
<p>4661 rows × 1 columns</p>
</div>



* **Foram encontrados 4661 registros de titulos sem duração ou sem informações de dsc_genero.**

#### **c - Títulos sem autor;.**
<a id="ancora5.3"></a>
[voltar](#ancora).


```python
query = '''SELECT 
    t.nom_titulo AS "Títulos sem Autor"
FROM
    titulo t
        LEFT JOIN
    autoria aut ON t.cod_titulo = aut.cod_titulo
        LEFT JOIN
    pessoa pes ON aut.cod_pessoa = pes.cod_pessoa
WHERE
    pes.nom_pessoa IS NULL; 
'''
pd.read_sql(query,con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Títulos sem Autor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Carmencita</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Le clown et ses chiens</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Pauvre Pierrot</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Un bon bock</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Blacksmith Scene</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
    </tr>
    <tr>
      <th>15155</th>
      <td>Sued for Libel</td>
    </tr>
    <tr>
      <th>15156</th>
      <td>Suotorpan tyttö</td>
    </tr>
    <tr>
      <th>15157</th>
      <td>Susan and God</td>
    </tr>
    <tr>
      <th>15158</th>
      <td>Suvorov</td>
    </tr>
    <tr>
      <th>15159</th>
      <td>Swing Social</td>
    </tr>
  </tbody>
</table>
<p>15160 rows × 1 columns</p>
</div>



* **Encontramos 15160 nome de titulos sem autor**.

#### **d - Títulos sem diretor.**
<a id="ancora5.4"></a>
[voltar](#ancora).


```python
query = '''SELECT 
    t.nom_titulo as "titulos sem Diretor"
FROM
    titulo t
        LEFT JOIN
    direcao dir ON t.cod_titulo = dir.cod_titulo
        LEFT JOIN
    pessoa pes ON dir.cod_pessoa = pes.cod_pessoa
WHERE
    pes.nom_pessoa IS NULL;
'''
pd.read_sql(query,con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>titulos sem Diretor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Corbett and Courtney Before the Kinetograph</td>
    </tr>
    <tr>
      <th>1</th>
      <td>L'arrivée d'un train à La Ciotat</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Italienischer Bauerntanz</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Rough Sea at Dover</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Départ de Jérusalem en chemin de fer</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
    </tr>
    <tr>
      <th>1849</th>
      <td>Shakespearian Spinach</td>
    </tr>
    <tr>
      <th>1850</th>
      <td>Il sogno di tutti</td>
    </tr>
    <tr>
      <th>1851</th>
      <td>Spring Meeting</td>
    </tr>
    <tr>
      <th>1852</th>
      <td>Suvorov</td>
    </tr>
    <tr>
      <th>1853</th>
      <td>Swing Social</td>
    </tr>
  </tbody>
</table>
<p>1854 rows × 1 columns</p>
</div>



* **Foram encontrados 1854 registros de títulos sem Diretor**.

#### **e - Títulos sem elenco.**
<a id="ancora5.5"></a>
[voltar](#ancora).


```python
query = '''SELECT 
    t.nom_titulo as "titulos sem Elenco"
FROM
    titulo t
        LEFT JOIN
    elenco ON t.cod_titulo = elenco.cod_titulo
        LEFT JOIN
    pessoa pes ON elenco.cod_pessoa = pes.cod_pessoa
WHERE
    pes.nom_pessoa IS NULL;
'''
pd.read_sql(query,con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>titulos sem Elenco</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Branden i Frihavnen</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Fæstningskrigen</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Mellem Aber og Bjørne</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Det løbske gasrør</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Episódios da Terrível Explosão de Bombas no Porto</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
    </tr>
    <tr>
      <th>2384</th>
      <td>Suotorpan tyttö</td>
    </tr>
    <tr>
      <th>2385</th>
      <td>Susan and God</td>
    </tr>
    <tr>
      <th>2386</th>
      <td>Suvorov</td>
    </tr>
    <tr>
      <th>2387</th>
      <td>Svetlyy put</td>
    </tr>
    <tr>
      <th>2388</th>
      <td>Swing Social</td>
    </tr>
  </tbody>
</table>
<p>2389 rows × 1 columns</p>
</div>



* **Forma encontados 2389 registros de títulos sem elenco.**

### **9.Solução .**
<a id="ancora9"></a>
[voltar](#ancora).


* **a. Nome do Título: coluna nom_titulo da tabela Titulo.**
* **b. Tipo do Título: coluna tip_titulo da tabela Titulo_Detalhe (em maiúsculo).**
* **c. Ano de Lançamento: coluna ano_lancamento da tabela Titulo_Detalhe.**
* **d. Duração: coluna qtd_minutos da tabela Titulo_Detalhe (se existir ou não).**
* **e. Gênero(s): coluna dsc_genero da tabela Titulo_Detalhe (se existir ou não).**
* **f. Nota: coluna classificacao_media da tabela Avaliacao (se existir ou não).**
* **g. Autor: nom_pessoa da tabela Pessoa (se existir ou não).**
* **h. Diretor: nom_pessoa da tabela Pessoa (se existir ou não).** 


```python
query = '''SELECT 
                Titulo.nom_titulo,
                UPPER(Titulo_Detalhe.tip_titulo) AS tip_titulo,
                Titulo_Detalhe.ano_lancamento,
                Titulo_Detalhe.qtd_minutos,
                Titulo_Detalhe.dsc_genero,
                Avaliacao.classificacao_media,
                P1.nom_pessoa AS autor,
                P2.nom_pessoa AS diretor
            FROM
                Titulo
                    LEFT JOIN
                Titulo_Detalhe ON Titulo.cod_titulo = Titulo_Detalhe.cod_titulo
                    LEFT JOIN
                Avaliacao ON Titulo.cod_titulo = Avaliacao.cod_titulo
                    LEFT JOIN
                Autoria ON Titulo.cod_titulo = Autoria.cod_titulo
                    LEFT JOIN
                Direcao ON Titulo.cod_titulo = Direcao.cod_titulo
                    LEFT JOIN
                Pessoa P1 ON autoria.cod_pessoa = P1.cod_pessoa
                    LEFT JOIN
                Pessoa P2 ON direcao.cod_pessoa = P2.cod_pessoa
            WHERE
                Titulo.ind_status = 'A'
            ORDER BY Titulo.nom_titulo;
'''

pd.read_sql(query,con)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>nom_titulo</th>
      <th>tip_titulo</th>
      <th>ano_lancamento</th>
      <th>qtd_minutos</th>
      <th>dsc_genero</th>
      <th>classificacao_media</th>
      <th>autor</th>
      <th>diretor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>-But the Flesh Is Weak</td>
      <td>MOVIE</td>
      <td>1932</td>
      <td>77</td>
      <td>Comedy</td>
      <td>57.0</td>
      <td>Ivor Novello</td>
      <td>Jack Conway</td>
    </tr>
    <tr>
      <th>1</th>
      <td>¡Centinela, alerta!</td>
      <td>MOVIE</td>
      <td>1937</td>
      <td>80</td>
      <td>Musical</td>
      <td>51.0</td>
      <td>None</td>
      <td>None</td>
    </tr>
    <tr>
      <th>2</th>
      <td>¡Que viva Mexico!</td>
      <td>MOVIE</td>
      <td>1932</td>
      <td>88</td>
      <td>History</td>
      <td>NaN</td>
      <td>Grigoriy Aleksandrov</td>
      <td>None</td>
    </tr>
    <tr>
      <th>3</th>
      <td>¡Tango!</td>
      <td>MOVIE</td>
      <td>1933</td>
      <td>80</td>
      <td>Musical,Romance</td>
      <td>63.0</td>
      <td>None</td>
      <td>Luis Moglia Barth</td>
    </tr>
    <tr>
      <th>4</th>
      <td>¿Quién me hará olvidar sin morir?</td>
      <td>MOVIE</td>
      <td>1916</td>
      <td>0</td>
      <td></td>
      <td>NaN</td>
      <td>None</td>
      <td>Mario Caserini</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>19609</th>
      <td>Zwischen Nacht und Morgen</td>
      <td>MOVIE</td>
      <td>1920</td>
      <td>0</td>
      <td></td>
      <td>NaN</td>
      <td>None</td>
      <td>Siegfried Philippi</td>
    </tr>
    <tr>
      <th>19610</th>
      <td>Zwischen Nacht und Morgen</td>
      <td>MOVIE</td>
      <td>1931</td>
      <td>79</td>
      <td>Drama</td>
      <td>NaN</td>
      <td>None</td>
      <td>Gerhard Lamprecht</td>
    </tr>
    <tr>
      <th>19611</th>
      <td>Zwischen Strom und Steppe</td>
      <td>MOVIE</td>
      <td>1939</td>
      <td>85</td>
      <td></td>
      <td>NaN</td>
      <td>None</td>
      <td>Géza von Bolváry</td>
    </tr>
    <tr>
      <th>19612</th>
      <td>Zwischen zwei Herzen</td>
      <td>MOVIE</td>
      <td>1934</td>
      <td>0</td>
      <td></td>
      <td>NaN</td>
      <td>None</td>
      <td>Herbert Selpin</td>
    </tr>
    <tr>
      <th>19613</th>
      <td>Zwölf Minuten nach zwölf</td>
      <td>MOVIE</td>
      <td>1939</td>
      <td>87</td>
      <td>Comedy,Crime</td>
      <td>NaN</td>
      <td>None</td>
      <td>Johannes Guter</td>
    </tr>
  </tbody>
</table>
<p>19614 rows × 8 columns</p>
</div>



###  **10.Solução .**
<a id="ancora10"></a>
[voltar](#ancora).

###  **11.Solução .**
<a id="ancora11"></a>
[voltar](#ancora).

###  **12.Solução .**
<a id="ancora12"></a>
[voltar](#ancora).

###  **13.Solução .**
<a id="ancora13"></a>
[voltar](#ancora).


```python
# Criando a tabela de Pessoa;
Altera='''
ALTER TABLE Pessoa
MODIFY COLUMN nom_pessoa VARCHAR(1000);'''
cursor.execute(Altera)
cursor.execute('desc pessoa')
for i in cursor:
  print(i)
```

    ('cod_pessoa', b'int', 'NO', bytearray(b'PRI'), None, '')
    ('nom_pessoa', b'varchar(1000)', 'YES', bytearray(b''), None, '')
    ('ano_nascimento', b'int', 'YES', bytearray(b''), None, '')
    ('ano_falescimento', b'int', 'YES', bytearray(b''), None, '')
    ('dsc_profissao', b'varchar(1000)', 'YES', bytearray(b''), None, '')
    

###  **14.Solução .**
<a id="ancora14"></a>
[voltar](#ancora).

###  **15.Solução .**
<a id="ancora15"></a>
[voltar](#ancora).

### **16.Solução .** 
<a id="ancora16"></a>
[voltar](#ancora).

### **17.Solução .**
<a id="ancora17"></a>
[voltar](#ancora).

### **18.Solução .**
<a id="ancora18"></a>
[voltar](#ancora).

###  **19.Solução .**
<a id="ancora19"></a>
[voltar](#ancora).

###  **20.Solução .**
<a id="ancora20"></a>
[voltar](#ancora).

###  **21.Solução .**
<a id="ancora21"></a>
[voltar](#ancora).
