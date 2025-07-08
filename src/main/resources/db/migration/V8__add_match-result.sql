
CREATE TABLE match_result
(
    id                 BIGINT AUTO_INCREMENT NOT NULL,
    created_at         datetime NULL,
    updated_at         datetime NULL,
    winning_team       VARCHAR(255) NULL,
    home_score         INT NULL,
    away_score         INT NULL,
    result_declared_at datetime NULL,
    CONSTRAINT pk_matchresult PRIMARY KEY (id)
);
