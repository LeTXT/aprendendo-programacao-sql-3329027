-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
select 
tra.TrackId as id,
tra.Name as musica,
alb.Title as titulo_album,
art.name as artista
from
tracks as tra
inner join albums as alb on tra.AlbumId = alb.AlbumId
inner join artists as art on art.ArtistId = alb.ArtistId
where 
artista like '%Nação%'
and titulo_album not like 'Da Lama Ao Caos';