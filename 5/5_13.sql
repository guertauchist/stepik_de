CREATE TABLE name 
(
    name VARCHAR,
);

CREATE TABLE surname 
(
    surname	VARCHAR,
);

CREATE TABLE patronym 
(
    patronym VARCHAR,
);
 


INSERT INTO name (name) VALUES
    ('Иван'),
    ('Петр'),
    ('Сидор');

INSERT INTO surname (surname) VALUES
    ('Иванов'),
    ('Петров'),
    ('Сидоров');

INSERT INTO patronym (patronym) VALUES
    ('Иванович'),
    ('Петрович'),
    ('Сидорорович');


SELECT 