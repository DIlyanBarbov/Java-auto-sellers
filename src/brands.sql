CREATE TABLE IF NOT EXISTS brands (
  id SERIAL,
  name varchar(100) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO brands (name) VALUES
('Mercedes'),
('BMW'),
('Audi'),
('VW'),
('Ford'),
('Peugeot'),
('Citroen'),
('Renault');