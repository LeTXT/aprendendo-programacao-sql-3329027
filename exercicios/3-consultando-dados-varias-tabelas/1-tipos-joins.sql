-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"
select * from albums left join artists on albums.ArtistId = artists.ArtistId;