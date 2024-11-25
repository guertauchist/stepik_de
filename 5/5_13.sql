CREATE TABLE surname_table 
(
    person_id SERIAL NOT NULL,
    surname VARCHAR,
    PRIMARY KEY (person_id)
);

INSERT INTO surname_table (surname) VALUES
    ('Иванов'),
    ('Петров'),
    ('Сидоров');

CREATE TABLE name_table
(   
    person_id SERIAL NOT NULL,
    name VARCHAR,
    FOREIGN KEY (person_id) REFERENCES surname_table(person_id)
);

INSERT INTO name_table (name) VALUES
    ('Иван'),
    ('Петр'),
    ('Сидор');

CREATE TABLE patronym_table
(
    person_id SERIAL NOT NULL,
    patronym VARCHAR,
    FOREIGN KEY (person_id) REFERENCES surname_table(person_id)
);
 
INSERT INTO patronym_table (patronym) VALUES
    ('Иванович'),
    ('Петрович'),
    ('Сидорорович');


SELECT surname, name, patronym 
FROM surname_table sn
JOIN name_table n
ON  sn.person_id = n.person_id
JOIN patronym_table p
ON n.person_id = p.person_id;
