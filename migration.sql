CREATE TABLE manufacturer(
  id serial PRIMARY KEY,
  name text
);

CREATE TABLE lines(
  id serial PRIMARY KEY,
  line_name text,
  designer text,
  mfctr_id integer NOT NULL REFERENCES manufacturer ON DELETE CASCADE
);

CREATE TABLE stylenumbers(
  id serial PRIMARY KEY,
  style_id varchar(20),
  line_id integer NOT NULL REFERENCES lines ON DELETE CASCADE,
  mfctr_id integer NOT NULL REFERENCES manufacturer ON DELETE CASCADE
);
