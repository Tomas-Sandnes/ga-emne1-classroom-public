CREATE DATABASE IF NOT EXISTS
  music_school;

USE music_school;

CREATE TABLE rooms (
  id INT AUTO_INCREMENT,
  name VARCHAR(40) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE (name)
);

