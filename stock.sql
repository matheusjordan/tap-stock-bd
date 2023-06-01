CREATE DATABASE store
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE stocks (
  id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  amount INTEGER NOT NULL,
  value DECIMAL(10, 2) NOT NULL
);

INSERT INTO stocks(name, amount, value) VALUES ('Coca Cola', 10, 9.5);
