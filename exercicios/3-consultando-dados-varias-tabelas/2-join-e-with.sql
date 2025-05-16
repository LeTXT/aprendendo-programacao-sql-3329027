-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
select 
tra.TrackId as id, 
tra.Name as musica, 
alb.title as album, 
art.name as artista
FROM
tracks as tra 
inner join albums as alb on tra.AlbumId = alb.AlbumId
inner join artists as art on art.ArtistId = alb.ArtistId

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
with musica as (
select 
tra.TrackId as id, 
tra.Name as musica, 
alb.title as album, 
art.name as artista
FROM
tracks as tra 
inner join albums as alb on tra.AlbumId = alb.AlbumId
inner join artists as art on art.ArtistId = alb.ArtistId)

select 
artista, 
count(musica) as qnt_total_musicas
from 
musica 
where 
artista like 'Caetano%';