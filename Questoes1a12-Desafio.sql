-- questão 1 --
select 
Nome,
Ano 
from Filmes
-------------------------------

-- questão 2 --
select
Nome,
Ano
from Filmes
order by(Ano)

-------------------------------

-- questão 3 --
select 
*
from Filmes
where Nome = 'De Volta para o Futuro'
-------------------------------

-- questão 4 --

select 
*
from Filmes
where Ano = '1997'

------------------------------- 06:23

--questão 5 --

select
*
from Filmes
where Ano > 2000

---------------------------------

--questão 6 --

select 
*
from Filmes 
where Duracao > 100 and Duracao < 150
order by(Duracao)

---------------------------------

--questão 7--
select Ano, Count(Ano) Quantidade
from Filmes
group by(Ano)
order by(Quantidade) desc

------------------------------------

--questão 8--

select ID,PrimeiroNome,UltimoNome, Genero
from Atores
where Genero = 'M'

-------------------------------------

--questão 9 --

select Id,PrimeiroNome, UltimoNome, Genero
from Atores
where Genero = 'F'
order by(PrimeiroNome)

---------------------------------------

--questão 10 --
select Nome,Genero
from Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id;

------------------------------------------

--questão 11 --

select Nome,Genero
from Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
Where Genero = 'Mistério'

------------------------------------------

-- questão 12 --

select Nome,PrimeiroNome,UltimoNome,Papel
from ElencoFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdFilme
INNER JOIN Filmes ON Atores.Id = Filmes.Id

