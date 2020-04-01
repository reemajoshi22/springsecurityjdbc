create table users(
username VARCHAR(50) not null primary key,
password VARCHAR(50) not null,
enabled boolean not null
);


CREATE TABLE authorities (
  username VARCHAR(50) NOT NULL,
  authority VARCHAR(50) NOT NULL,
  FOREIGN KEY (username) REFERENCES users(username)
);

CREATE UNIQUE INDEX ix_auth_username
  on authorities (username,authority);