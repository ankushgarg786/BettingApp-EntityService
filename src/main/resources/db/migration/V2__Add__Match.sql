CREATE TABLE `match`
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    created_at    datetime NULL,
    updated_at    datetime NULL,
    home_team     VARCHAR(255) NULL,
    away_team     VARCHAR(255) NULL,
    start_time    datetime NULL,
    score_summary VARCHAR(255) NULL,
    status        VARCHAR(255) NULL,
    CONSTRAINT pk_match PRIMARY KEY (id)
);