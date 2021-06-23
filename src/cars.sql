CREATE TABLE IF NOT EXISTS cars (
  id SERIAL,
  model varchar(100) NOT NULL,
  brand_id int NOT NULL,
  year int NOT NULL,
  price varchar(100) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (brand_id) REFERENCES brands(id)
);

INSERT INTO cars (model, brand_id, year, price) VALUES
('C200', 1, 2008, '15000'),
('320i', 2, 2009, '16000'),
('A4', 3, 2010, '16500');
