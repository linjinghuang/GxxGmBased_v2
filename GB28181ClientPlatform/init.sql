DROP TABLE IF EXISTS 'config';
CREATE TABLE config(
id INTEGER PRIMARY KEY NOT NULL ,
current_ip VARCHAR(32) NOT NULL,
current_port VARCHAR(32) NOT NULL,
current_gbcode VARCHAR(32) NOT NULL,
remote_ip VARCHAR(32) NOT NULL,
remote_port VARCHAR(32) NOT NULL,
remote_gbcode VARCHAR(32) NOT NULL,
authen_username VARCHAR(32) NOT NULL,
authen_password VARCHAR(32) NOT NULL
);