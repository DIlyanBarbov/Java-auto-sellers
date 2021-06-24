CREATE TABLE IF NOT EXISTS auto_seller
(
    id       SERIAL,
    name     varchar(100)  NOT NULL,
    password varchar(100)  NOT NULL,
    email    varchar(100)  NOT NULL,
    address  varchar(200)  NOT NULL,
    city     varchar(100)  NOT NULL,
    contact  varchar(20)   NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO auto_seller (name, password, email, address, city, contact)
VALUES ('dilyan', 'dilyanpass', 'dilyan@gmail.com', 'plovdiv', 'plovdiv', '0895123456'),
       ('admin', 'admin', 'admin@gmail.com', 'sofia', 'sofia', '0895345123'),
       ('petar', 'petarpass', 'petar@gmail.com', 'sofia', 'sofia', '0899987654');
