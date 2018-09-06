DROP DATABASE IF EXISTS mogo_interview;
create database mogo_interview;

\connect mogo_interview;

CREATE TABLE dogs (
    id         SERIAL,
    name       varchar(25),
    age        integer
);

CREATE TABLE bones (
    id            SERIAL,
    dog_id        integer,
    animal_type   varchar(25),
    rating        integer
);

INSERT INTO dogs(id, name, age) VALUES(DEFAULT, 'Max',  2);
INSERT INTO dogs(id, name, age) VALUES(DEFAULT, 'Luna', 4);
INSERT INTO dogs(id, name, age) VALUES(DEFAULT, 'Ryca', 1);
INSERT INTO dogs(id, name, age) VALUES(DEFAULT, 'Bob',  12);
INSERT INTO dogs(id, name, age) VALUES(DEFAULT, 'Boneless',  80);

INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 1,  'dog', 5);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 1,  'dog', 4);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 1,  'dog', 5);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 1,  'dog', 5);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 1,  'dog', 5);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 1,  'dog', 5);

INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 2,  'dog', 5);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 2,  'dog', 4);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 2,  'dog', 5);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 2,  'dog', 5);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 2,  'dog', 2);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 2,  'dog', 5);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 2,  'dog', 2);

INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 3,  'dog', 4);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 3,  'dog', 4);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 3,  'dog', 4);

INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 4,  'dog', 2);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 4,  'dog', 4);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 4,  'dog', 3);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 4,  'dog', 4);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 4,  'dog', 1);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 4,  'dog', 2);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 4,  'dog', 4);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 4,  'dog', 3);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 4,  'dog', 4);
INSERT INTO bones(id, dog_id, animal_type, rating) VALUES(DEFAULT, 4,  'dog', 1);

