-- Track:
-- Get all tracks
SELECT * FROM Track;

-- Get all the tracks of an artist (has error)
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


-- Get all the tracks of a market
SELECT 
    *
FROM
    Track JOIN markets_tracks ON Track.id = markets_tracks.track_id
          JOIN Markets        ON Markets.id = markets_tracks.markets_id
WHERE
    Markets.code_name = "";



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

-- Get all the albums of a genre (has error)
SELECT 
    *
FROM
    Album JOIN genre_track ON Album.id = genre_track.album_id
          JOIN genre       ON genre.id = genre_track.genre_id
WHERE
    genre.name = "";

-- Get all the albums of a market (has error)
SELECT 
    *
FROM
    Album JOIN markets_album ON Album.id = markets_album.album_id
          JOIN Markets       ON Markets.id = markets_album.markets_id
WHERE
    Markets.code_name = "";









-- Artist
-- Get all the artists
SELECT * FROM Artist;

-- Get all the artist of an album
SELECT
    Artist.name 
FROM
    Album JOIN artist_album ON Album.id = artist_album.album_id
          Join Artist       ON Artist.id = artist_album.atrist_id;


-- Get all the artist of a genre (has error)
SELECT
    Artist.name
FROM
    Track JOIN genre_track ON Track.id = genre_track.track_id
          JOIN genre       ON genre.id = genre_track.genre_id
          JOIN artist_tracks ON artist_tracks.tracks_id = Track.id
          JOIN Artist       ON Artist.id = artist_tracks.atrist_id;

-- Get artist by name 
SELECT * FROM Artist WHERE name = "";

-- Get artist by id
SELECT * FROM Artist WHERE id = "";

-- Get artist of a song (has error)
SELECT
    Artist.name
FROM
    Track JOIN artist_tracks ON Track.id = artist_tracks.tracks_id
          JOIN Artist        ON Artist.id = artist_tracks.atrist_id
WHERE
    Track.title = "";

-- Get artist of an album
SELECT
    Artist.name
FROM
    Album JOIN artist_album ON Album.id = artist_album.album_id
          JOIN Artist        ON Artist.id = artist_album.atrist_id
WHERE
    Album.title = "";


-- Get all the artist of a label record (has error)
SELECT
    Artist.name
FROM
    Track JOIN Album ON Track.album_id = Album.id
          JOIN label_record ON label_record.id = Album.label_record_id  
          JOIN artist_tracks ON artist_tracks.tracks_id = Track.id
          JOIN Artist       ON Artist.id = artist_tracks.atrist_id;


-- Get all the artist of a markets (has error)
SELECT
    Artist.name
FROM
    Track JOIN markets_tracks ON Track.id = markets_tracks.track_id
          JOIN Markets       ON Markets.id = markets_tracks.markets_id
          JOIN artist_tracks ON artist_tracks.tracks_id = Track.id
          JOIN Artist       ON Artist.id = artist_tracks.atrist_id;

        --   Get all the markets of an artist (has error)
SELECT
    Markets.code_name
FROM
    Track JOIN artist_tracks ON Track.id = artist_tracks.tracks_id
          JOIN Artist        ON Artist.id = artist_tracks.atrist_id
          JOIN markets_tracks ON markets_tracks.track_id = Track.id
          JOIN Markets       ON Markets.id = markets_tracks.markets_id;



        


-- Genre
-- Get all genres
SELECT * FROM Genre;

-- Get all the genres of an album (has error)
SELECT
    Genre.name
FROM
    Album JOIN genre_track ON Album.id = genre_track.album_id
          JOIN genre       ON genre.id = genre_track.genre_id;


-- Get all the genres of a track
SELECT
    Genre.name
FROM
    Track JOIN genre_track ON Track.id = genre_track.track_id
          JOIN genre       ON genre.id = genre_track.genre_id;

        
-- Get all the genres of an artist (has error)
SELECT
    Genre.name
FROM
    Track JOIN artist_tracks ON Track.id = artist_tracks.tracks_id
          JOIN Artist        ON Artist.id = artist_tracks.atrist_id
          JOIN genre_track   ON genre_track.track_id = Track.id
          JOIN genre        ON genre.id = genre_track.genre_id;



