CREATE TABLE Track(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    duration_ms INT,
    isrc char(12) UNIQUE,
    spotify_url varchar(150) UNIQUE,
    spotify_id char(22) UNIQUE,
    explicit TINYINT,
    preview_url varchar(150) UNIQUE,
    album_id INT NOT NULL
);

CREATE TABLE Album(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    release_date DATE,
    -- note to self
    picture LONGBLOB,
    spotify_url varchar(150) UNIQUE,
    spotify_id char(22) UNIQUE,
    label_record_id INT NOT NULL
);

CREATE TABLE Artist(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    name varchar(50),
    picture LONGBLOB, 
    spotify_url varchar(150) UNIQUE, 
    spotify_id char(22) UNIQUE
);


CREATE TABLE Genre(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    name varchar(50)
);

CREATE TABLE label_record(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    name varchar(50)
);

CREATE TABLE Markets(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    code_name char(3) UNIQUE
);



-- --------------------------------------------

ALTER TABLE Track ADD FOREIGN KEY (album_id) REFERENCES Album(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Album ADD FOREIGN KEY (label_record_id) REFERENCES label_record(id) ON DELETE CASCADE ON UPDATE CASCADE;

-- --------------------------------------------
CREATE TABLE genre_track(
    genre_id INT NOT NULL,
    track_id INT NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES Genre(id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (track_id) REFERENCES Track(id)
    ON DELETE CASCADE ON UPDATE CASCADE 
);
CREATE TABLE markets_tracks(
    markets_id INT NOT NULL,
    track_id INT NOT NULL,
    FOREIGN KEY (markets_id) REFERENCES Markets(id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (track_id) REFERENCES Track(id)
    ON DELETE CASCADE ON UPDATE CASCADE     
);
CREATE TABLE markets_album(
    markets_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (markets_id) REFERENCES Markets(id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (album_id) REFERENCES Album(id)
    ON DELETE CASCADE ON UPDATE CASCADE      
);
CREATE TABLE artist_album(
    atrist_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (atrist_id) REFERENCES Artist(id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (album_id) REFERENCES Album(id)
    ON DELETE CASCADE ON UPDATE CASCADE  
);


CREATE TABLE artist_tracks(
    track_id INT NOT NULL,
    atrist_id INT NOT NULL,
    FOREIGN KEY (atrist_id) REFERENCES Artist(id) 
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (track_id) REFERENCES Track(id) 
    ON DELETE CASCADE ON UPDATE CASCADE  
);


CREATE TABLE Musical_group(
    id INT NOT NULL PRIMARY KEY, FOREIGN KEY (id) REFERENCES Artist(id) ON DELETE CASCADE ON UPDATE CASCADE,
    formation_date date
);

CREATE TABLE Group_member(
    artist_id INT NOT NULL,
    group_id INT NOT NULL,
    joined_date date,
    PRIMARY KEY (artist_id, group_id),
    FOREIGN KEY (group_id) REFERENCES Musical_group(id)
    ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (artist_id) REFERENCES Artist(id)
    ON DELETE CASCADE ON UPDATE CASCADE

);

CREATE TABLE Solo_perform(
    atrist_id INT NOT NULL PRIMARY KEY, 
    FOREIGN KEY (atrist_id) REFERENCES 
    Artist(id) ON DELETE CASCADE ON UPDATE CASCADE,
    birthdate date
);

CREATE TABLE Instruments(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE Performing(
    atrist_id INT NOT NULL PRIMARY KEY, FOREIGN KEY (atrist_id) REFERENCES Artist(id) ON DELETE CASCADE ON UPDATE CASCADE,
    instruments_id INT NOT NULL, FOREIGN KEY (instruments_id) REFERENCES Instruments(id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE logins(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(24) UNIQUE NOT NULL,
password VARCHAR(24) NOT NULL,
dateofbirth DATE NULL
);
CREATE INDEX trtitle ON TRACK(title);
CREATE INDEX atname ON ARTIST(name);
CREATE INDEX altitle ON ALBUM(title);
CREATE INDEX grname ON GENRE(name);
CREATE INDEX lrname ON LABEL_RECORD(name);



