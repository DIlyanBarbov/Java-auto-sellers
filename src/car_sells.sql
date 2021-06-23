CREATE TABLE IF NOT EXISTS car_sells
(
    id            SERIAL,
    car_id        int NOT NULL,
    buyer_name    varchar(50)     NOT NULL,
    buyer_contact varchar(20) NOT NULL,
    date_sold     timestamp   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (car_id) references cars(id)
);

INSERT INTO car_sells (car_id, buyer_name, buyer_contact, date_sold)
VALUES (1, 'Ivaylo', '0899687934', '2021-06-19 11:43:16'),
       (2, 'Simeon', '0899234678', '2021-06-19 14:44:34'),
       (3, 'Kiril', '0899678321', '2021-06-19 16:46:12');

