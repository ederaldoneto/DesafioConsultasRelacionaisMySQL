-- 1
SELECT nome, ano FROM filmes;
-- 2
SELECT nome, ano FROM filmes ORDER BY ano ASC;
-- 3
SELECT nome, ano, duracao 
FROM filmes 
WHERE nome = 'de volta para o futuro';
-- 4
SELECT nome, ano, duracao 
FROM filmes 
WHERE ano = 1997;
-- 5
SELECT nome, ano, duracao 
FROM filmes 
WHERE ano > 2000;
-- 6
SELECT f.nome, f.ano, f.duracao 
FROM filmes f
JOIN atores a ON f.ator_id = a.id
WHERE f.duracao > 100 AND f.duracao < 150 
ORDER BY f.duracao ASC;
-- 7
SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC;
-- 8
SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'Masculino';
-- 9
SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'Feminino'
ORDER BY PrimeiroNome ASC;
-- 10
SELECT nome, genero 
FROM filmes;
-- 11
SELECT nome, genero 
FROM filmes 
WHERE genero = 'Mistério';
-- 12
SELECT 
    f.NomeFilme,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM 
    Filmes f
JOIN 
    ElencoFilme ef ON f.IDFilme = ef.IDFilme
JOIN 
    Atores a ON ef.IDAtor = a.IDAtor
JOIN 
    FilmesGenero fg ON f.IDFilme = fg.IDFilme
JOIN 
    Generos g ON fg.IDGenero = g.IDGenero;