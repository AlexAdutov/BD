SELECT g.title, count(*) FROM genre g 
JOIN genreartists ga ON g.id = ga.genre_id
JOIN artists a ON ga.artists_id = a.id
GROUP BY g.title;

SELECT count(*) AS count_tracks FROM tracks t
JOIN album a ON t.album_id = a.id
WHERE a.year BETWEEN 2019 AND 2020; 

SELECT a.title AS album_title, avg(t.duration) AS average_duration FROM tracks t
JOIN album a ON t.album_id = a.id
GROUP BY a.title;

SELECT ar.nickname AS singer_name, al.YEAR AS album_year FROM artists ar 
JOIN albumartists aa ON ar.id = aa.artists_id  
JOIN album al ON aa.album_id = al.id 
WHERE NOT (al.year = 2020); 

SELECT c.title FROM collection c 
JOIN trackcollection tc ON c.id = tc.collection_id
JOIN tracks t ON tc.collection_id = t.id
JOIN album a ON t.album_id = a.id
JOIN albumartists aa ON a.id = aa.album_id
JOIN artists ar ON aa.artists_id = ar.id
where ar.nickname  = 'Bad Boys Blue';

SELECT a.title FROM album a 
JOIN albumartists aa ON a.id = aa.album_id 
JOIN artists ar ON aa.artists_id = ar.id
JOIN genreartists ga ON ar.id = ga.artists_id 
--JOIN genre g ON ga.genre_id = g.id 
GROUP BY a.title 
HAVING count(ga.genre_id)>1;

SELECT * FROM tracks t 
LEFT JOIN trackcollection tc ON t.id = tc.track_id  
WHERE tc.collection_id IS NULL;

SELECT DISTINCT a.nickname  FROM artists a 
JOIN albumartists aa ON a.id = aa.artists_id 
JOIN album al ON aa.album_id = al.id  
JOIN tracks t ON al.id  = t.album_id  
WHERE t.duration = (SELECT MIN(duration) FROM tracks);

SELECT a.title, count(a.title) AS count FROM album a 
JOIN tracks t ON a.id = t.album_id 
GROUP BY a.title
ORDER BY count
LIMIT 1;

