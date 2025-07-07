ALTER TABLE odds
DROP
FOREIGN KEY FK_ODDS_ON_MATCH;

CREATE TABLE matches
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    created_at    datetime NULL,
    updated_at    datetime NULL,
    home_team     VARCHAR(255) NOT NULL,
    away_team     VARCHAR(255) NOT NULL,
    start_time    datetime     NOT NULL,
    score_summary VARCHAR(255) NULL,
    status        VARCHAR(255) NULL,
    CONSTRAINT pk_matches PRIMARY KEY (id)
);

ALTER TABLE odds
    ADD CONSTRAINT FK_ODDS_ON_MATCH FOREIGN KEY (match_id) REFERENCES matches (id);

DROP TABLE `match`;