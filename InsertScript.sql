INSERT INTO Artists (nickname)
VALUES 
('Fall Out Boy'),
('Nickelback'),
('BoneyM'),
('Bad Boys Blue'),
('Modern Talking'),
('David Bowie'),
('KISS'),
('Deep Purple'),
('AC/DC'),
('The Beatles'),
('The Rolling Stones'),
('Michael Jackson');

INSERT INTO Genre (title)
VALUES 
('alternative rock'),
('disco'),
('glam rock'),
('hard rock'),
('rock'),
('pop music');

INSERT INTO Album (title, year)
values
('M A N I A', '2018'),
('Get Rollin', '2020'),
('Sunny', '1976'),
('House of Silence', '1991'),
('Ready for Romance', '1986'),
('Space Oddity','1969'),
('Dynasty','1979'),
('Whoosh!','2020'),
('Ballbreaker','1995'),
('Let It Be','1969'),
('Let It Bleed','1969'),
('Dangerous','1991');

INSERT INTO tracks (album_id, track_name, duration)
VALUES
('1', 'Champion', '00:03:12'),
('2', 'Does Heaven Even Know Youre Missing', '00:03:43'),
('3', 'Bahama mama', '00:03:18'),
('4', 'Dancing With The Bad Boys', '00:04:17'),
('4', 'Train At Midnight', '00:03:29'),
('4', 'Deep In My Emotion', '00:03:43'),
('5', 'Brother Louie', '00:03:41'),
('6', 'Space Oddity','00:05:15'),
('7', 'I Was Made for Lovin You', '00:04:30'),
('8', 'Throw My Bones', '00:04:23'),
('9', 'Hard as a Rock', '00:04:31'),
('9', 'Boogie Man', '00:04:07'),
('10', 'Let It Be', '00:04:03'),
('11', 'Gimme Shelter', '00:04:37'),
('12', 'Remember the Time', '00:04:00'),
('12', 'Who Is It', '00:04:15'),
('9', 'Ballbreaker', '00:04:31');

INSERT INTO collection (title, release_year)
VALUES
('The best of modern music', '2020'),
('Legends of Disco', '2018'),
('Old School', '2019'),
('King of POP', '2015'),
('Energy','2021'),
('90th', '2014'),
('Hard Rock Col', '2010'),
('Greatest Hits', '1999')
;

INSERT INTO GenreArtists (genre_id, artists_id)
VALUES
('1', '1'),
('1', '2'),
('1', '6'),
('1', '11'),
('2', '3'),
('2', '4'),
('2', '5'),
('3', '6'),
('3', '7'),
('3', '11'),
('4', '2'),
('4', '7'),
('4', '8'),
('4', '9'),
('5', '1'),
('5', '2'),
('5', '6'),
('5', '7'),
('5', '8'),
('5', '9'),
('5', '10'),
('5', '11'),
('6', '1'),
('6', '4'),
('6', '10'),
('6', '12');

INSERT INTO albumartists (album_id, artists_id)
VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('6', '6'),
('7', '7'),
('8', '8');

INSERT INTO TrackCollection (track_id, collection_id)
VALUES 
('1', '1'),
('2', '1'),
('3', '2'),
('4', '2'),
('5', '2'),
('6', '2'),
('7', '2'),
('8', '3'),
('9', '3'),
('10', '3'),
('11', '3'),
('12', '3'),
('13', '3'),
('14', '3'),
('15', '4'),
('16', '4'),
('1', '5'),
('2', '5'),
('8', '5'),
('9', '5'),
('4', '6'),
('5', '6'),
('6', '6'),
('9', '7'),
('10', '7'),
('11', '7'),
('12', '7'),
('14', '8');

