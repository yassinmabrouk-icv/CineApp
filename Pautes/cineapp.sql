CREATE DATABASE IF NOT EXISTS tema1_cineapp
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE tema1_cineapp;

DROP TABLE IF EXISTS pelicula;
DROP TABLE IF EXISTS genere;

CREATE TABLE genere (
    id INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uq_genere_nom (nom)
) ENGINE=InnoDB;

CREATE TABLE pelicula (
    id INT NOT NULL AUTO_INCREMENT,
    titol VARCHAR(100) NOT NULL,
    data_estrena DATE NOT NULL,
    durada INT NOT NULL,
    sinopsi TEXT NOT NULL,
    genere_id INT NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uq_pelicula_titol (titol),
    CONSTRAINT fk_pelicula_genere
        FOREIGN KEY (genere_id) REFERENCES genere(id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
) ENGINE=InnoDB;

INSERT INTO genere (nom) VALUES
('Acció'),
('Comèdia'),
('Drama'),
('Ciència-ficció'),
('Terror'),
('Animació');

INSERT INTO pelicula (titol, data_estrena, durada, sinopsi, genere_id) VALUES
('Interstellar', '2014-11-07', 169, 'Un grup d astronautes viatja a través d un forat de cuc per buscar un nou planeta habitable.', 4),
('The Truman Show', '1998-06-05', 103, 'Un home descobreix progressivament que tota la seva vida forma part d un programa de televisió.', 3),
('Back to the Future', '1985-07-03', 116, 'Un adolescent viatja accidentalment al passat amb una màquina del temps.', 2),
('Alien', '1979-05-25', 117, 'La tripulació d una nau espacial es troba amb una criatura extraterrestre.', 5),
('Toy Story', '1995-11-22', 81, 'Les joguines d un nen cobren vida quan els humans no les observen.', 6),
('Gladiator', '2000-05-05', 155, 'Un general romà busca venjança després de perdre la seva família i la seva posició.', 1),
('The Matrix', '1999-03-31', 136, 'Un programador descobreix que la realitat que coneix és una simulació.', 4),
('La vida es bella', '1997-12-20', 116, 'Un pare intenta protegir el seu fill de la realitat d un camp de concentració mitjançant la imaginació.', 3);
