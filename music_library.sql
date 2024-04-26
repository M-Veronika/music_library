CREATE TABLE IF NOT EXISTS Genres (
      id_genre SERIAL PRIMARY KEY, 
      name_genre VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS Artistes (
      id_artist SERIAL PRIMARY KEY,
      name_artist VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS ArtistGenres (
      id_genr INT NOT NULL REFERENCES Genres(id_genre),
      id_artis INT NOT NULL REFERENCES Artistes(id_artist),
      CONSTRAINT rr PRIMARY KEY(id_genr, id_artis)
);	
CREATE TABLE IF NOT EXISTS Albums (
      id_album SERIAL PRIMARY KEY, 
      name_album VARCHAR(60) NOT NULL,
      year_of_releas SMALLINT
);
CREATE TABLE IF NOT EXISTS Treks (
      id_trek SERIAL PRIMARY KEY,
      id_alb INTEGER NOT NULL REFERENCES Albums(id_album),
      name_trek VARCHAR(60) NOT NULL, 
      duration TIME
);
CREATE TABLE IF NOT EXISTS Collection (
      id_coll SERIAL PRIMARY KEY, 
      name_coll VARCHAR(60) NOT NULL,
      year_of_releas SMALLINT
);
CREATE TABLE IF NOT EXISTS ArtistAlbum (
      id_art INT NOT NULL REFERENCES Artistes(id_artist),
      id_a INT NOT NULL REFERENCES Albums(id_album),
      CONSTRAINT kr PRIMARY KEY(id_art, id_a)
);	
CREATE TABLE IF NOT EXISTS TrekСoll (
      id_tr INT NOT NULL REFERENCES Treks(id_trek),
      id_c INT NOT NULL REFERENCES Collection(id_coll),
      CONSTRAINT rk PRIMARY KEY(id_tr, id_c)
);	


     
      