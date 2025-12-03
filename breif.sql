/* create tables */

create table user (
    username varchar(50) primary key,
    name varchar(50) not null,
    email varchar(50) not null unique,
    password varchar(50) not null,
    auther boolean not null
);

create table category (
    categoryId int auto_increment primary key,
    name varchar(50) not null
);

create table article (
    articleId int AUTO_INCREMENT primary key,
    title varchar(100) not null,
    content text not null,
    creation_date date not null,
    modification_date date not null,
    categoryId int,
    username varchar(50),

    foreign key (categoryId) references category(categoryId),
    foreign key (username) references user(username)
);
