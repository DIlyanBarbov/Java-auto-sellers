CREATE TABLE IF NOT EXISTS cars (
  id SERIAL,
  model varchar(100) NOT NULL,
  brand varchar(20) NOT NULL,
  year int NOT NULL,
  price varchar(100) NOT NULL,
  sold boolean DEFAULT false,
  PRIMARY KEY (id)
);

INSERT INTO cars (model, brand, year, price, sold) VALUES
('C200', 'Mercedes', 2008, '15000', false),
('320i', 'BMW', 2009, '16000', false),
('A4', 'Audi', 2010, '16500', false);
