# Bootcamp: Analista de Banco de Dados  - Desafio do Módulo 4

<img src="./xpe.png" align='left' alt="drawing" width="150" heigth="150"/>

<img src="./bd.jpg" align='center' alt="drawing" width="300" heigth="300"/>

## Objetivos de Ensino

### Exercitar os seguintes conceitos trabalhados no Módulo:



* **1. Analise e otimização de plano de queries no SQL Server e MongoDB**
* **2. Cargas e expurgos massivos de dados no SQL Server e MongoDB.**

## Enunciado:


**O projeto para o qual você foi contratado no Módulo 2 entra agora em sua 
segunda fase, onde será feita a otimização das queries que foram 
implementadas no SQL Sever.**


<a name="ancora"></a>
# Com base nesse modelo de dados, você foi contratado pela empresa para desempenhar as seguintes atividades:
* ## [Contexto](#ancora1)    
        
* ## [Diagrama EER - BDProduções](#ancora2)

* ## [Atividades.](#ancora3)
    
    * [1. Criar o banco BDProducoes e seu schema físico.](#ancora4)
    * [2.Criar o banco de dados BD_Producoes.](#ancora5)
    * [3.Analise o plano de execução da query abaixo, que retorna a quantidade de títulos ativos, e verifique como ela pode ser melhorada.](#ancora6)
    * [4.Analise o plano de execução da query abaixo, que retorna a relação dos 100 títulos mais bem avaliados, suas avaliações e total de votos, e verifique como ela pode ser melhorada.](#ancora7)
    * [5.Analise o plano de execução da query abaixo, Títulos sem o detalhe da duração (qtd_minutos) ou informação do gênero (dsc_genero), e verifique como ela pode ser melhorada.](#ancora8)
    * [6. Analise o plano de execução da query abaixo, que retorna informações acerca dos títulos ativos, ordenados alfabeticamente pelo nome do título, e verifique como ela pode ser melhorada.](#ancora9)
    * [7.A tabela dbo.Pessoa é a maior tabela do sistema. Constantemente é necessário fazer uma limpeza das pessoas cadastradas que não exercem nenhuma função, ou seja, não é do elenco, não é diretor e não é autor. Sem incluir, alterar ou excluir as colunas das tabelas existentes, pense em uma estratégia para esse expurgo ser feito da forma mais performática possível.](#ancora10)
    * [8. O diretor da empresa que o contratou ficou sabendo que você aprendeu, no Bootcamp Analista de Banco de Dados do IGTI, como melhorar performance de queries no MongoDB. Devido a isso, contratou-o também para trabalhar em uma força tarefa para melhorar a performance de um sistema de outra empresa do grupo, que controla informações dos restaurantes de todo o Estados Unidos](#ancora11)
    * [9. Com os dados carregados, você deve ajudar a melhorar a performance das seguintes queries.](#ancora12) 
    * [10. Conclusão.](#ancora13)
        
    

## Contexto.
<a id="ancora1"></a>
[voltar](#ancora).

* As tabelas Titulo e Titulo_Detalhe permitem armazenar informações básicas e técnicas sobre as produções, enquanto as tabelas Avaliacao, Direcao, Autoria e Elenco permitem armazenar informações específicas sobre os aspectos críticos, direção e elenco de cada produção.
* A tabela Pessoa é importante para garantir a integridade dos dados, pois permite que todas as pessoas envolvidas na produção sejam identificadas de maneira única.
* Além disso, é importante estabelecer relações adequadas entre as tabelas para garantir a integridade dos dados e a consistência do modelo de dados. Por exemplo, a tabela Direcao deve ter uma relação com a tabela Titulo para indicar quais diretores estão associados a quais produções, e a tabela Pessoa deve ter uma relação com as tabelas Direcao, Autoria e Elenco para identificar as pessoas envolvidas na produção.

## Diagrama EER - BDProduções.
<a id="ancora2"></a>
[voltar](#ancora).

![img](./eer.png)

## Atividades:
<a id="ancora3"></a>
[voltar](#ancora).

##  **1. Criar o banco BDProducoes e seu schema físico.**  
<a id="ancora4"></a>
[voltar](#ancora).


```python
#importação das bibliotecas para conexão 1
import mysql.connector
import pandas as pd
import warnings
warnings.filterwarnings('ignore')
```

##  **2.Criar o banco de dados BD_Producoes.**
<a id="ancora5"></a>
[voltar](#ancora).


```python
# Excluí o banco de dados se ele existir apenas para refazer em caso de erro.
# drop database teste; -- Deleta o bd teste --
drop_bd='''
DROP DATABASE bd_producoes;'''
cursor.execute(drop_bd)
cursor.execute('SHOW databases')
for i in cursor:
    if 'bd_producoes' in i:
        print(i)
```


```python
# Criando o banco de dados BD_Producoes;
criar='''
CREATE SCHEMA IF NOT EXISTS `BD_Producoes` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;'''
con = mysql.connector.connect(host='localhost',user='julio',password='')
cursor = con.cursor()
cursor.execute(criar)
cursor.execute('SHOW databases')
for i in cursor:
    if 'bd_producoes' in i:
        print(i)
```

    ('bd_producoes',)
    


```python
# Conectando ao database bd_producoes recém criada
con = mysql.connector.connect(host='localhost',database='bd_producoes',user='julio',password='')
cursor = con.cursor()
```

###  **Script Para Criar as Tabelas**
<a id="ancora3.3"></a>
[voltar](#ancora).


```python
#Criando a tabela de Autoria;
criar_Autoria='''
CREATE TABLE IF NOT EXISTS Autoria (
  cod_autoria INT PRIMARY KEY AUTO_INCREMENT,
  cod_titulo INT NOT NULL,
  cod_pessoa INT NOT NULL  
);'''
cursor.execute(criar_Autoria)

# Cria a tabela 'Avaliacao'
criar_avaliacao='''
CREATE TABLE IF NOT EXISTS Avaliacao (
  cod_titulo INT NOT NULL,
  classificacao_media INT NOT NULL,
  qtd_votos INT NOT NULL
);'''
cursor.execute(criar_avaliacao)

# Cria a tabela 'Direcao'
criar_direcao='''
CREATE TABLE IF NOT EXISTS Direcao (
  cod_direcao INT PRIMARY KEY AUTO_INCREMENT,
  cod_titulo INT NOT NULL,
  cod_pessoa INT NOT NULL
);'''
cursor.execute(criar_direcao)

# Cria a tabela 'Elenco'
criar_elenco='''
CREATE TABLE IF NOT EXISTS Elenco (
  cod_elenco INT PRIMARY KEY AUTO_INCREMENT,
  cod_titulo INT NOT NULL,
  cod_pessoa INT NOT NULL,
  dsc_funcao VARCHAR(1000) NOT NULL,
  desc_personagem VARCHAR(1000)
);'''
cursor.execute(criar_elenco)

# Cria a tabela 'Pessoa'
criar_pessoa='''
CREATE TABLE IF NOT EXISTS Pessoa (
  cod_pessoa INT NOT NULL,
  nom_pessoa VARCHAR(500) NOT NULL,
  ano_nascimento INT NULL,
  ano_falescimento INT NULL,
  dsc_profissao VARCHAR(1000) NULL,
  CONSTRAINT PK_Pessoa PRIMARY KEY CLUSTERED (cod_pessoa ASC)
);'''
cursor.execute(criar_pessoa)

# Cria a tabela 'Titulo'
criar_titulo='''
CREATE TABLE IF NOT EXISTS Titulo (
  cod_titulo INT NOT NULL,
  nom_titulo VARCHAR(1000) NULL,
  CONSTRAINT PK_Titulo PRIMARY KEY CLUSTERED (cod_titulo ASC)
);'''
cursor.execute(criar_titulo)

# Cria a tabela 'Titulo_Detalhe'
criar_titulo_detalhe='''
CREATE TABLE IF NOT EXISTS Titulo_Detalhe (
  cod_titulo INT NOT NULL,
  tip_titulo VARCHAR(100) NOT NULL,
  nom_principal_titulo VARCHAR(1000) NOT NULL,
  nom_original_titulo VARCHAR(1000) NOT NULL,
  ind_adulto BIT NOT NULL,
  ano_lancamento INT NOT NULL,
  qtd_minutos SMALLINT NULL,
  dsc_genero VARCHAR(1000) NULL
);'''
cursor.execute(criar_titulo_detalhe)

# Exibe as tabelas do banco de dados
cursor.execute('SHOW tables')
for tabela in cursor:
  print(tabela)
```

    ('autoria',)
    ('avaliacao',)
    ('direcao',)
    ('elenco',)
    ('pessoa',)
    ('titulo',)
    ('titulo_detalhe',)
    

###  **Script Realizar as Aterações**
<a id="ancora3.5"></a>
[voltar](#ancora).

**Alterando as tabelas conforme o enunciado**


```python
# Alterando a tabela Autoria para adicionar as chaves estrangeiras
alterar_autoria = '''
ALTER TABLE Autoria
ADD CONSTRAINT FK_Autoria_Pessoa
FOREIGN KEY(cod_pessoa)
REFERENCES Pessoa(cod_pessoa),
ADD CONSTRAINT FK_Autoria_Titulo
FOREIGN KEY(cod_titulo)
REFERENCES Titulo(cod_titulo);
'''
cursor.execute(alterar_autoria)

# Alterando a tabela Avaliacao para adicionar a chave estrangeira
alterar_avaliacao = '''
ALTER TABLE Avaliacao
ADD CONSTRAINT FK_Avaliacao_Titulo
FOREIGN KEY(cod_titulo)
REFERENCES Titulo(cod_titulo);
'''
cursor.execute(alterar_avaliacao)

# Alterando a tabela Direcao para adicionar a chave estrangeira
alterar_direcao = '''
ALTER TABLE Direcao
ADD CONSTRAINT FK_Direcao_Pessoa
FOREIGN KEY(cod_pessoa)
REFERENCES Pessoa(cod_pessoa);
'''
cursor.execute(alterar_direcao)

# Alterando a tabela Direcao para adicionar a chave estrangeira
alterar_direcao_titulo = '''
ALTER TABLE Direcao
ADD CONSTRAINT FK_Direcao_Titulo
FOREIGN KEY(cod_titulo)
REFERENCES Titulo(cod_titulo);
'''
cursor.execute(alterar_direcao_titulo)

# Alterando a tabela Elenco para adicionar as chaves estrangeiras
alterar_elenco_pessoa = '''
ALTER TABLE Elenco
ADD CONSTRAINT FK_Elenco_Pessoa
FOREIGN KEY(cod_pessoa)
REFERENCES Pessoa(cod_pessoa);
'''
cursor.execute(alterar_elenco_pessoa)

alterar_elenco_titulo = '''
ALTER TABLE Elenco
ADD CONSTRAINT FK_Elenco_Titulo
FOREIGN KEY(cod_titulo)
REFERENCES Titulo(cod_titulo);
'''
cursor.execute(alterar_elenco_titulo)

# Alterando a tabela Titulo_Detalhe para adicionar a chave estrangeira
alterar_titulo_detalhe_titulo = '''
ALTER TABLE Titulo_Detalhe
ADD CONSTRAINT FK_Titulo_Detalhe_Titulo
FOREIGN KEY(cod_titulo)
REFERENCES Titulo(cod_titulo);
'''
cursor.execute(alterar_titulo_detalhe_titulo)


# Alterando a tabela Titulo para tornar a coluna nom_titulo NOT NULL
alterar_titulo_nom_titulo = '''
ALTER TABLE Titulo
MODIFY COLUMN nom_titulo VARCHAR(1000) NOT NULL;
'''
cursor.execute(alterar_titulo_nom_titulo)

# Alterando a tabela Pessoa para tornar a coluna nom_pessoa NOT NULL
alterar_pessoa_nom_pessoa = '''
ALTER TABLE Pessoa
MODIFY COLUMN nom_pessoa VARCHAR(1000) NOT NULL;
'''
cursor.execute(alterar_pessoa_nom_pessoa)

# Adicionando a coluna ind_status na tabela Titulo com valor padrão 'A'
adicionar_ind_status = '''
ALTER TABLE Titulo
ADD COLUMN ind_status CHAR(1) NOT NULL DEFAULT 'A';
'''
cursor.execute(adicionar_ind_status)

# Verificando as alterações nas tabelas do database 'bd_producoes'
cursor.execute('SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE CONSTRAINT_TYPE = "FOREIGN KEY" AND TABLE_SCHEMA = "bd_producoes"')
for i in cursor:
    print(i)


```

    ('def', 'bd_producoes', 'FK_Autoria_Pessoa', 'bd_producoes', 'autoria', bytearray(b'FOREIGN KEY'), bytearray(b'YES'))
    ('def', 'bd_producoes', 'FK_Autoria_Titulo', 'bd_producoes', 'autoria', bytearray(b'FOREIGN KEY'), bytearray(b'YES'))
    ('def', 'bd_producoes', 'FK_Avaliacao_Titulo', 'bd_producoes', 'avaliacao', bytearray(b'FOREIGN KEY'), bytearray(b'YES'))
    ('def', 'bd_producoes', 'FK_Direcao_Pessoa', 'bd_producoes', 'direcao', bytearray(b'FOREIGN KEY'), bytearray(b'YES'))
    ('def', 'bd_producoes', 'FK_Direcao_Titulo', 'bd_producoes', 'direcao', bytearray(b'FOREIGN KEY'), bytearray(b'YES'))
    ('def', 'bd_producoes', 'FK_Elenco_Pessoa', 'bd_producoes', 'elenco', bytearray(b'FOREIGN KEY'), bytearray(b'YES'))
    ('def', 'bd_producoes', 'FK_Elenco_Titulo', 'bd_producoes', 'elenco', bytearray(b'FOREIGN KEY'), bytearray(b'YES'))
    ('def', 'bd_producoes', 'FK_Titulo_Detalhe_Titulo', 'bd_producoes', 'titulo_detalhe', bytearray(b'FOREIGN KEY'), bytearray(b'YES'))
    

**Nota: No exemplo acima, o valor padrão de ind_status é 'A', o que significa "ativo".**

###  **Script para carga dos dados em formato de arquivo (txt).**
<a id="ancora3.7"></a>
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
      <th>desc_personagem</th>
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



## 3.Analise o plano de execução da query abaixo, que retorna a quantidade de títulos ativos, e verifique como ela pode ser melhorada;
<a id="ancora6"></a>
[voltar](#ancora).
SELECT count(*) AS "Total de Títulos Ativos"
FROM Titulo
WHERE ind_status = 'A'
**Para melhorar o plano de execução dessa consulta, é possível criar um índice no campo "ind_status" da tabela "Titulo". Isso permitirá que o MySQL use uma busca mais eficiente para encontrar os títulos ativos, em vez de realizar uma varredura completa da tabela.**


```python
# Criando o índice na tabela "Titulo"
cursor.execute("CREATE INDEX idx_titulo_ind_status ON Titulo (ind_status)")

# Executando a consulta otimizada
cursor.execute("SELECT COUNT(*) AS 'Total de Títulos Ativos' FROM Titulo WHERE ind_status = 'A'")
resultado = cursor.fetchone()
print(resultado)

```

    (19614,)
    

**Esse script cria o índice "idx_titulo_ind_status" na tabela "Titulo" e depois executa a consulta otimizada para contar o total de títulos ativos. O resultado da consulta é armazenado na variável "resultado" e exibido na tela.**

## 4.Analise o plano de execução da query abaixo, que retorna a relação dos 100 títulos mais bem avaliados, suas avaliações e total de votos, e verifique como ela pode ser melhorada:
<a id="ancora7"></a>
[voltar](#ancora).
SELECT TOP (100) T.nom_titulo, A.classificacao_media, A.qtd_votos
FROM Titulo T JOIN Avaliacao A
ON T.cod_titulo = A.cod_titulo
ORDER BY A.classificacao_media DESC

```python
# criando índice na tabela Avaliacao para as colunas (cod_titulo, classificacao_media, qtd_votos)
cursor.execute('CREATE INDEX idx_Avaliacao ON Avaliacao (cod_titulo, classificacao_media, qtd_votos)')

# executando a consulta otimizada
query = '''SELECT 
  T.nom_titulo, 
  A.classificacao_media, 
  A.qtd_votos
FROM 
  Titulo T JOIN Avaliacao A
  ON T.cod_titulo = A.cod_titulo 
ORDER BY 
  A.classificacao_media DESC 
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
      <th>qtd_votos</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Golod... golod... golod</td>
      <td>94</td>
      <td>12</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Milionar pentru o zi</td>
      <td>90</td>
      <td>5</td>
    </tr>
    <tr>
      <th>2</th>
      <td>It's a Wise Child</td>
      <td>89</td>
      <td>55</td>
    </tr>
    <tr>
      <th>3</th>
      <td>His Glorious Night</td>
      <td>88</td>
      <td>42</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Ein hoffnungsloser Fall</td>
      <td>88</td>
      <td>8</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>95</th>
      <td>From Nurse to Worse</td>
      <td>80</td>
      <td>361</td>
    </tr>
    <tr>
      <th>96</th>
      <td>Frontier Crusader</td>
      <td>80</td>
      <td>6</td>
    </tr>
    <tr>
      <th>97</th>
      <td>The Grapes of Wrath</td>
      <td>80</td>
      <td>81942</td>
    </tr>
    <tr>
      <th>98</th>
      <td>Adam and Eva</td>
      <td>80</td>
      <td>41</td>
    </tr>
    <tr>
      <th>99</th>
      <td>Die Nibelungen: Kriemhilds Rache</td>
      <td>80</td>
      <td>3614</td>
    </tr>
  </tbody>
</table>
<p>100 rows × 3 columns</p>
</div>



## 5.Analise o plano de execução da query abaixo, Títulos sem o detalhe da duração (qtd_minutos) ou informação do gênero (dsc_genero), e verifique como ela pode ser melhorada:
<a id="ancora8"></a>
[voltar](#ancora).
SELECT *
FROM Titulo T JOIN Titulo_Detalhe D
ON T.cod_titulo = D.cod_titulo
WHERE D.qtd_minutos IS NULL OR D.dsc_genero IS NUL

```python
# cria o índice na coluna cod_titulo da tabela Titulo_Detalhe
cursor.execute('CREATE INDEX idx_Titulo_Detalhe_cod_titulo ON Titulo_Detalhe (cod_titulo)')

# cria o índice na coluna cod_titulo da tabela Titulo
cursor.execute('CREATE INDEX idx_Titulo_cod_titulo ON Titulo (cod_titulo)')

# executa a query otimizada
query = """
SELECT *
FROM Titulo T
LEFT JOIN Titulo_Detalhe D
ON T.cod_titulo = D.cod_titulo
WHERE D.qtd_minutos < 1 OR D.dsc_genero IS NULL
"""
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
      <th>cod_titulo</th>
      <th>nom_titulo</th>
      <th>ind_status</th>
      <th>cod_titulo</th>
      <th>tip_titulo</th>
      <th>nom_principal_titulo</th>
      <th>nom_original_titulo</th>
      <th>ind_adulto</th>
      <th>ano_lancamento</th>
      <th>qtd_minutos</th>
      <th>dsc_genero</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>4</td>
      <td>Un bon bock</td>
      <td>A</td>
      <td>4</td>
      <td>short</td>
      <td>Un bon bock</td>
      <td>Un bon bock</td>
      <td>1</td>
      <td>1892</td>
      <td>0</td>
      <td>Animation,Short</td>
    </tr>
    <tr>
      <th>1</th>
      <td>24</td>
      <td>Opening of the Kiel Canal</td>
      <td>A</td>
      <td>24</td>
      <td>short</td>
      <td>Opening of the Kiel Canal</td>
      <td>Opening of the Kiel Canal</td>
      <td>1</td>
      <td>1895</td>
      <td>0</td>
      <td>News,Short</td>
    </tr>
    <tr>
      <th>2</th>
      <td>36</td>
      <td>Awakening of Rip</td>
      <td>A</td>
      <td>36</td>
      <td>short</td>
      <td>Awakening of Rip</td>
      <td>Awakening of Rip</td>
      <td>1</td>
      <td>1896</td>
      <td>0</td>
      <td>Drama,Short</td>
    </tr>
    <tr>
      <th>3</th>
      <td>40</td>
      <td>Barque sortant du port de Trouville</td>
      <td>A</td>
      <td>40</td>
      <td>short</td>
      <td>Barque sortant du port de Trouville</td>
      <td>Barque sortant du port de Trouville</td>
      <td>1</td>
      <td>1896</td>
      <td>0</td>
      <td>Documentary,Short</td>
    </tr>
    <tr>
      <th>4</th>
      <td>42</td>
      <td>Bateau-mouche sur la Seine</td>
      <td>A</td>
      <td>42</td>
      <td>short</td>
      <td>Bateau-mouche sur la Seine</td>
      <td>Bateau-mouche sur la Seine</td>
      <td>1</td>
      <td>1896</td>
      <td>0</td>
      <td>Documentary,Short</td>
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
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>4656</th>
      <td>32658</td>
      <td>Kalyani</td>
      <td>A</td>
      <td>32658</td>
      <td>movie</td>
      <td>Kalyani</td>
      <td>Kalyani</td>
      <td>1</td>
      <td>1940</td>
      <td>0</td>
      <td>Drama</td>
    </tr>
    <tr>
      <th>4657</th>
      <td>32822</td>
      <td>Miyamoto Musashi - Dai-ichi-bu: Kusawake no hi...</td>
      <td>A</td>
      <td>32822</td>
      <td>movie</td>
      <td>Miyamoto Musashi - Dai-ichi-bu: Kusawake no hi...</td>
      <td>Miyamoto Musashi - Dai-ichi-bu: Kusawake no hi...</td>
      <td>1</td>
      <td>1940</td>
      <td>0</td>
      <td>Drama</td>
    </tr>
    <tr>
      <th>4658</th>
      <td>32899</td>
      <td>Peter, Paul und Nanette</td>
      <td>A</td>
      <td>32899</td>
      <td>movie</td>
      <td>Peter, Paul und Nanette</td>
      <td>Peter, Paul und Nanette</td>
      <td>1</td>
      <td>1935</td>
      <td>0</td>
      <td></td>
    </tr>
    <tr>
      <th>4659</th>
      <td>33048</td>
      <td>Sibiryaki</td>
      <td>A</td>
      <td>33048</td>
      <td>movie</td>
      <td>Sibiryaki</td>
      <td>Sibiryaki</td>
      <td>1</td>
      <td>1940</td>
      <td>0</td>
      <td>Adventure,Drama</td>
    </tr>
    <tr>
      <th>4660</th>
      <td>33053</td>
      <td>Simón Bolívar</td>
      <td>A</td>
      <td>33053</td>
      <td>movie</td>
      <td>The Life of Simon Bolivar</td>
      <td>Simón Bolívar</td>
      <td>1</td>
      <td>1942</td>
      <td>0</td>
      <td>Adventure,Biography,Drama</td>
    </tr>
  </tbody>
</table>
<p>4661 rows × 11 columns</p>
</div>



## 6. Analise o plano de execução da query abaixo, que retorna informações acerca dos títulos ativos, ordenados alfabeticamente pelo nome do título, e verifique como ela pode ser melhorada.
<a id="ancora9"></a>
[voltar](#ancora).
SELECT T.nom_titulo AS "Nome do Título", UPPER (TD.tip_titulo) AS "Tipo 
do Título", TD.ano_lancamento AS "Ano de Lançamento", TD.qtd_minutos AS
"Duração", TD.dsc_genero AS "Gênero(s)", A.classificacao_media AS "Nota",
P.nom_pessoa AS "Autor", P2.nom_pessoa AS "Diretor"
FROM Titulo T LEFT JOIN Titulo_Detalhe TD
ON T.cod_titulo = TD.cod_titulo
LEFT JOIN Avaliacao A
ON T.cod_titulo = A.cod_titulo
LEFT JOIN Autoria E
ON T.cod_titulo = E.cod_titulo
LEFT JOIN Pessoa P
ON E.cod_pessoa = P.cod_pessoa
LEFT JOIN Direcao D
ON T.cod_titulo = D.cod_titulo
LEFT JOIN Pessoa P2
ON D.cod_pessoa = P2.cod_pessoa
WHERE T.ind_status = 'A'
ORDER BY T.nom_titulo
**A query pode ser melhorada através da criação de índices nas tabelas utilizadas, como por exemplo, criar índices nas colunas que são usadas para junção das tabelas.**


```python
# Cria índices nas tabelas
cursor.execute("CREATE INDEX idx_titulo_cod_titulo ON Titulo (cod_titulo)")
cursor.execute("CREATE INDEX idx_titulo_detalhe_cod_titulo ON Titulo_Detalhe (cod_titulo)")
cursor.execute("CREATE INDEX idx_avaliacao_cod_titulo ON Avaliacao (cod_titulo)")
cursor.execute("CREATE INDEX idx_autoria_cod_titulo ON Autoria (cod_titulo)")
cursor.execute("CREATE INDEX idx_autoria_cod_pessoa ON Autoria (cod_pessoa)")
cursor.execute("CREATE INDEX idx_direcao_cod_titulo ON Direcao (cod_titulo)")
cursor.execute("CREATE INDEX idx_direcao_cod_pessoa ON Direcao (cod_pessoa)")

# Query aprimorada
query = """
SELECT 
    T.nom_titulo AS "Nome do Título", 
    UPPER(TD.tip_titulo) AS "Tipo do Título", 
    TD.ano_lancamento AS "Ano de Lançamento", 
    TD.qtd_minutos AS "Duração", 
    TD.dsc_genero AS "Gênero(s)", 
    A.classificacao_media AS "Nota",
    P.nom_pessoa AS "Autor", 
    P2.nom_pessoa AS "Diretor"
FROM 
    Titulo T 
    JOIN Titulo_Detalhe TD ON T.cod_titulo = TD.cod_titulo
    JOIN Avaliacao A ON T.cod_titulo = A.cod_titulo
    LEFT JOIN Autoria E ON T.cod_titulo = E.cod_titulo
    LEFT JOIN Pessoa P ON E.cod_pessoa = P.cod_pessoa
    LEFT JOIN Direcao D ON T.cod_titulo = D.cod_titulo
    LEFT JOIN Pessoa P2 ON D.cod_pessoa = P2.cod_pessoa
WHERE 
    T.ind_status = 'A'
ORDER BY 
    T.nom_titulo
"""

# Executa a query
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
      <th>Nome do Título</th>
      <th>Tipo do Título</th>
      <th>Ano de Lançamento</th>
      <th>Duração</th>
      <th>Gênero(s)</th>
      <th>Nota</th>
      <th>Autor</th>
      <th>Diretor</th>
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
      <td>57</td>
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
      <td>51</td>
      <td>None</td>
      <td>None</td>
    </tr>
    <tr>
      <th>2</th>
      <td>¡Tango!</td>
      <td>MOVIE</td>
      <td>1933</td>
      <td>80</td>
      <td>Musical,Romance</td>
      <td>63</td>
      <td>None</td>
      <td>Luis Moglia Barth</td>
    </tr>
    <tr>
      <th>3</th>
      <td>¿Quién me quiere a mí?</td>
      <td>MOVIE</td>
      <td>1936</td>
      <td>84</td>
      <td>Drama</td>
      <td>60</td>
      <td>None</td>
      <td>None</td>
    </tr>
    <tr>
      <th>4</th>
      <td>...heute abend bei mir</td>
      <td>MOVIE</td>
      <td>1934</td>
      <td>91</td>
      <td></td>
      <td>69</td>
      <td>None</td>
      <td>Carl Boese</td>
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
      <th>11973</th>
      <td>Zuiderzeewerken</td>
      <td>SHORT</td>
      <td>1930</td>
      <td>26</td>
      <td>Short</td>
      <td>82</td>
      <td>Joris Ivens</td>
      <td>Joris Ivens</td>
    </tr>
    <tr>
      <th>11974</th>
      <td>Zur Chronik von Grieshuus</td>
      <td>MOVIE</td>
      <td>1925</td>
      <td>110</td>
      <td>Drama</td>
      <td>66</td>
      <td>None</td>
      <td>Arthur von Gerlach</td>
    </tr>
    <tr>
      <th>11975</th>
      <td>Zvenigora</td>
      <td>MOVIE</td>
      <td>1928</td>
      <td>68</td>
      <td>Drama,Fantasy</td>
      <td>71</td>
      <td>None</td>
      <td>Aleksandr Dovzhenko</td>
    </tr>
    <tr>
      <th>11976</th>
      <td>Zwei Herzen im Dreiviertel-Takt</td>
      <td>MOVIE</td>
      <td>1930</td>
      <td>96</td>
      <td>Musical</td>
      <td>70</td>
      <td>None</td>
      <td>Géza von Bolváry</td>
    </tr>
    <tr>
      <th>11977</th>
      <td>Zwei Krawatten</td>
      <td>MOVIE</td>
      <td>1930</td>
      <td>88</td>
      <td>Comedy,Musical</td>
      <td>70</td>
      <td>None</td>
      <td>None</td>
    </tr>
  </tbody>
</table>
<p>11978 rows × 8 columns</p>
</div>



## 7.A tabela dbo.Pessoa é a maior tabela do sistema. Constantemente é necessário fazer uma limpeza das pessoas cadastradas que não exercem nenhuma função, ou seja, não é do elenco, não é diretor e não é autor. Sem incluir, alterar ou excluir as colunas das tabelas existentes, pense em uma estratégia para esse expurgo ser feito da forma mais performática possível.
<a id="ancora10"></a>
[voltar](#ancora).


```python

```


```python
# cria índices nas colunas utilizadas na consulta SQL

#cursor.execute("CREATE INDEX idx_elenco ON Elenco (cod_pessoa)")
#cursor.execute("CREATE INDEX idx_diretor ON Direcao (cod_pessoa)")
#cursor.execute("CREATE INDEX idx_autor ON Autoria (cod_pessoa)")

# define a query SQL para selecionar as pessoas que não exercem nenhuma função
query = """
SELECT * 
FROM Pessoa 
WHERE cod_pessoa NOT IN (SELECT cod_pessoa 
                 FROM Elenco 
                 UNION SELECT cod_pessoa 
                 FROM Direcao 
                 UNION SELECT cod_pessoa 
                 FROM Autoria)
"""

# executa a query SQL
cursor.execute(query)

# recupera os registros selecionados
result = cursor.fetchall()

# exibe a quantidade de registros selecionados
print(f"Foram selecionadas {len(result)} pessoas para expurgo.")

# define a query SQL para deletar as pessoas selecionadas
sql = "DELETE FROM Pessoa WHERE cod_pessoa = %s"

# cria a consulta principal que exclui as pessoas da tabela Pessoa
#delete_query = """
#    DELETE FROM Pessoa
#    WHERE cod_pessoa IN ({})
#""".format(subquery)

# executa a consulta de exclusão
#cursor.execute(delete_query)

# itera sobre os registros selecionados e deleta cada um deles
for row in result:
    cursor.execute(sql, (row[0],))

# confirma as alterações no banco de dados
con.commit()
# exibe uma mensagem de conclusão
print("O expurgo de pessoas foi concluído com sucesso.")

```

    Foram selecionadas 0 pessoas para expurgo.
    O expurgo de pessoas foi concluído com sucesso.
    

## 8. O diretor da empresa que o contratou ficou sabendo que você aprendeu, no Bootcamp Analista de Banco de Dados do IGTI, como melhorar performance de queries no MongoDB. Devido a isso, contratou-o também para trabalhar em uma força tarefa para melhorar a performance de um sistema de outra empresa do grupo, que controla informações dos restaurantes de todo o Estados Unidos.
<a id="ancora11"></a>
[voltar](#ancora).

#### **Para isso, foi disponibilizado para você, o dump das duas collections do sistema e o script para fazer a carga das informações no MongoDB**
<a id="ancora5.1"></a>
[voltar](#ancora).

* **Collections: people.json, restaurants.json**
* **Scripts:** 
    * mongoimport --drop -c people people.json
    * mongoimport --drop -c restaurants restaurants.json

**Realizando a carga através de um script em python**


```python
#importação das libs
import pymongo
import json

# Conectando ao banco de dados
client = pymongo.MongoClient("mongodb://localhost:27017/")
db = client["desafio4"]

# Importando dados para a coleção "people"
people = db["people"]
with open('./Dataset1/people.json', 'r', encoding="iso-8859-1") as f:
    # Tenta carregar o arquivo JSON
    try:
        people_data = json.load(f)
    except json.JSONDecodeError:
        # Trata o erro de decodificação
        f.seek(0)  # Move o cursor para o início do arquivo
        content = f.read()
        content = "[" + content.replace("}\n{", "},\n{") + "]"
        people_data = json.loads(content)
people.drop()  # apaga a coleção se já existir
people.insert_many(people_data)

# Importando dados para a coleção "restaurants"
restaurants = db["restaurants"]
with open('./Dataset1/restaurants.json', 'r',encoding="iso-8859-1") as f:
    # Tenta carregar o arquivo JSON
    try:
        restaurants_data = json.load(f)
    except json.JSONDecodeError:
        # Trata o erro de decodificação
        f.seek(0)  # Move o cursor para o início do arquivo
        content = f.read()
        content = "[" + content.replace("}\n{", "},\n{") + "]"
        restaurants_data = json.loads(content)    
restaurants.drop()  # apaga a coleção se já existir
restaurants.insert_many(restaurants_data)
# Imprime a contagem de documentos inseridos
print(f"{restaurants.count_documents({})} documentos inseridos na coleção 'restaurants'.")
print(f"{people.count_documents({})} documentos inseridos na coleção 'peoples'.")
```
**O erro informa que a versão do mongodb não aceita o prefixo '$' e temos alguns campos como $oid e $date nesse formato inválido**

**Para corrigir o problema será necessário remover esse caracter**.



```python
import json

# Abre o arquivo JSON
with open('./Dataset1/people.json', 'r') as f:
    # Tenta carregar o arquivo JSON
    try:
        data = json.load(f)
    except json.JSONDecodeError:
        # Trata o erro de decodificação
        f.seek(0)  # Move o cursor para o início do arquivo
        content = f.read()
        content = "[" + content.replace("}\n{", "},\n{") + "]" #incorpor '[]' ao json
        data = json.loads(content)
```
BulkWriteError: batch op errors occurred, full error: {'writeErrors': [{'index': 0, 'code': 52, 'errmsg': "_id fields may not contain '$'-prefixed fields: $oid is not valid for storage.", 'op': {'_id': {'$oid': '57d7a121fa937f710a7d486e'}, 'last_name': 'Pham', 'quote': 'Aliquam est reiciendis alias neque ad.', 'job': 'Counselling psychologist', 'ssn': '401-31-6615', 'address': {'city': 'Burgessborough', 'street': '83248 Woods Extension', 'zip': '47201'}, 'first_name': 'Yvonne', 'company_id': {'$oid': '57d7a121fa937f710a7d486d'}, 'employer': 'Terry and Sons', 'birthday': {'$date': '2011-03-17T11:21:36.000Z'}, 'email': 'murillobrian@cox.net'}}], 'writeConcernErrors': [], 'nInserted': 0, 'nUpserted': 0, 'nMatched': 0, 'nModified': 0, 'nRemoved': 0, 'upserted': []}

```python
# Quantidade de registros
len(data)
```




    50474



* **Agora vamos tratar os dados para que possamos realizar a carga**
* **Deve haver uma forma mais sofistica, porém é o que pensei de primeiro momento, o código irá percorrer todo os documentos e onde houver o caracter, o mesmo será substituído por vazio.**
* **Para finalizar irei salvar o json com o nome people_updated.json**.


```python
data[:1]
```




    [{'_id': {'$oid': '57d7a121fa937f710a7d486e'},
      'last_name': 'Pham',
      'quote': 'Aliquam est reiciendis alias neque ad.',
      'job': 'Counselling psychologist',
      'ssn': '401-31-6615',
      'address': {'city': 'Burgessborough',
       'street': '83248 Woods Extension',
       'zip': '47201'},
      'first_name': 'Yvonne',
      'company_id': {'$oid': '57d7a121fa937f710a7d486d'},
      'employer': 'Terry and Sons',
      'birthday': {'$date': '2011-03-17T11:21:36.000Z'},
      'email': 'murillobrian@cox.net'}]




```python
data = [{'_id': {'$oid': '57d7a121fa937f710a7d486e'},
  'last_name': 'Pham',
  'quote': 'Aliquam est reiciendis alias neque ad.',
  'job': 'Counselling psychologist',
  'ssn': '401-31-6615',
  'address': {'city': 'Burgessborough',
   'street': '83248 Woods Extension',
   'zip': '47201'},
  'first_name': 'Yvonne',
  'company_id': {'$oid': '57d7a121fa937f710a7d486d'},
  'employer': 'Terry and Sons',
  'birthday': {'$date': '2011-03-17T11:21:36.000Z'},
  'email': 'murillobrian@cox.net'}]
```

**Função para remover o caractere dolar**


```python
def remove_dollar_sign(obj):
    if isinstance(obj, dict):
        new_obj = {}
        for key, value in obj.items():
            new_key = key.replace('$', '')
            new_value = remove_dollar_sign(value)
            new_obj[new_key] = new_value
        return new_obj
    elif isinstance(obj, list):
        new_list = []
        for item in obj:
            new_item = remove_dollar_sign(item)
            new_list.append(new_item)
        return new_list
    elif isinstance(obj, str):
        return obj.replace('$', '')
    else:
        return obj
```


```python
new_data = remove_dollar_sign(data)
```


```python
len(new_data)
```




    50474



**Agora sim, podemos carregar os documentos na collection**


```python
#importação das libs
import pymongo
import json

# Conectando ao banco de dados
client = pymongo.MongoClient("mongodb://localhost:27017/")
db = client["desafio4"]

# Importando dados para a coleção "people"
people = db["people"]
people.drop()  # apaga a coleção se já existir
people.insert_many(new_data)
print(f"{people.count_documents({})} documentos inseridos na coleção 'peoples'.")
```

    50474 documentos inseridos na coleção 'peoples'.
    


```python
# Importando dados para a coleção "restaurants"
restaurants = db["restaurants"]
with open('./Dataset1/restaurants.json', 'r', encoding="iso-8859-1") as f:
    # Tenta carregar o arquivo JSON
    try:
        restaurants_data = json.load(f)
    except json.JSONDecodeError:
        # Trata o erro de decodificação
        f.seek(0)  # Move o cursor para o início do arquivo
        content = f.read()
        content = "[" + content.replace("}\n{", "},\n{") + "]"
        restaurants_data = json.loads(content)
restaurants.drop()  # apaga a coleção se já existir
restaurants.insert_many(restaurants_data)
print(f"{restaurants.count_documents({})} documentos inseridos na coleção 'restaurants'.")
```

    1000000 documentos inseridos na coleção 'restaurants'.
    

**Foram carregados 1 milhão de registros na collection restaurants.**

**Conferindo os registros**


```python
# Define o banco de dados e as coleções
people = db['people']
restaurants = db['restaurants']

# Recupera os 5 primeiros documentos da coleção "people"
print('='*100)
print("Primeiros 5 registros da coleção 'people':")
for document in people.find().limit(5):
    print('='*100)
    print(document)    
    

# Recupera os 5 primeiros documentos da coleção "restaurants"
print('\n')
print('='*100)
print("Primeiros 5 registros da coleção 'restaurants':")
for doc in restaurants.find().limit(5):
    print('='*100)
    print(doc)
    
```

    ====================================================================================================
    Primeiros 5 registros da coleção 'people':
    ====================================================================================================
    {'_id': {'oid': '57d7a121fa937f710a7d486e'}, 'last_name': 'Pham', 'quote': 'Aliquam est reiciendis alias neque ad.', 'job': 'Counselling psychologist', 'ssn': '401-31-6615', 'address': {'city': 'Burgessborough', 'street': '83248 Woods Extension', 'zip': '47201'}, 'first_name': 'Yvonne', 'company_id': {'oid': '57d7a121fa937f710a7d486d'}, 'employer': 'Terry and Sons', 'birthday': {'date': '2011-03-17T11:21:36.000Z'}, 'email': 'murillobrian@cox.net'}
    ====================================================================================================
    {'_id': {'oid': '57d7a121fa937f710a7d486f'}, 'last_name': 'Nelson', 'quote': 'Quis sed tenetur eius illo.', 'job': 'Conservator, furniture', 'ssn': '671-16-1433', 'address': {'city': 'Nicholsbury', 'state': 'Indiana', 'street': '699 Ryan Branch Apt. 371', 'zip': '52277'}, 'first_name': 'Mary', 'company_id': {'oid': '57d7a121fa937f710a7d486d'}, 'employer': 'Terry and Sons', 'birthday': {'date': '2015-11-25T17:26:40.000Z'}, 'email': 'cindy93@gmail.com'}
    ====================================================================================================
    {'_id': {'oid': '57d7a121fa937f710a7d4870'}, 'last_name': 'Smith', 'quote': 'Recusandae rem minus dolorum corporis corrupti rem placeat.', 'job': 'Engineer, land', 'ssn': '574-10-8938', 'address': {'city': 'Crystalmouth', 'street': '3924 Mosley Burg Suite 602', 'zip': '14969'}, 'first_name': 'Jenna', 'company_id': {'oid': '57d7a121fa937f710a7d486d'}, 'employer': 'Terry and Sons', 'birthday': {'date': '2015-04-07T19:10:04.000Z'}, 'email': 'harrissummer@hotmail.com'}
    ====================================================================================================
    {'_id': {'oid': '57d7a121fa937f710a7d4871'}, 'last_name': 'Franklin', 'quote': 'Id provident eius natus quasi minima nobis.', 'job': 'Investment banker, corporate', 'ssn': '683-46-9400', 'address': {'city': 'Lake Meaganton', 'state': 'Idaho', 'street': '2831 Kevin Knolls', 'zip': '10914-3394'}, 'first_name': 'Christopher', 'company_id': {'oid': '57d7a121fa937f710a7d486d'}, 'employer': 'Terry and Sons', 'birthday': {'date': '2014-02-08T01:03:22.000Z'}, 'email': 'ythompson@hotmail.com'}
    ====================================================================================================
    {'_id': {'oid': '57d7a121fa937f710a7d4872'}, 'last_name': 'Herrera', 'quote': 'Sit perferendis nostrum suscipit cumque mollitia.', 'job': 'Theatre stage manager', 'ssn': '261-99-7098', 'address': {'city': 'Morganport', 'state': 'Vermont', 'street': '9069 Bailey Ferry Suite 423', 'zip': '99473'}, 'first_name': 'Elizabeth', 'company_id': {'oid': '57d7a121fa937f710a7d486d'}, 'employer': 'Terry and Sons', 'birthday': {'date': '2015-12-19T18:27:42.000Z'}, 'email': 'elizabeth35@mccarty.com'}
    
    
    ====================================================================================================
    Primeiros 5 registros da coleção 'restaurants':
    ====================================================================================================
    {'_id': ObjectId('641a424a5d1f329d45aa4db7'), 'name': 'Perry Street Brasserie', 'cuisine': 'French', 'stars': 0.3, 'address': {'street': '959 Iveno Square', 'city': 'Fokemlid', 'state': 'AL', 'zipcode': '18882'}}
    ====================================================================================================
    {'_id': ObjectId('641a424a5d1f329d45aa4db8'), 'name': 'Red Hill Station', 'cuisine': 'Mediterranean', 'stars': 3.4, 'address': {'street': '1156 Fawu Terrace', 'city': 'Nanveszi', 'state': 'NC', 'zipcode': '24406'}}
    ====================================================================================================
    {'_id': ObjectId('641a424a5d1f329d45aa4db9'), 'name': 'Altius', 'cuisine': 'Japanese', 'stars': 3.1, 'address': {'street': '1178 Ocoge Glen', 'city': 'Ratizbu', 'state': 'SD', 'zipcode': '14557'}}
    ====================================================================================================
    {'_id': ObjectId('641a424a5d1f329d45aa4dba'), 'name': 'Chefs Table at the Edgewater', 'cuisine': 'Italian', 'stars': 1.6, 'address': {'street': '371 Gule Loop', 'city': 'Ujukamew', 'state': 'ME', 'zipcode': '62421'}}
    ====================================================================================================
    {'_id': ObjectId('641a424a5d1f329d45aa4dbb'), 'name': 'Laurel', 'cuisine': 'Sushi', 'stars': 1.3, 'address': {'street': '1746 Nake Circle', 'city': 'Eticafu', 'state': 'HI', 'zipcode': '73060'}}
    

## 9. Com os dados carregados, você deve ajudar a melhorar a performance das seguintes queries:
<a id="ancora12"></a>
[voltar](#ancora).
a. db.people.find( { last_name : "Acevedo" } )
b. db.people.find({"address.zip" : "10914-3394"})
c. db.people.find({"address.zip" : { $in: ["10914-3394", "53666"]}})
d. db.people.find({}, { _id : 0, first_name: 1, job: 1 }).sort({ first_name: 1 })
e. db.restaurants.find({'cuisine': 'Sichuan'})
f. db.restaurants.find ({ cuisine: 'Sushi' }).sort({ stars: -1 })
g. db.restaurants.find({ "stars": { $gte: 4 }, cuisine: 'Italian' }).sort({ name: 1 })
**A. Para esse caso acredito que criar índices nas chaves utilizadas na busca pode melhorar a performance**
**Vamos realizar um teste e comparar o antes e o depois**

*a.db.people.find( { last_name : "Acevedo" } )*


```python
# como remover um indice caso necessário
# people.drop_index("last_name_1")
```


```python
#lib para comparar o tempo
import time
# Selecionando a coleção "people"
people = db["people"]

# Realizando a consulta sem índice
start_time = time.perf_counter()
results1 = people.find({"last_name": "Acevedo"})
end_time = time.perf_counter()
print('='*100)
print(f"Tempo de execução da consulta sem índice: {(end_time - start_time)*1000} Milésimos de segundos")
#print(f"Resultados sem índice: {list(results1)}")
print('='*100)
```

    ====================================================================================================
    Tempo de execução da consulta sem índice: 0.16360000881832093 Milésimos de segundos
    ====================================================================================================
    


```python
# Criando índice para demonstração
people.create_index("last_name")
```




    'last_name_1'




```python
# Realizando a consulta com índice
start_time = time.perf_counter()
results2 = people.find({"last_name": "Acevedo"}).hint("last_name_1")
end_time = time.perf_counter()
print('='*100)
print(f"Tempo de execução da consulta com índice: {(end_time - start_time)*1000} milissegundos")
#print(f"Resultados com índice: {list(results2)}")
```

    ====================================================================================================
    Tempo de execução da consulta com índice: 0.16260000120382756 milissegundos
    

**Como são poucos dados os resultados são próximos, mas imagine em um cenário de bigdata**

**B. Para todos os casos vamos seguir acrescentando um index**

*b. db.people.find({"address.zip" : "10914-3394"})*


```python
# Realizando a consulta sem índice
start_time = time.perf_counter()
results1 = people.find({"address.zip" : "10914-3394"})
end_time = time.perf_counter()
print('='*100)
print(f"Tempo de execução da consulta sem índice: {(end_time - start_time)*1000} Milésimos de segundos")
#print(f"Resultados sem índice: {list(results1)}")
print('='*100)
```

    ====================================================================================================
    Tempo de execução da consulta sem índice: 0.1703999878372997 Milésimos de segundos
    ====================================================================================================
    


```python
# Criando índice para demonstração
people.create_index("address.zip")
```




    'address.zip_1'




```python
# Selecionando a coleção "people"
# Realizando a consulta Com índice
start_time = time.perf_counter()
results1 = people.find({"address.zip" : "10914-3394"}).hint("address.zip_1")
end_time = time.perf_counter()
print('='*100)
print(f"Tempo de execução da consulta com índice: {(end_time - start_time)*1000} Milésimos de segundos")
#print(f"Resultados com índice: {list(results1)}")
print('='*100)
```

    ====================================================================================================
    Tempo de execução da consulta com índice: 0.16250000044237822 Milésimos de segundos
    ====================================================================================================
    

**Para melhorar o desempenho das consultas especificadas, podemos criar índices no MongoDB para as chaves usadas nas consultas.**

**O índice ajuda o banco de dados a localizar os documentos relevantes de forma mais eficiente, reduzindo o tempo necessário para executar a consulta.**


```python
from pymongo import MongoClient

# Conecte-se ao banco de dados
client = MongoClient()
db = client.desafio4

# Crie índices para as chaves usadas nas consultas
db.people.create_index([("address.zip", 1)])
db.people.create_index([("first_name", 1)])
db.people.create_index([("job", 1)])
db.restaurants.create_index([("cuisine", 1)])

```




    'cuisine_1'



**Este código cria índices para as chaves address.zip, first_name, job em people, e cuisine em restaurants. O valor 1 indica que o índice deve ser criado em ordem crescente.**

**Após criar os índices, podemos comparar o tempo de execução das consultas antes e depois da criação dos índices.**


```python
# Comparando a performance antes e depois da otimização

import time

# query original
start_time = time.time()
result = people.find({"address.zip" : { "$in": ["10914-3394", "53666"]}})
for r in result:
    pass
print(f"Tempo de execução da query original: {time.time() - start_time:.6f}")

# query otimizada
start_time = time.time()
result = people.find({"address.zip": {"$in": ["10914-3394", "53666"]}}).hint('address.zip_1')
for r in result:
    pass
print(f"Tempo de execução da query otimizada: {time.time() - start_time:.6f}")

# query original
start_time = time.time()
result = people.find({}, {"_id": 0, "first_name": 1, "job": 1}).sort("first_name", 1)
for r in result:
    pass
print(f"Tempo de execução da query original: {time.time() - start_time:.6f}")

# query otimizada
start_time = time.time()
result = people.find({}, {"_id": 0, "first_name": 1, "job": 1}).sort("first_name").hint('first_name_1')
for r in result:
    pass
print(f"Tempo de execução da query otimizada: {time.time() - start_time:.6f}")

# query original
start_time = time.time()
result = restaurants.find({"cuisine": "Sichuan"})
for r in result:
    pass
print(f"Tempo de execução da query original: {time.time() - start_time:.6f}")

# query otimizada
start_time = time.time()
result = restaurants.find({"cuisine": "Sichuan"}).hint("cuisine_1")
for r in result:
    pass
print(f"Tempo de execução da query otimizada: {time.time() - start_time:.6f}")


```

    Tempo de execução da query original: 0.034723
    Tempo de execução da query otimizada: 0.004557
    Tempo de execução da query original: 0.974567
    Tempo de execução da query otimizada: 0.357146
    Tempo de execução da query original: 2.520031
    Tempo de execução da query otimizada: 0.292359
    

### F. Como otimizar a consulta abaixo**

*db.restaurants.find ({ cuisine: 'Sushi' }).sort({ stars: -1 })*

<a id="ancora5.3"></a>
[voltar](#ancora).

**Bom primeiro vamos entender o que esse query está realizando:**
* Esse código faz uma consulta na collection restaurants em busca de documentos que possuem 
  o campo _cuisine_ com o valor igual a 'Sushi', além disso a cláusula 'sort' com o argumento
  -1 é usada para classificar os resultados em ordem decrescente com base no campo 'stars'.

**Para um melhor entendimento vamos realizar a mesma consulta,
porém utilizando a lib pymongo já que esse notebook é para fins didático.
Vamos também medir o tempo para comparação após a otimização.**


```python
#1.importa o pymongo, asc para ascendente o mesmo que 1 e descentende o mesmo que -1 no mongodb
from pymongo import MongoClient, ASCENDING, DESCENDING
#2.conexão com o banco de dados
client = pymongo.MongoClient("mongodb://localhost:27017/")
db = client["desafio4"]
collection_restaurants = db["restaurants"]
#3.executa a consulta padrão e calcula a média do tempo após um ciclo de 100 repetições
import time
start_time = time.perf_counter()
for i in range(100):
    result_without_index = collection_restaurants.find({"cuisine": "Sushi"}).sort([("stars", DESCENDING)])
    result = list(result_without_index)
end_time = time.perf_counter()
time_without_index = (end_time - start_time) / 100
print(f"Tempo médio de execução sem índice: {time_without_index:.2f} segundos")
```

    Tempo médio de execução sem índice: 1.17 segundos
    

* **Para essa consulta após 100 repetições, tivemos uma média de 1.17 segundos**.
* **Observe que o tempo de execução pode variar dependendo do ambiente em que o código é executado e do desempenho do banco de dados, mas a média deve fornecer uma estimativa mais estável do tempo de execução da consulta.**

**Vamos conferir se o resultado corresponde a nossa query MongoDB em um dataframe pandas**:


```python
import pandas as pd 
pd.DataFrame(result)
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
      <th>_id</th>
      <th>name</th>
      <th>cuisine</th>
      <th>stars</th>
      <th>address</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>641a424a5d1f329d45aa5b35</td>
      <td>The Chop House - Grand Rapids</td>
      <td>Sushi</td>
      <td>5.0</td>
      <td>{'street': '1003 Wuwir Circle', 'city': 'Ruwir...</td>
    </tr>
    <tr>
      <th>1</th>
      <td>641a424a5d1f329d45aa5c4c</td>
      <td>Natural Selection</td>
      <td>Sushi</td>
      <td>5.0</td>
      <td>{'street': '1785 Jajdif Circle', 'city': 'Kome...</td>
    </tr>
    <tr>
      <th>2</th>
      <td>641a424a5d1f329d45aa68d9</td>
      <td>The Copper Door</td>
      <td>Sushi</td>
      <td>5.0</td>
      <td>{'street': '70 Pandi Lane', 'city': 'Natsanrer...</td>
    </tr>
    <tr>
      <th>3</th>
      <td>641a424a5d1f329d45aa6c21</td>
      <td>Red Hill Station</td>
      <td>Sushi</td>
      <td>5.0</td>
      <td>{'street': '840 Jehi Road', 'city': 'Hivhowwe'...</td>
    </tr>
    <tr>
      <th>4</th>
      <td>641a424a5d1f329d45aa7e56</td>
      <td>Roe</td>
      <td>Sushi</td>
      <td>5.0</td>
      <td>{'street': '803 Acaza Road', 'city': 'Demdehic...</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>23298</th>
      <td>641a42535d1f329d45b96868</td>
      <td>Rudy &amp; Paco Restaurant &amp; Bar</td>
      <td>Sushi</td>
      <td>0.0</td>
      <td>{'street': '1081 Suzik Glen', 'city': 'Saavpap...</td>
    </tr>
    <tr>
      <th>23299</th>
      <td>641a42535d1f329d45b968b4</td>
      <td>The Mulefoot Gastropub</td>
      <td>Sushi</td>
      <td>0.0</td>
      <td>{'street': '1603 Ofeto Boulevard', 'city': 'Ul...</td>
    </tr>
    <tr>
      <th>23300</th>
      <td>641a42535d1f329d45b96ab3</td>
      <td>Daniel - Lounge Seating</td>
      <td>Sushi</td>
      <td>0.0</td>
      <td>{'street': '1414 Kijog Ridge', 'city': 'Ehulel...</td>
    </tr>
    <tr>
      <th>23301</th>
      <td>641a42535d1f329d45b96ebf</td>
      <td>The Copper Door</td>
      <td>Sushi</td>
      <td>0.0</td>
      <td>{'street': '661 Suoke Point', 'city': 'Kohitec...</td>
    </tr>
    <tr>
      <th>23302</th>
      <td>641a42535d1f329d45b98b9b</td>
      <td>Ocean</td>
      <td>Sushi</td>
      <td>0.0</td>
      <td>{'street': '788 Watso Heights', 'city': 'Arane...</td>
    </tr>
  </tbody>
</table>
<p>23303 rows × 5 columns</p>
</div>



* **Obtivemos o resultado correspondente, observe que tempos 23.303 documentos em nosso resultado**

**Agora como podemos melhorar e otimizar essa query?**
* **Adicionar um índice para o campo 'cuisine' e 'stars' pode melhorar o desempenho da consulta.**
    * *Quando um índice é criado em um campo específico, o bd armazena as informações de índice em uma estrutura separada e usa essas informações para localizar os documentos que correspondem a uma consulta, éssa técnica é usada para otimizar o desempenho, porém é importante frizar que a criação de índices poder afetar o desempenho na inserão e atualização, pois o bd precisa atualizar o índice nesses casos, por isso é importante criar índices de acordo com a relevância para equilibrar o impacto.*
* **Podemos ainda limitar os campos retornados, isso pode reduzir a quantidade de dados transferidos.**
* **Podemos usar o método 'aggregate' em operações mais complexas, como agrupar ou combinar documentos ao invés do método 'find'.**

**Nesse exemplo iremos realizar uma consulta atimizada, adicionando índices para 'cuisine' e 'stars',
vamos também limitar os campos para 'name' e 'star'.**


```python
#1.criar os índices para 'cuisine como ascendente' e 'stars como descendente'
collection_restaurants.create_index([("cuisine", ASCENDING), ("stars", DESCENDING)])

#3.executa a consulta otimizada e calcula a média do tempo após um ciclo de 100 repetições
import time
start_time = time.perf_counter()
for i in range(100):
    result_with_index = collection_restaurants.find({"cuisine": "Sushi"}, {'cuisine':1, 'name': 1, 'stars': 1, '_id': 0 }).hint([("cuisine", ASCENDING), ("stars", DESCENDING)])
    result = list(result_with_index)
end_time = time.perf_counter()
time_with_index = (end_time - start_time) / 100
print(f"Tempo médio de execução otimizada com índice: {time_with_index:.2f} segundos")
```

    Tempo médio de execução sem índice: 0.22 segundos
    

* **Parece muito pouca diferença, mas se tratando de um conjunto grande de dados,
temos um ganho de 81.2%.**


```python
100 -((0.22 * 100) / 1.17)
```




    81.19658119658119



**Vamos conferir se o resultado corresponde a nossa query MongoDB em um dataframe pandas:**


```python
import pandas as pd 
pd.DataFrame(result)
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
      <th>name</th>
      <th>cuisine</th>
      <th>stars</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>The Chop House - Grand Rapids</td>
      <td>Sushi</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Natural Selection</td>
      <td>Sushi</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>2</th>
      <td>The Copper Door</td>
      <td>Sushi</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Red Hill Station</td>
      <td>Sushi</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Roe</td>
      <td>Sushi</td>
      <td>5.0</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>23298</th>
      <td>Rudy &amp; Paco Restaurant &amp; Bar</td>
      <td>Sushi</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>23299</th>
      <td>The Mulefoot Gastropub</td>
      <td>Sushi</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>23300</th>
      <td>Daniel - Lounge Seating</td>
      <td>Sushi</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>23301</th>
      <td>The Copper Door</td>
      <td>Sushi</td>
      <td>0.0</td>
    </tr>
    <tr>
      <th>23302</th>
      <td>Ocean</td>
      <td>Sushi</td>
      <td>0.0</td>
    </tr>
  </tbody>
</table>
<p>23303 rows × 3 columns</p>
</div>



* **Observem que agora só exibimos os dados necessários para a consulta e isso foi importante para otimização**.
* **Removemos também a cláusula 'sort', pois o índice 'stars' já estava no formato decrescente.**
* **Usamos ainda a clausula 'hint' que é usado para indicar ao MongoDB o índice que deve ser utilizado para consulta.**

### G. Como otimizar a consulta abaixo**

*db.restaurants.find({ "stars": { $gte: 4 }, cuisine: 'Italian' }).sort({ name: 1 })*
<a id="ancora5.4"></a>

[voltar](#ancora).

**Explicação da query:**
* **Em resumo, essa consulta retornará todos os restaurantes italianos com uma classificação de estrelas igual ou superior a 4, ordenados alfabeticamente pelo nome.**


**Para um melhor entendimento vamos realizar a mesma consulta,
porém utilizando a lib pymongo já que esse notebook é para fins didático.
Vamos também medir o tempo para comparação após a otimização.**

**Antes, precisamos remover os index criados para que eles não influenciem no resultado, pois mesmo não informando os index de forma explicita, o MongoDB utiliza os index mesmo de forma implicita.**



```python
#people.drop_index("last_name_1")
#Listando os index da collection
list(collection_restaurants.list_indexes())
```




    [SON([('v', 2), ('key', SON([('_id', 1)])), ('name', '_id_')]),
     SON([('v', 2), ('key', SON([('cuisine', 1), ('stars', -1)])), ('name', 'cuisine_1_stars_-1')])]




```python
#Removendo o index name: 'cuisine_1_stars_-1'
collection_restaurants.drop_index('cuisine_1_stars_-1')
#Conferindo se o index foi removido
list(collection_restaurants.list_indexes())
```




    [SON([('v', 2), ('key', SON([('_id', 1)])), ('name', '_id_')])]



* **Pronto agora sim podemos realizar a query sem nenhuma otimização.**


```python
#1.importa o pymongo, asc para ascendente o mesmo que 1 e descentende o mesmo que -1 no mongodb
from pymongo import MongoClient, ASCENDING, DESCENDING
#2.conexão com o banco de dados
client = pymongo.MongoClient("mongodb://localhost:27017/")
db = client["desafio4"]
collection_restaurants = db["restaurants"]
#3.executa a consulta padrão e calcula a média do tempo após um ciclo de 100 repetições
import time
start_time = time.perf_counter()
for i in range(100):
    result_without_index = collection_restaurants.find({"stars":{"$gte":4},"cuisine":"Italian"}).sort([("name", ASCENDING)])
    result = list(result_without_index)
end_time = time.perf_counter()
time_without_index = (end_time - start_time) / 100
print(f"Tempo médio de execução sem índice: {time_without_index:.2f} segundos")
```

    Tempo médio de execução sem índice: 0.92 segundos
    

**Vamos conferir se o resultado corresponde a nossa query MongoDB em um dataframe pandas**:


```python
df_default = pd.DataFrame(result)
df_default

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
      <th>_id</th>
      <th>name</th>
      <th>cuisine</th>
      <th>stars</th>
      <th>address</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>641a424a5d1f329d45aa9604</td>
      <td>Abe Fisher</td>
      <td>Italian</td>
      <td>4.4</td>
      <td>{'street': '1797 Bujod Circle', 'city': 'Hupno...</td>
    </tr>
    <tr>
      <th>1</th>
      <td>641a424a5d1f329d45ab2689</td>
      <td>Abe Fisher</td>
      <td>Italian</td>
      <td>4.9</td>
      <td>{'street': '238 Diter Way', 'city': 'Hesewuz',...</td>
    </tr>
    <tr>
      <th>2</th>
      <td>641a424a5d1f329d45ab4882</td>
      <td>Abe Fisher</td>
      <td>Italian</td>
      <td>4.2</td>
      <td>{'street': '892 Zonma Manor', 'city': 'Rerewce...</td>
    </tr>
    <tr>
      <th>3</th>
      <td>641a424a5d1f329d45ab9f99</td>
      <td>Abe Fisher</td>
      <td>Italian</td>
      <td>4.2</td>
      <td>{'street': '659 Paro Path', 'city': 'Hovkulu',...</td>
    </tr>
    <tr>
      <th>4</th>
      <td>641a424a5d1f329d45abe718</td>
      <td>Abe Fisher</td>
      <td>Italian</td>
      <td>4.0</td>
      <td>{'street': '1640 Wiiw Lane', 'city': 'Vajozwe'...</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>4927</th>
      <td>641a42525d1f329d45b86f07</td>
      <td>o ya</td>
      <td>Italian</td>
      <td>4.5</td>
      <td>{'street': '1885 Awelaj Key', 'city': 'Isumevs...</td>
    </tr>
    <tr>
      <th>4928</th>
      <td>641a42535d1f329d45b8ce16</td>
      <td>o ya</td>
      <td>Italian</td>
      <td>5.0</td>
      <td>{'street': '40 Tiopa Circle', 'city': 'Cedtian...</td>
    </tr>
    <tr>
      <th>4929</th>
      <td>641a42535d1f329d45b8d123</td>
      <td>o ya</td>
      <td>Italian</td>
      <td>4.7</td>
      <td>{'street': '1195 Daaw Ridge', 'city': 'Hamaglu...</td>
    </tr>
    <tr>
      <th>4930</th>
      <td>641a42535d1f329d45b94f7a</td>
      <td>o ya</td>
      <td>Italian</td>
      <td>4.5</td>
      <td>{'street': '1537 Lemob Circle', 'city': 'Guelb...</td>
    </tr>
    <tr>
      <th>4931</th>
      <td>641a42535d1f329d45b98f45</td>
      <td>o ya</td>
      <td>Italian</td>
      <td>4.3</td>
      <td>{'street': '1683 Egotes River', 'city': 'Zaile...</td>
    </tr>
  </tbody>
</table>
<p>4932 rows × 5 columns</p>
</div>



* **Confirmado: todos os restaurantes italianos com uma classificação de estrelas igual ou superior a 4, ordenados alfabeticamente pelo nome.**

* **Otimização da query**:


```python
collection_restaurants.find({"stars":{"$gte":4},"cuisine":"Italian"},{'_id': 0 }).hint()
```


```python
#Criando índice
collection_restaurants.create_index([("cuisine", ASCENDING),("name", ASCENDING)])

#executa a consulta otimizada e calcula a média do tempo após um ciclo de 100 repetições
import time
start_time = time.perf_counter()
for i in range(100):
    result_with_index = collection_restaurants.find({"stars":{"$gte":4},"cuisine":"Italian"},{'_id': 0 }).hint('cuisine_1_name_1')
    result = list(result_with_index)
end_time = time.perf_counter()
time_with_index = (end_time - start_time) / 100
print(f"Tempo médio de execução otimizada com índices: {time_with_index:.2f} segundos")
```

    Tempo médio de execução otimizada com índices: 0.16 segundos
    


```python
df_optmized = pd.DataFrame(result)
df_optmized
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
      <th>name</th>
      <th>cuisine</th>
      <th>stars</th>
      <th>address</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Abe Fisher</td>
      <td>Italian</td>
      <td>4.4</td>
      <td>{'street': '1797 Bujod Circle', 'city': 'Hupno...</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Abe Fisher</td>
      <td>Italian</td>
      <td>4.9</td>
      <td>{'street': '238 Diter Way', 'city': 'Hesewuz',...</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Abe Fisher</td>
      <td>Italian</td>
      <td>4.2</td>
      <td>{'street': '892 Zonma Manor', 'city': 'Rerewce...</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Abe Fisher</td>
      <td>Italian</td>
      <td>4.2</td>
      <td>{'street': '659 Paro Path', 'city': 'Hovkulu',...</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Abe Fisher</td>
      <td>Italian</td>
      <td>4.0</td>
      <td>{'street': '1640 Wiiw Lane', 'city': 'Vajozwe'...</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>4927</th>
      <td>o ya</td>
      <td>Italian</td>
      <td>4.5</td>
      <td>{'street': '1885 Awelaj Key', 'city': 'Isumevs...</td>
    </tr>
    <tr>
      <th>4928</th>
      <td>o ya</td>
      <td>Italian</td>
      <td>5.0</td>
      <td>{'street': '40 Tiopa Circle', 'city': 'Cedtian...</td>
    </tr>
    <tr>
      <th>4929</th>
      <td>o ya</td>
      <td>Italian</td>
      <td>4.7</td>
      <td>{'street': '1195 Daaw Ridge', 'city': 'Hamaglu...</td>
    </tr>
    <tr>
      <th>4930</th>
      <td>o ya</td>
      <td>Italian</td>
      <td>4.5</td>
      <td>{'street': '1537 Lemob Circle', 'city': 'Guelb...</td>
    </tr>
    <tr>
      <th>4931</th>
      <td>o ya</td>
      <td>Italian</td>
      <td>4.3</td>
      <td>{'street': '1683 Egotes River', 'city': 'Zaile...</td>
    </tr>
  </tbody>
</table>
<p>4932 rows × 4 columns</p>
</div>



* **A utilização de index pode otimizar muito as consultas, porém devemos nos atentar a necessidade, pois acaba impactando ao realizar inserções e atualizações no bd.**


## 10. Conclusão:
<a id="ancora13"></a>
[voltar](#ancora).

Durante nosso diálogo, discutimos diversos tópicos relacionados ao MongoDB, incluindo sua arquitetura, suas características, e como trabalhar com ele usando a biblioteca PyMongo. Além disso, exploramos como otimizar as consultas no MongoDB usando índices, cache e outras técnicas.

O MongoDB é um banco de dados não relacional orientado a documentos que oferece muitas vantagens em relação aos bancos de dados relacionais tradicionais, como flexibilidade de esquema e escalabilidade horizontal. Ele é amplamente utilizado em aplicativos da web e móveis que precisam armazenar e recuperar grandes quantidades de dados em tempo real.

Ao trabalhar com o MongoDB, é importante ter um bom entendimento de sua arquitetura e recursos, bem como da sintaxe e estrutura de consulta. É fundamental saber como criar índices para acelerar as consultas e como otimizar a eficiência do sistema em geral.

Em resumo, o MongoDB é uma excelente opção para aplicativos que precisam de flexibilidade e escalabilidade no armazenamento de dados. Com um pouco de conhecimento e esforço, é possível obter um desempenho excepcionalmente rápido e eficiente ao trabalhar com ele.


```python

```
