
CREATE TABLE transaction
(
    id            BIGINT AUTO_INCREMENT NOT NULL,
    created_at    datetime NULL,
    updated_at    datetime NULL,
    user_id       BIGINT NULL,
    type          SMALLINT NULL,
    amount DOUBLE NULL,
    `reference`   VARCHAR(255) NULL,
    `description` VARCHAR(255) NULL,
    CONSTRAINT pk_transaction PRIMARY KEY (id)
);

ALTER TABLE transaction
    ADD CONSTRAINT FK_TRANSACTION_ON_USER FOREIGN KEY (user_id) REFERENCES user (id);

