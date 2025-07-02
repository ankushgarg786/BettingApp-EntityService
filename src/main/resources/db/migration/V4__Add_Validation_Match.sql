ALTER TABLE `match`
    MODIFY away_team VARCHAR (255) NOT NULL;

ALTER TABLE `match`
    MODIFY home_team VARCHAR (255) NOT NULL;

ALTER TABLE `match`
    MODIFY start_time datetime NOT NULL;