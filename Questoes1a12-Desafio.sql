-- quest�o 1 --
select 
Nome,
Ano 
from Filmes
-------------------------------

-- quest�o 2 --
select
Nome,
Ano
from Filmes
order by(Ano)

-------------------------------

-- quest�o 3 --
select 
*
from Filmes
where Nome = 'De Volta para o Futuro'
-------------------------------

-- quest�o 4 --

select 
*
from Filmes
where Ano = '1997'

------------------------------- 06:23

--quest�o 5 --

select
*
from Filmes
where Ano > 2000

---------------------------------

--quest�o 6 --

select 
*
from Filmes 
where Duracao > 100 and Duracao < 150
order by(Duracao)

---------------------------------

--quest�o 7--
select Ano, Count(Ano) Quantidade
from Filmes
group by(Ano)
order by(Quantidade) desc

------------------------------------

--quest�o 8--

select ID,PrimeiroNome,UltimoNome, Genero
from Atores
where Genero = 'M'

-------------------------------------

--quest�o 9 --

select Id,PrimeiroNome, UltimoNome, Genero
from Atores
where Genero = 'F'
order by(PrimeiroNome)

---------------------------------------

--quest�o 10 --
select Nome,Genero
from Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id;

------------------------------------------

--quest�o 11 --

select Nome,Genero
from Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
Where Genero = 'Mist�rio'

------------------------------------------

-- quest�o 12 --

select Nome,PrimeiroNome,UltimoNome,Papel
from ElencoFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdFilme
INNER JOIN Filmes ON Atores.Id = Filmes.Id

