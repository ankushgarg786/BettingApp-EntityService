ALTER TABLE odds
DROP
FOREIGN KEY FKii9s1cemay7tygltdu3kpsao9;

CREATE TABLE `match`
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    created_at    datetime NULL,
    updated_at    datetime NULL,
    home_team     VARCHAR(255) NOT NULL,
    away_team     VARCHAR(255) NOT NULL,
    start_time    datetime     NOT NULL,
    score_summary VARCHAR(255) NULL,
    status        VARCHAR(255) NULL,
    CONSTRAINT pk_match PRIMARY KEY (id)
);

ALTER TABLE odds
    ADD CONSTRAINT FK_ODDS_ON_MATCH FOREIGN KEY (match_id) REFERENCES `match` (id);

DROP TABLE matches;

ALTER TABLE odds
DROP
COLUMN market_type;

ALTER TABLE odds
    ADD market_type VARCHAR(255) NULL;