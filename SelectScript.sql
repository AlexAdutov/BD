select title, year from album
where year=2018;

select track_name, duration from tracks
order by duration DESC
limit 1;

select track_name, duration from tracks
where duration > '00:03:30';

select title from collection
where release_year between 2018 and 2020;

select nickname from artists
where nickname not like '% %'; 

select track_name from tracks
where track_name like '%My%' or track_name like '%my%'; 


