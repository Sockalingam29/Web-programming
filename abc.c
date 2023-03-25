//MySQL code to create table User with attributes username, password, email, phone, address, city, state, zip, country, and type
CREATE TABLE User (
name VARCHAR(20) NOT NULL,
password VARCHAR(20) NOT NULL,
email VARCHAR(20) NOT NULL,
phone VARCHAR(20) NOT NULL,
address VARCHAR(20) NOT NULL,
city VARCHAR(20) NOT NULL,
state VARCHAR(20) NOT NULL,
zip VARCHAR(20) NOT NULL,
country VARCHAR(20) NOT NULL,
type VARCHAR(20) NOT NULL,
PRIMARY KEY (username)
);

