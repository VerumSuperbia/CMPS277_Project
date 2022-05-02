-- Track:
-- Get all tracks
SELECT * FROM Track;

-- Get all the tracks of an artist
SELECT 
    * 
FROM 
    Track JOIN artist_tracks ON Track.id = artist_tracks.tracks_id
          JOIN Artist        ON Artist.id = artist_tracks.atrist_id
WHERE 
    Artist.id = "" OR Artist.name = "" ;
     

-- Get all the tracks of an album
SELECT * FROM Track WHERE album_id = "";
-- or
SELECT 
    * 
FROM 
    Track JOIN Album ON Track.album_id = Album.id
WHERE
    Album.title = "";



-- Get all the tracks of a genre
SELECT 
    * 
FROM 
    Track JOIN genre_track ON Track.id = genre_track.track_id
          JOIN genre       ON genre.id = genre_track.genre_id
WHERE
    Genre.name = "";

       
-- Get all the tracks of a label record
SELECT 
    *
FROM 
    Track JOIN Album ON Track.album_id = Album.id
WHERE 
    label_record_id = "";

-- or

SELECT 
    *
FROM 
    Track JOIN Album ON Track.album_id = Album.id
          JOIN label_record ON label_record.id = Album.label_record_id  
WHERE 
    label_record.name = "";



-- Album:
-- Get all albums
SELECT * FROM Album;
    
-- Get all the albums of an artist
SELECT 
    *
FROM 
    Album JOIN artist_album ON Album.id = artist_album.album_id
          Join Artist       ON Artist.id = artist_album.atrist_id;

-- Get all the albums of a label record
SELECT 
    *
FROM 
    Album JOIN label_record ON label_record.id = Album.label_record_id  
WHERE 
    label_record.name = "";

-- Artist
-- Get all the artists
SELECT * FROM Artist;

-- Get all the artist of an album
SELECT
    Artist.name 
FROM
    Album JOIN artist_album ON Album.id = artist_album.album_id
          Join Artist       ON Artist.id = artist_album.atrist_id;


-- Genre
-- Get all genres
SELECT * FROM Genre;

-- Musical groups
-- Get all musical groups
SELECT * FROM Musical_group;
-- Select the members of a specfic group
SELECT 
    * 
FROM
    Artist as A JOIN Musical_group as MG ON A.id = MG.G_id
                JOIN Group_member as GM  ON MG.G_id = GM.G_id
WHERE
    A.name = "";


-- Solo-performer
SELECT 
    *
FROM
    Artist as A JOIN Solo_performer as SP ON A.id = SP.A_id
WHERE ;

-- Instruments
    SELECT * FROM Instruments;

-- Instruments performed by an artist



-- The group memeber must be a Solo_perform give the RM we have because 
-- a group memebr has no relation with the "Perfroming" entitiy