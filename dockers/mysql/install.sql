USE demo;

CREATE TABLE IF NOT EXISTS users (
    id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(150),
    email VARCHAR(150),
    password VARCHAR(250),
    campany VARCHAR(250),
    tel VARCHAR(15),
    level int(2),
    status int(1),
    code VARCHAR(150)
);
