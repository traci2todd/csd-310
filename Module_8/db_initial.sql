use pysports;
DROP USER IF EXISTS 'pysports_user'@'localhost';
CREATE USER 'pysports_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MySQL8IsGreat!';
GRANT ALL PRIVILEGES ON pysports.* TO'pysports_user'@'localhost';
DROP TABLE IF EXISTS player;
DROP TABLE If EXISTS team;
CREATE TABLE team (
	team_id		INT			NOT NULL	AUTO_INCREMENT,
    team_name	VARCHAR(75)	NOT NULL,
    mascot		VARCHAR(75)	NOT NULL,
    PRIMARY KEY(team_id)
);
CREATE TABLE player (
	player_id	INT			NOT NULL	AUTO_INCREMENT,
    first_name	VARCHAR(75)	NOT NULL,
    last_name	VARCHAR(75)	NOT NULL,
    team_id		INT			NOT NULL,
    PRIMARY KEY(player_id),
    CONSTRAINT fk_team
    FOREIGN KEY(team_id)
		REFERENCES team(team_id)
);
INSERT INTO team(team_name, mascot)
	VALUES('Oklahoma State', 'Cowboys');
INSERT INTO team(team_name, mascot)
	VALUES('LSU', 'Tigers');
INSERT INTO player(player_id, first_name, last_name, team_id)
	VALUES('Tyson', 'Todd', (SELECT team_id FROM team WHERE team_name = 'Oklahoma State'));
INSERT INTO player(player_id, first_name, last_name, team_id)
	VALUES('Brayson', 'Todd', (SELECT team_id FROM team WHERE team_name = 'Oklahoma State'));
INSERT INTO player(player_id, first_name, last_name, team_id)
	VALUES('Jayden', 'Mhire', (SELECT team_id FROM team WHERE team_name = 'Oklahoma State'));
INSERT INTO player(player_id, first_name, last_name, team_id)
	VALUES('Xavier', 'Todd', (SELECT team_id FROM team WHERE team_name = 'LSU'));
INSERT INTO player(player_id, first_name, last_name, team_id)
	VALUES('Casey', 'Todd', (SELECT team_id FROM team WHERE team_name = 'LSU'));
INSERT INTO player(player_id, first_name, last_name, team_id)
	VALUES('Nathan', 'Romero', (SELECT team_id FROM team WHERE team_name = 'LSU'));

