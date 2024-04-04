-- 1
SELECT 
Nome, 
Ano 
FROM Filmes


-- 2
SELECT 
Nome, 
Ano 
FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT * 
FROM Filmes
WHERE Nome = 'DE VOLTA PARA O FUTURO'

-- 4
SELECT * 
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * 
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * 
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7
SELECT 
Ano, 
COUNT(*) QUANTIDADE 
FROM Filmes
GROUP BY Ano
ORDER BY QUANTIDADE DESC

-- 8 
SELECT * 
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT * 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10
SELECT 
F.Nome,
G.Genero
FROM 
FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G  ON FG.IdGenero = G.Id

--11
SELECT 
F.Nome,
G.Genero
FROM 
FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme = F.Id
INNER JOIN Generos G  ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

--12
SELECT 
F.Nome,
A.PrimeiroNome,
A.UltimoNome,
E.Papel

FROM ElencoFilme E

INNER JOIN Filmes F ON E.IdFilme = F.Id
INNER JOIN Atores A ON E.IdAtor = A.Id

