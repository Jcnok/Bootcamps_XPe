-- a. Total de títulos ativos.--
select * from titulo limit 10;
select count(*) from titulo;
SELECT 
    COUNT(*)
FROM
    titulo
WHERE
    ind_status = 'A';
    
-- b. Relação dos títulos em ordem alfabética e seus detalhes --
select * from titulo_detalhe limit 10;

SELECT 
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

-- c. Relação dos títulos em ordem alfabética, seus autores e diretores(quando existirem essas duas últimas informações).--
SELECT 
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
ORDER BY T.nom_titulo ASC;

-- d. Relação dos 100 títulos mais bem avaliados, suas avaliações e total de votos.--
SELECT 
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

-- 8.A empresa solicitou que você faça uma espécie de “auditoria da qualidade dos dados”. Para isso, você precisa criar uma query para cada uma das situações abaixo: --

-- a ‒ Títulos sem avaliação --
SELECT 
    nom_titulo as "Titulos sem votação"
FROM
    Titulo
        LEFT JOIN
    avaliacao ON titulo.cod_titulo = avaliacao.cod_titulo
WHERE
    avaliacao.qtd_votos < 1;

-- b ‒ Títulos sem o detalhe da duração (qtd_minutos) ou informação do gênero (dsc_genero) --
SELECT 
    nom_titulo AS 'Titulos sem duração ou sem informação do genero'
FROM
    titulo
        LEFT JOIN
    titulo_detalhe ON titulo.cod_titulo = titulo_detalhe.cod_titulo
WHERE
    titulo_detalhe.qtd_minutos < 1
        OR dsc_genero IS NULL;

-- c ‒ Títulos sem autor--
SELECT 
    t.nom_titulo as "titulos sem nome de autor"
FROM
    titulo t
        LEFT JOIN
    autoria aut ON t.cod_titulo = aut.cod_titulo
        LEFT JOIN
    pessoa pes ON aut.cod_pessoa = pes.cod_pessoa
WHERE
    pes.nom_pessoa IS NULL;

select count(*) from autoria left join pessoa on autoria.cod_pessoa = pessoa.cod_pessoa where pessoa.nom_pessoa is not null;


-- d ‒ Títulos sem diretor --
SELECT 
    t.nom_titulo as "titulos sem Diretor"
FROM
    titulo t
        LEFT JOIN
    direcao dir ON t.cod_titulo = dir.cod_titulo
        LEFT JOIN
    pessoa pes ON dir.cod_pessoa = pes.cod_pessoa
WHERE
    pes.nom_pessoa IS NULL;

-- e ‒ Títulos sem elenco --
SELECT 
    t.nom_titulo as "titulos sem Elenco"
FROM
    titulo t
        LEFT JOIN
    elenco ON t.cod_titulo = elenco.cod_titulo
        LEFT JOIN
    pessoa pes ON elenco.cod_pessoa = pes.cod_pessoa
WHERE
    pes.nom_pessoa IS NULL;
    
-- 9. Por fim, a empresa solicitou que você desenvolva uma query que retorne as seguintes colunas acerca dos títulos ativos, ordenados alfabeticamente pelo nome do título. --

-- a. Nome do Título: coluna nom_titulo da tabela Titulo;
-- b. Tipo do Título: coluna tip_titulo da tabela Titulo_Detalhe (em maiúsculo);
-- c. Ano de Lançamento: coluna ano_lancamento da tabela Titulo_Detalhe;
-- d. Duração: coluna qtd_minutos da tabela Titulo_Detalhe (se existir ou não);
-- e. Gênero(s): coluna dsc_genero da tabela Titulo_Detalhe (se existir ou não);
-- f. Nota: coluna classificacao_media da tabela Avaliacao (se existir ou não);
-- g. Autor: nom_pessoa da tabela Pessoa (se existir ou não);
-- h. Diretor: nom_pessoa da tabela Pessoa (se existir ou não).

SELECT 
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

