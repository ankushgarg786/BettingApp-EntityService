CREATE TABLE odds
(
    id          BIGINT AUTO_INCREMENT NOT NULL,
    created_at  datetime NULL,
    updated_at  datetime NULL,
    match_id    BIGINT NULL,
    market_type VARCHAR(255) NULL,
    selection   VARCHAR(255) NULL,
    odds_value DOUBLE NULL,
    is_active   BIT(1) NULL,
    CONSTRAINT pk_odds PRIMARY KEY (id)
);

ALTER TABLE odds
    ADD CONSTRAINT FK_ODDS_ON_MATCH FOREIGN KEY (match_id) REFERENCES `match` (id);