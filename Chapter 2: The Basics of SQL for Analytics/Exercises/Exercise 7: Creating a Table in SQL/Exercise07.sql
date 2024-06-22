\c sqlda
CREATE TABLE IF NOT EXISTS countries (
key INT PRIMARY KEY,
name VARCHAR(25) UNIQUE,
founding_year DATE,
capital VARCHAR(25)
);
