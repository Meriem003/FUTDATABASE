-- Créer la base de données

CREATE DATABASE futData;
USE futData;

-- Créer la table des flag

CREATE TABLE flag (
    id_flag INT PRIMARY KEY AUTO_INCREMENT,
    flag_name VARCHAR(50) NOT NULL,
    url_flag VARCHAR(255) NOT NULL
);

-- Créer la table des clubs

CREATE TABLE club (
    id_club INT PRIMARY KEY AUTO_INCREMENT,
    club_name VARCHAR(50) NOT NULL,
    url_club VARCHAR(255) NOT NULL
);

-- Créer la table des joueurs avec les clés étrangères correctement définies

CREATE TABLE players (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(30) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    position VARCHAR(20) NOT NULL,
    id_flag INT,
    id_club INT,
    rating INT NOT NULL,
    pace INT,
    shooting INT,
    passing INT,
    dribbling INT,
    defending INT,
    physical INT,
    diving INT,
    handling INT,
    kicking INT,
    reflexes INT,
    speed INT,
    positioning INT,

    FOREIGN KEY (id_flag) REFERENCES flag(id_flag),
    FOREIGN KEY (id_club) REFERENCES club(id_club)
);

INSERT INTO flag (flag_name, url_flag) 
VALUES
('Argentine', 'https://upload.wikimedia.org/wikipedia/commons/1/1a/Flag_of_Argentina.svg'),
('Portugal', 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Portugal.svg'),
('France', 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Flag_of_France.svg'),
('Brésil', 'https://upload.wikimedia.org/wikipedia/commons/0/05/Flag_of_Brazil.svg'),
('Norvège', 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Flag_of_Norway.svg'),
('Maroc', 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Flag_of_Morocco.svg'),
('Belgique', 'https://upload.wikimedia.org/wikipedia/commons/6/65/Flag_of_Belgium.svg'),
('Pologne', 'https://upload.wikimedia.org/wikipedia/commons/1/12/Flag_of_Poland.svg'),
('Égypte', 'https://upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_Egypt.svg'),
('Croatie', 'https://upload.wikimedia.org/wikipedia/commons/1/1b/Flag_of_Croatia.svg');

INSERT INTO club (club_name, url_club) 
VALUES
('Paris Saint-Germain', 'https://upload.wikimedia.org/wikipedia/en/a/a7/Paris_Saint-Germain_F.C..svg'),
('Real Madrid', 'https://upload.wikimedia.org/wikipedia/en/5/56/Real_Madrid_CF.svg'),
('FC Barcelona', 'https://upload.wikimedia.org/wikipedia/en/4/47/FC_Barcelona_%28crest%29.svg'),
('Manchester City', 'https://upload.wikimedia.org/wikipedia/en/e/e0/Manchester_City_FC_badge.svg'),
('Bayern Munich', 'https://upload.wikimedia.org/wikipedia/en/1/1f/FC_Bayern_München_logo_%282017%29.svg'),
('Juventus', 'https://upload.wikimedia.org/wikipedia/en/d/d2/Juventus_FC_2017_logo.svg'),
('Chelsea', 'https://upload.wikimedia.org/wikipedia/en/c/cc/Chelsea_FC.svg'),
('AC Milan', 'https://upload.wikimedia.org/wikipedia/commons/d/d0/Logo_of_AC_Milan.svg'),
('Liverpool', 'https://upload.wikimedia.org/wikipedia/en/0/0c/Liverpool_FC.svg'),
('Arsenal', 'https://upload.wikimedia.org/wikipedia/en/5/53/Arsenal_FC.svg');