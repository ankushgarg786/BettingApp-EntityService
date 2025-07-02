CREATE TABLE user
(
    id         BIGINT AUTO_INCREMENT NOT NULL,
    created_at datetime NULL,
    updated_at datetime NULL,
    name       VARCHAR(255) NULL,
    user_name  VARCHAR(255) NOT NULL,
    email      VARCHAR(255) NOT NULL,
    password   VARCHAR(255) NOT NULL,
    phone      VARCHAR(255) NULL,
    country    VARCHAR(255) NULL,
    CONSTRAINT pk_user PRIMARY KEY (id)
);

CREATE TABLE wallet
(
    id         BIGINT AUTO_INCREMENT NOT NULL,
    created_at datetime NULL,
    updated_at datetime NULL,
    balance DOUBLE NULL,
    `locked`   BIT(1) NULL,
    user_id    BIGINT NULL,
    CONSTRAINT pk_wallet PRIMARY KEY (id)
);

ALTER TABLE user
    ADD CONSTRAINT uc_user_email UNIQUE (email);

ALTER TABLE user
    ADD CONSTRAINT uc_user_username UNIQUE (user_name);

ALTER TABLE wallet
    ADD CONSTRAINT uc_wallet_userid UNIQUE (user_id);

ALTER TABLE wallet
    ADD CONSTRAINT FK_WALLET_ON_USERID FOREIGN KEY (user_id) REFERENCES user (id);