-- Musical groups
-- Get all musical groups
SELECT * FROM Musical_group;
-- Select the members of a specfic group (has error)
SELECT 
    * 
FROM
    Artist as A JOIN Musical_group as MG ON A.id = MG.G_id
                JOIN Group_member as GM  ON MG.G_id = GM.G_id
WHERE
    A.name = "";


-- Get all the musical groups of an artist (has error)
SELECT
    *
FROM
    Artist as A JOIN Musical_group as MG ON A.id = MG.G_id
                JOIN Group_member as GM  ON MG.G_id = GM.G_id
WHERE
    A.name = "";


-- Get all the musical groups of a label record (has error)
SELECT
    *
FROM
    Artist as A JOIN Musical_group as MG ON A.id = MG.G_id
                JOIN Group_member as GM  ON MG.G_id = GM.G_id
WHERE
    A.name = "";



-- Solo-performer (has error)
SELECT 
    *
FROM
    Artist as A JOIN Solo_perform as SP ON A.id = SP.A_id
WHERE  A.name = "";

-- Instruments
    SELECT * FROM Instruments;

-- Instruments performed by an artist (has error)
SELECT
    *
FROM
    Artist as A JOIN Solo_perform as SP ON A.id = SP.A_id
                JOIN Instruments_performed as IP ON IP.S_id = SP.S_id
                JOIN Instruments as I ON I.id = IP.I_id
WHERE
    A.name = "";


-- Instruments performed by a musical group (has error)
SELECT
    *
FROM
    Artist as A JOIN Musical_group as MG ON A.id = MG.G_id
                JOIN Group_member as GM  ON MG.G_id = GM.G_id
                JOIN Solo_perform as SP ON SP.A_id = A.id
                JOIN Performing as IP ON IP.S_id = SP.S_id
                JOIN Instruments as I ON I.id = IP.I_id
WHERE
    A.name = "";


-- Instruments performed by a label record (has error)
SELECT
    *
FROM
    Artist as A JOIN Album as A ON A.id = A.id
                JOIN label_record as LR ON LR.id = A.label_record_id
                JOIN Solo_perform as SP ON SP.A_id = A.id
                JOIN Performing as IP ON IP.S_id = SP.S_id
                JOIN Instruments as I ON I.id = IP.I_id
WHERE
    A.name = "";


-- Market


-- Get all the markets
SELECT * FROM Markets;

-- Get all all artist of a market (has error)
SELECT
    Artist.name
FROM
    Track JOIN markets_tracks ON Track.id = markets_tracks.track_id
          JOIN Markets       ON Markets.id = markets_tracks.markets_id
          JOIN artist_tracks ON artist_tracks.tracks_id = Track.id
          JOIN Artist       ON Artist.id = artist_tracks.atrist_id;





 

--  UPDATE

-- Update the name of an artist
UPDATE Artist SET name = "" WHERE id = "";

-- Set picture of an artist
UPDATE Artist SET picture = "" WHERE id = "";

-- Set the spotify url of an artist
UPDATE Artist SET spotify_url = "" WHERE id = "";

-- update birthday of an artist
UPDATE Artist SET birthday = "" WHERE id = "";

-- Set the spotify url of an album
UPDATE Album SET spotify_url = "" WHERE id = "";

-- Update the name of an album
UPDATE Album SET title = "" WHERE id = "";

-- Update the name of a track
UPDATE Track SET title = "" WHERE id = "";

-- Update the name of a label record
UPDATE label_record SET name = "" WHERE id = "";


-- Update instruments performed by an artist
UPDATE Solo_performer SET instruments = "" WHERE id = "";

-- Update instruments performed by a musical group
UPDATE Group_member SET instruments = "" WHERE id = "";

-- Update market name of a market
UPDATE Markets SET code_name = "" WHERE id = "";


-- Update Spotify url of a track
UPDATE Track SET spotify_url = "" WHERE id = "";

-- Update the name of a genre
UPDATE Genre SET name = "" WHERE id = "";

-- Update track title
UPDATE Track SET title = "" WHERE id = "";

-- update track duration
UPDATE Track SET duration = "" WHERE id = "";

-- update spotify url of a track
UPDATE Track SET spotify_url = "" WHERE id = "";

-- update spoitfy ID of a track
UPDATE Track SET spotify_id = "" WHERE id = "";









