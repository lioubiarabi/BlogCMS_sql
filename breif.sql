/* create tables */

create table user (
    username varchar(50) primary key,
    name varchar(50) not null,
    email varchar(50) not null unique,
    password varchar(50) not null,
    auther boolean not null
);
