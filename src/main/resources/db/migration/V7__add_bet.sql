CREATE TABLE bet
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    created_at    datetime NULL,
    updated_at    datetime NULL,
    user_id       BIGINT NULL,
    match_id      BIGINT NULL,
    selected_team VARCHAR(255) NULL,
    amount DOUBLE NULL,
    odds_at_bet_time DOUBLE NULL,
    status        VARCHAR(255) NULL,
    potential_winning DOUBLE NULL,
    CONSTRAINT pk_bet PRIMARY KEY (id)
);

ALTER TABLE bet
    ADD CONSTRAINT FK_BET_ON_USER FOREIGN KEY (user_id) REFERENCES user (id);